// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import ByteShifter ::*;
import MLDefs     ::*;
import DPPDefs    ::*;

import FIFO       ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;
import ClientServer ::*;
import DefaultValue ::*;

interface SenderIfc;
  interface Client#(HexBDG, HexBDG) datagram;
  interface Put#(MLMesg) mesg;
endinterface

typedef enum {
  FrmHead,
  MsgHead,
  MsgData
} FrmCompState deriving(Bits, Eq);

(* synthesize *)
module mkSender(SenderIfc);

// Input and Output FIFOs
FIFO#(HexBDG)           datagramEgressF   <- mkFIFO;
FIFO#(MLMesg)           mesgIngressF   <- mkFIFO;

// Header State
Reg#(DPPMessageHeader)  mh            <- mkReg(defaultValue);
Reg#(DPPFrameHeader)    fh            <- mkReg(defaultValue);

// Coordinating State
Reg#(FrmCompState)      fcs           <- mkReg(FrmHead);    
Reg#(Bool)              madeMeta      <- mkReg(False);
Reg#(UInt#(1))          mhPhase       <- mkReg(0);

// ByteShifter State
Reg#(Bit#(8))           byteOut       <- mkRegU;
Reg#(Bit#(32))          byteCount     <- mkReg(0);
ByteShifter#(16, 16, 32) byteShifter  <- mkByteShifter;

// Functions
function Bit#(8) addX (Bit#(8) y, Bit#(8) x) = y + x;

function RDMAMeta metaMorpher (MLMeta m);
  RDMAMeta newMeta;
  newMeta.length = m.length;
  newMeta.opcode = m.opcode;
  newMeta.portID = 0;
  newMeta.alwaysOne = 1;
  return newMeta;
endfunction

function HexByte padHexByte (Vector#(vsize, Bit#(8)) v);
  HexByte newVector = ?;
  for(Integer i=0; i<valueof(vsize); i = i+1) newVector[i] = v[i];
  return newVector;
endfunction

// Rules
rule genFH(!fh.valid && fcs == FrmHead);
  DPPFrameHeader temp = defaultValue;
  temp.fs = fh.fs + 1;
  temp.did = 1;
  temp.sid = 2;
  temp.as = 4;
  temp.ac = 5;
 // temp.f = 6;
  temp.valid = True;
  fh <= temp;
endrule

rule enqFH(fh.valid && fcs == FrmHead);
   Vector#(10, Bit#(8)) fhV = reverse(unpack(pack(fh)[79:0]));
   HexByte toBS = padHexByte(fhV);
   if(byteShifter.space_available >= 10) byteShifter.enq(10, toBS);
   fcs <= MsgHead;
endrule

rule genMH(!mh.valid && fcs == MsgHead);

  DPPMessageHeader temp = ?;
endrule

rule enqMH(mh.valid && fcs == MsgHead);
//  mhPhase <= !mhPhase;
endrule


rule genMD(fcs == MsgData);
endrule

/*rule buildHexBDG;
  HexByte temp = ?;
  Vector#(10, Bit#(8)) fh = frameHeaderF.first;
  temp = padHexByte(fh);
  if(byteShifter.space_available() >= 10) byteShifter.enq(10, temp); 

endrule*/

rule frameSourcePump(byteShifter.bytes_available > 0);
  Vector#(16, Bit#(8)) b = byteShifter.bytes_out;
  byteShifter.deq(1);
  byteOut <= b[0];
  byteCount <= byteCount + 1;
  $display("Byte %0x: %0x", byteCount, b[0]);
endrule

  interface Client datagram;
    interface request = toGet(datagramEgressF);
    //interface response = toPut();
  endinterface
  interface mesg = toPut(mesgIngressF);
endmodule
