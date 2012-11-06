// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs     ::*;

import FIFO       ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;
import ClientServer ::*;

interface ReceiverIfc;
  interface Server#(HexBDG, HexBDG) datagram;
  interface Get#(MLMesg) mesg;
endinterface

(* synthesize *)
module mkReceiver(ReceiverIfc);


FIFO#(HexBDG)          datagramIngressF   <- mkFIFO;
//FIFO#(MLMeta)           metaEgressF   <- mkFIFO;
FIFO#(MLMesg)           mesgEgressF   <- mkFIFO;
FIFO#(UInt#(32))        nextLengthF   <- mkFIFO;
Reg#(UInt#(32))         lengthR       <- mkReg(0);
Reg#(Bit#(8))           opCode        <- mkReg(0);
Reg#(Bit#(8))           dataInitVal   <- mkReg(1);
Reg#(Bool)              seedLFSR      <- mkReg(True);
Reg#(Bool)              first         <- mkReg(True);
Reg#(Bool)              zeroLen       <- mkReg(False);
Reg#(Bit#(9))           minLen        <- mkReg(maxBound);
Reg#(Bit#(9))           maxLen        <- mkReg(minBound);
Reg#(UInt#(32))         countHexByte  <- mkReg(0);
Reg#(Maybe#(UInt#(32))) bytesRemain   <- mkReg(tagged Invalid);
LFSR#(Bit#(32))         lfsr          <- mkLFSR_32;

function Bit#(8) addX (Bit#(8) y, Bit#(8) x) = y + x;
  
rule gobble;
  $display("Bytes on Wire: %0X", reverse(datagramIngressF.first.data));
  datagramIngressF.deq;
endrule


  interface Server datagram;
    interface request = toPut(datagramIngressF);
    //interface response = toGet();
  endinterface
  interface mesg = toGet(mesgEgressF);
endmodule
