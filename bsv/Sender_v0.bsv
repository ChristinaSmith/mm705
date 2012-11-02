// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import ByteShifter ::*;
import MLDefs     ::*;

import FIFO       ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;
import ClientServer ::*;

interface SenderIfc;
  interface Client#(HexBDG, HexBDG) datagram;
  interface Put#(MLMesg) mesg;
endinterface

(* synthesize *)
module mkSender(SenderIfc);

FIFO#(HexBDG)           datagramEgressF   <- mkFIFO;
FIFO#(MLMesg)           mesgIngressF   <- mkFIFO;
FIFO#(MLMeta)           metaIngressF   <- mkFIFO;
FIFO#(HexByte)          dataIngressF   <- mkFIFO;

FIFO#(Vector#(24, Bit#(8))) messageHeaderF <- mkFIFO;
FIFO#(Vector#(10, Bit#(8))) frameHeaderF   <- mkFIFO;

Reg#(Bool)              meta          <- mkReg(True);
// Message Header Registers
Reg#(Bit#(32))          tid           <- mkReg(0);
Reg#(Bit#(32))          fa            <- mkReg(0);
Reg#(Bit#(32))          fv            <- mkReg(0);
Reg#(Bit#(16))          nm            <- mkReg(0);
Reg#(Bit#(16))          ms            <- mkReg(0);
Reg#(Bit#(32))          da            <- mkReg(0);
Reg#(Bit#(16))          dl            <- mkReg(0);
Reg#(Bit#(8))           mt            <- mkReg(0);
Reg#(Bit#(8))           tm            <- mkReg(0);
// Frame Header Registers
Reg#(Bit#(16))          dID           <- mkReg(0);
Reg#(Bit#(16))          sID           <- mkReg(0);
Reg#(Bit#(16))          fs            <- mkReg(0);
Reg#(Bit#(16))          as            <- mkReg(0);
Reg#(Bit#(16))          ac            <- mkReg(0);
Reg#(Bit#(16))          flags         <- mkReg(0);

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
ByteShifter#(16, 16, 32) byteShifter <- mkByteShifter;

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

rule splitMesg;
  case (mesgIngressF.first) matches
    tagged Meta .m: metaIngressF.enq(m); 
    tagged Data .d: dataIngressF.enq(d);
  endcase
  mesgIngressF.deq;
endrule

rule generateMH;
  MLMeta m = metaIngressF.first;
  tid <= tid + 1;
  fa <= 100;
  fv <= 200;
  nm <= 2;
  ms <= ms + 1;
  da <= 300;
  dl <= (meta) ?  8 : truncate(pack(m.length));
  mt <= 0; 
  tm <= (!meta) ? 1 : 0;
  Vector#(24, Bit#(8)) mh;
  mh[0] = tid[7:0];
  mh[1] = tid[15:8];
  mh[2] = tid[23:16];
  mh[3] = tid[31:24];
  mh[4] = fa[7:0];
  mh[5] = fa[15:8];
  mh[6] = fa[23:16];
  mh[7] = fa[31:24];
  mh[8] = fv[7:0];
  mh[9] = fv[15:8];
  mh[10] = fv[23:16];
  mh[11] = fv[31:24];
  mh[12] = nm[7:0];
  mh[13] = nm[15:8];
  mh[14] = ms[7:0];
  mh[15] = ms[15:8];
  mh[16] = da[7:0];
  mh[17] = da[15:8];
  mh[18] = da[23:16];
  mh[19] = da[31:24];
  mh[20] = dl[7:0];
  mh[21] = dl[15:8];
  mh[22] = mt[7:0];
  mh[23] = tm[7:0];
  messageHeaderF.enq(mh);
  metaIngressF.deq;
  if(m.length != 0) meta <= !meta;
endrule

rule generateFH;
  dID <= 100;
  sID <= 200;
  fs <= fs + 1;
  as <= as + 1;
  ac <= ac + 1;
  flags <= 0;
  Vector#(10, Bit#(8)) fh;
  fh[0] = dID[7:0];
  fh[1] = dID[15:8];
  fh[2] = sID[7:0];
  fh[3] = sID[15:8];
  fh[4] = fs[7:0];
  fh[5] = fs[15:8];
  fh[6] = as[7:0];
  fh[7] = as[15:8];
  fh[8] = ac[7:0];
  fh[9] = flags[7:0];
  frameHeaderF.enq(fh);
endrule

rule buildHexBDG;
  HexByte temp = ?;
  Vector#(10, Bit#(8)) fh = frameHeaderF.first;
  temp = padHexByte(fh);
  if(byteShifter.space_available() >= 10) byteShifter.enq(10, temp); 

endrule

  interface Client datagram;
    interface request = toGet(datagramEgressF);
    //interface response = toPut();
  endinterface
  interface mesg = toPut(mesgIngressF);
endmodule
