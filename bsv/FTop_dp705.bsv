// FTop_dp705.bsv - the top level module
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import Buffer      ::*;
import Checker     ::*;
import FHSender    ::*;
import FHReceiver  ::*;
import MHSender    ::*;
import MHReceiver  ::*;
import Generator   ::*;
import tbDefs      ::*;
import Clocks      ::*;
import Connectable ::*;
import FIFO        ::*;
import GetPut      ::*;
interface FTop_dp705Ifc;
  (* always_ready *) method Bit#(8) ledOutput;
endinterface

(* synthesize, default_clock_osc = "sys0_clk", default_reset = "sys0_rstn" *)
module mkFTop_dp705(FTop_dp705Ifc);

Clock cc <- exposeCurrentClock;
Reset rstndb <- mkAsyncResetFromCR(16, cc);

GeneratorIfc     gen1         <- mkGenerator(reset_by rstndb);
GeneratorIfc     gen2         <- mkGenerator(reset_by rstndb);
CheckerIfc       chk          <- mkChecker(reset_by rstndb);
BufferIfc        buf1         <- mkBuffer(reset_by rstndb);
MHSenderIfc      mhsnd        <- mkMHSender(reset_by rstndb);
MHReceiverIfc    mhrcv        <- mkMHReceiver(reset_by rstndb);
FHSenderIfc      fhsnd        <- mkFHSender(reset_by rstndb);
FHReceiverIfc    fhrcv        <- mkFHReceiver(reset_by rstndb);

Reg#(Bit#(32))   cycleCounter <- mkReg(0, reset_by rstndb);
Reg#(UInt#(9))   length       <- mkReg(0, reset_by rstndb);
FIFO#(Mesg)      s2rF         <- mkFIFO(reset_by rstndb);

rule cycleCount;
  cycleCounter <= cycleCounter + 1;
endrule

rule gobble;
  if(cycleCounter==18000)$finish;
endrule

//From Generator1 to Double Buffer
mkConnection(gen1.src, buf1.sink);

//From Double Buffer to MHSender
mkConnection(buf1.newLen, mhsnd.newLen);
mkConnection(buf1.src, mhsnd.sink);

rule cnctDwm(mhsnd.getLen.dwm);
  buf1.length.dwm();
endrule

//From MHSender to FHSender 
mkConnection(mhsnd.src, fhsnd.ingress);

//From FHSender to FHReceiver
// TODO - Put a FIFO between to model Ethernet loose elastisity and latency...
mkConnection(fhsnd.egress, fhrcv.ingress);

//From FHReceiver to MHReceiver
mkConnection(fhrcv.egress, mhrcv.ingress);

//From MHReceiver to Checker
mkConnection(mhrcv.egress, chk.sink1);

//From Generator1 to Checker
mkConnection(gen2.src, chk.sink2);

method Bit#(8) ledOutput;
  Bit#(4) y = truncate(cycleCounter >> 28);
  Bit#(8) z = {y, chk.incorrectCnt};
  return z;
endmethod

endmodule

module tb_mkFTop_dp705(Empty);
  FTop_dp705Ifc dut <- mkFTop_dp705;
endmodule
