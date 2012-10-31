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
FIFO#(MLMesg) prodMergeF  <- mkFIFO;
FIFO#(MLMesg) consForkF   <- mkFIFO;
Reg#(Bool)    meta        <- mkReg(True);
Reg#(Bool)    data        <- mkReg(True);
Reg#(UInt#(32)) count     <- mkReg(0);
Reg#(UInt#(32)) length    <- mkRegU;

// sls: specify these once
UInt#(32)  mLength = 0;
//LengthMode lMode   = Constant; // Incremental;
LengthMode lMode   = Incremental;
DataMode   dMode   = ZeroOrigin;

// sls: It appears that
// producer1 is the source that we generating in the Generator
// producer2 is the source that we are comparing against in the Checker

// sls: After you have the consumer only comparing valid bytes; switch producer2
// to insert 0xEE to test...

MLProducerIfc   producer1  <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hAA);
MLProducerIfc   producer2  <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hEE);
MLConsumerIfc   consumer   <- mkMLConsumer;

rule mergeMeta(meta);
  UInt#(32) lenVal = producer2.meta.first.length;
  length <= lenVal;
  prodMergeF.enq(tagged Meta producer2.meta.first);
  producer2.meta.deq;
  if(lenVal != 0) meta <= !meta;
endrule

rule mergeData(!meta);
  let x <- producer2.data.get;
  prodMergeF.enq(tagged Data x);
  Bool lastWord = (length <= 16);
  length <= length - 16;
  if(lastWord) meta <= !meta;
endrule

mkConnection(toGet(prodMergeF), toPut(consForkF));

rule forkMesg;
  case (consForkF.first) matches
    tagged Meta .m: consumer.metaReceived.put(m);
    tagged Data .d: consumer.dataReceived.put(d);
  endcase
  consForkF.deq;
endrule

rule countCycles;
  cycleCount <= cycleCount + 1;
  if(cycleCount%100==0)$display("[%0d] simulation cycle:%0d ...", $time, cycleCount);
endrule

rule endSim;
  if(cycleCount == 1000) $finish;
endrule


mkConnection(producer1.meta, consumer.metaExpected);
mkConnection(producer1.data, consumer.dataExpected);

//mkConnection(producer2.meta, consumer.metaReceived);
//mkConnection(producer2.data, consumer.dataReceived);


endmodule
