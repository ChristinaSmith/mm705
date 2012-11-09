// FTop_dp705.bsv - the top level module
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs      ::*; //sls: Keep your local imports separate from the BSV ones, so you stay aware
import MLProducer  ::*;
import MLConsumer  ::*;
import Sender      ::*;
import Receiver    ::*;

import Clocks      ::*;
import Connectable ::*;
import FIFO        ::*;
import ClientServer ::*;
import GetPut      ::*;
import Clocks      ::*;

interface FTop_mm705Ifc;
  (* always_ready *) method Bit#(8) ledOut;  
endinterface
(* synthesize, default_clock_osc = "sys0_clk", default_reset = "sys0_rstn" *)
module mkFTop_mm705(FTop_mm705Ifc);

Clock cc <- exposeCurrentClock;
Reset rstndb <- mkAsyncResetFromCR(16, cc);

Reg#(Bit#(32)) cycleCount <- mkReg(0, reset_by rstndb);

// sls: specify these once
UInt#(32)  mLength = 8000;
LengthMode lMode   = Constant; // Incremental;
DataMode   dMode   = ZeroOrigin;

// sls: It appears that
// producer1 is the source that we generating in the Generator
// producer2 is the source that we are comparing against in the Checker

// sls: After you have the consumer only comparing valid bytes; switch producer2
// to insert 0xEE to test...

MLProducerIfc   producer1  <- mkMLProducer(reset_by rstndb, mLength, lMode, 0, 0, dMode, 8'hAA);
MLProducerIfc   producer2  <- mkMLProducer(reset_by rstndb, mLength, lMode, 0, 0, dMode, 8'hEE);
MLConsumerIfc   consumer   <- mkMLConsumer(reset_by rstndb);
SenderIfc       sender     <- mkSender(reset_by rstndb);
ReceiverIfc     receiver   <- mkReceiver(reset_by rstndb);


rule countCycles;
  cycleCount <= cycleCount + 1;
//  if(cycleCount%100==0)$display("[%0d] simulation cycle:%0d ...", $time, cycleCount);
endrule

rule endSim;
//  if(cycleCount == 15000)begin $display("Terminating Simulation..."); $finish; end
  if(cycleCount == 15000) $finish;
endrule


mkConnection(producer1.mesg, sender.mesg);

mkConnection(sender.datagram, receiver.datagram);

mkConnection(receiver.mesg, consumer.mesgReceived);

mkConnection(producer2.mesg, consumer.mesgExpected);

method Bit#(8) ledOut;
  Bit#(4) y = truncate(cycleCount >> 28);
  Bit#(8) z = {y, consumer.incorrectCnt};
  return z;
endmethod

endmodule

module tb_mkFTop_mm705(Empty);
  FTop_mm705Ifc dut <- mkFTop_mm705;
endmodule
