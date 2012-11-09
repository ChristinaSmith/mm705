// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import ByteShifter ::*;
import MLDefs     ::*;
import DPPDefs    ::*;

import FIFO       ::*;
import FIFOF      ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;
import ClientServer ::*;
import DefaultValue ::*;

interface SenderIfc;
  interface Client#(HexBDG, HexBDG) datagram;
  interface Put#(MLMesg) mesg;
endinterface


(* synthesize *)
module mkSender(SenderIfc);

// Module-Level Input and Output FIFOs...
FIFO#(MLMesg)           mesgIngressF      <- mkFIFO;     // Message-Level (ML) Inpt to this module
FIFO#(HexBDG)           datagramEgressF   <- mkFIFO;     // Datagram Egress from the module

// Frame-Composition Coordinating State...
Reg#(FrmCompState)      fcs           <- mkReg(FrmHead); // State variable for the Frame Composition Process   
Reg#(Bool)              madeMeta      <- mkReg(False);   // Aux variable to signal if the Metadata MH/MD has been made
Reg#(UInt#(1))          mhPhase       <- mkReg(0);       // Used to funnel the 24B metadata to a <24B path
Reg#(UInt#(16))         mesgDataLen   <- mkRegU;         // Preserves after dequeue of mesgIngressF
Reg#(UInt#(16))         frameCompCnt  <- mkReg(0);       // Debug value counting compleyely composed frames
FIFOF#(UInt#(16))       fcF           <- mkFIFOF;         // Frame Compoisition FIFO gets a token when a frame is done  

// Frame and Message Header State...
Reg#(Bool)              fhValid       <- mkReg(False);
Reg#(DPPFrameHeader)    fh            <- mkReg(defaultValue);
Reg#(Bool)              mhValid       <- mkReg(False);
Reg#(DPPMessageHeader)  mh            <- mkReg(defaultValue);

// ByteShifter State...
ByteShifter#(16,16,32)  byteShifter   <- mkByteShifter;  // What we compose our frames into
Reg#(UInt#(16))         bytesRemainMD <- mkReg(0);       // How many more Bytes we need to enq this MD
Reg#(Bit#(8))           byteOut       <- mkRegU;         // Debug at output
Reg#(UInt#(16))         bytesDeqd     <- mkReg(0);       // Debug at output
Reg#(UInt#(16))         bytesInFrame  <- mkReg(0);       // Count of bytes put into ByteShifter per frame

Reg#(UInt#(16))         bytesToDeq    <- mkReg(0);       // Number of bytes in ByteShifter that should be removed to reach the end of a frame
Reg#(Bool)              bytesValid    <- mkReg(False);

// Frame Source/Departure Logic
Reg#(UInt#(16))         frameSrcCnt   <- mkReg(0);

// Functions...
function Bit#(8) addX (Bit#(8) y, Bit#(8) x) = y + x;

function RDMAMeta metaMorpher (MLMeta m);
  RDMAMeta newMeta = defaultValue;
  newMeta.length = m.length;
  newMeta.opcode = m.opcode;
  newMeta.portID = 0;
  return newMeta;
endfunction

function HexByte padHexByte (Vector#(vsize, Bit#(8)) v);
  HexByte newVector = ?;
  for(Integer i=0; i<valueof(vsize); i = i+1) newVector[i] = v[i];
  return newVector;
endfunction

// Rules...

// genFH makes a new Frame Header when one is needed.
// By setting fhValid to True after firing, execution of this rule is suppressed
// until fhValid is cleared when the frame composition logic is done with it...
rule genFH (!fhValid);
  fh <= DPPFrameHeader {
    did : 16'h2042,      // Destination
    sid : 16'h1042,      // Source
    fs  : (fh.fs + 1),   // Increment the frame-sequence number
    as  : 0,             // Ack Start
    ac  : 0,             // Ack Count
    f   : 8'h01  };      // Frame as at least one message
  fhValid <= True;
endrule

// enqFH is always the first enq rule called in the Frame Composition Process...
rule enqFH (fhValid && fcs==FrmHead && byteShifter.space_available >= 10);
   Vector#(10,Bit#(8)) fhV = toByteVector(fh); // Convert fh to a ByteVector
   byteShifter.enq(10, padHexByte(fhV));       // Enq into ByteShifter
   bytesInFrame <= bytesInFrame + 10;          // Increase bytesInFrame by number of bytes enqued into ByteShifter
   fhValid <= False;                           // Done with Frame Header
   fcs     <= MsgHead;                         // Move on to MsgHead
endrule

// genMH creates the MH that will be enqueued to the ByteShifter...
rule genMH (!mhValid && fcs==MsgHead);
  mesgDataLen <= truncate(getMeta(mesgIngressF.first).length); // Capture the mesgDataLen
  UInt#(16) bLenMD = (madeMeta) ? mesgDataLen : 8;    // TODO: Big-M message slicing to replace truncate
  bytesRemainMD <= bLenMD;                            // Update state so that enqMD can operate
  mh <= DPPMessageHeader {       // Update the Message Header structure...
    tid : (!madeMeta) ? mh.tid + 1 : mh.tid,  // Increment the transaction number only once per transaction
    fa  : 32'hFEED_C0DE,         // Flag address
    fv  : 32'hCAFE_BABE,         // Flag value
    nm  : 2,                     // Number of messages in this transaction
    ms  : (madeMeta) ? 0 : 1,    // Message sequence number
    da  : 32'hBEEF_F00D,         // Data address (target write address)
    dl  : bLenMD,                // Length in Bytes of data that follows in MD field
    mt  : (madeMeta) ? 0 : 1,    // Message Type
    tm  : (madeMeta) ? 0 : 1  }; // Trailing message: True if at least one message after this one
  mhValid <= True;
endrule

// enqMH will file to 24/12=2 cycles to enque a Message Header that has been made valid...
rule enqMH (mhValid && fcs==MsgHead && byteShifter.space_available >= 12);
  Vector#(24, Bit#(8)) mhV = toByteVector(mh);
  Vector#(12, Bit#(8)) mhhV = (mhPhase==0) ? takeAt(0,mhV) : takeAt(12,mhV);
  mhPhase <= (mhPhase==0) ? 1 : 0;
  if (mhPhase==1) begin  // Finished sending the Message Header...
    mhValid <= False;    // Done with Message Header
    fcs     <= MsgData;  // Move on to MsgData
  end
  byteShifter.enq(12, padHexByte(mhhV));  // Enq into ByteShifter
   bytesInFrame <= bytesInFrame + 12;          // Increase bytesInFrame by number of bytes enqued into ByteShifter
endrule

// The enqMD rule fires to enqueue to the ByteShifter any MD that follows a MH.
// We try to make it care as little as possible about if MD payload is metadata or data
// But it *does* care about madeMeta to know if it ths the metadata or data MD...

UInt#(6) bytesToEnq = truncate(min(bytesRemainMD, 16)); // Offer the min of "want" and "can"

rule enqMD(fcs==MsgData && byteShifter.space_available >= bytesToEnq);
  Bool endOfFrame = madeMeta && (bytesRemainMD-extend(bytesToEnq)==0);

  RDMAMeta rMeta = metaMorpher(getMeta(mesgIngressF.first)); // Get and transform the metadata
  Vector#(8, Bit#(8)) rMetaV = toByteVector(rMeta);          // Put metadata in a vector
  HexByte rData = getData(mesgIngressF.first);               // Same for the data  
  HexByte dataToEnq = (!madeMeta) ? padHexByte(rMetaV) : rData;  // Select which meta/mesg

  fcs <= (!madeMeta) ? MsgHead : (endOfFrame) ? FrmHead : MsgData;  // Next State
  // madeMeta begins False, is True on the first enqMD, then remains set through the last enqMD...
  madeMeta <= !endOfFrame;  // madeMeta to remain asserted until all data fragments are sent

  if (endOfFrame) begin
    frameCompCnt <= frameCompCnt + 1;  // Bump Frame Composition Counter
    fcF.enq(bytesInFrame + extend(bytesToEnq)); // Place number of bytesInFrame in fcF
  end

  // Regardless of what kind of MD, do this...
  byteShifter.enq(truncate(bytesToEnq), dataToEnq);
  bytesInFrame <= (endOfFrame) ? 0 : bytesInFrame + extend(bytesToEnq); 
  bytesRemainMD <= bytesRemainMD - extend(bytesToEnq);
  mesgIngressF.deq;
endrule

////////////// Deq ByteShifter //////////////////

rule frameSourceComplete(bytesToDeq == 0);
  bytesToDeq <= fcF.first;
  bytesValid <= True;
  fcF.deq();
  frameSrcCnt <= frameSrcCnt + 1;
  $display("[%0d] Frame Source token %0d dequeued", $time, frameSrcCnt);
endrule

Bool eof = (bytesValid) ? (bytesToDeq - bytesDeqd <= 16) : False;

rule frameSourcePump(byteShifter.bytes_available >= 16 || eof);
  HexBDG out = ?;
  out.data = byteShifter.bytes_out;
  out.nbVal = (eof) ? truncate(bytesToDeq - bytesDeqd) : 16;
  out.isEOP = eof;
 // $display("Bytes on wire: %0x", reverse(out.data));
  byteShifter.deq(out.nbVal);
  datagramEgressF.enq(out);
  bytesDeqd <= (eof) ? 0 : bytesDeqd + 16;
  if(eof)begin
    bytesToDeq <= 0;
    bytesValid <= False;
  end
endrule

  interface Client datagram;
    interface request = toGet(datagramEgressF);
    //interface response = toPut();
  endinterface
  interface mesg = toPut(mesgIngressF);
endmodule
