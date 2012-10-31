// FTop_dp705.bsv - the top level module
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs      ::*; //sls: Keep your local imports separate from the BSV ones, so you stay aware
import MLProducer  ::*;
import MLConsumer  ::*;

import Clocks      ::*;
import Connectable ::*;
import FIFO        ::*;
import GetPut      ::*;

module mkFTop_mm705(Empty);

Reg#(Bit#(32)) cycleCount <- mkReg(0);

// sls: specify these once
UInt#(32)  mLength = 0;
//LengthMode lMode   = Constant; // Incremental;
LengthMode lMode   = Constant;
DataMode   dMode   = ZeroOrigin;

// sls: It appears that
// producer1 is the source that we generating in the Generator
// producer2 is the source that we are comparing against in the Checker

// sls: After you have the consumer only comparing valid bytes; switch producer2
// to insert 0xEE to test...

MLProducerIfc   producer1  <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hAA);
MLProducerIfc   producer2  <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hEE);
MLConsumerIfc   consumer   <- mkMLConsumer;

rule countCycles;
  cycleCount <= cycleCount + 1;
  if(cycleCount%100==0)$display("[%0d] simulation cycle:%0d ...", $time, cycleCount);
endrule

rule endSim;
  if(cycleCount == 1000) $finish;
endrule

mkConnection(producer1.meta, consumer.metaExpected);
mkConnection(producer1.data, consumer.dataExpected);

mkConnection(producer2.meta, consumer.metaReceived);
mkConnection(producer2.data, consumer.dataReceived);


endmodule
