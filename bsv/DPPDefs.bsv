// DPPDefs.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED

package DPPDefs;

import Connectable     ::*;
import DefaultValue    ::*;
import GetPut          ::*;
import Reserved        ::*;
import TieOff          ::*;
import Vector          ::*;


// DPP Frame Header - 10B total...
typedef struct {
  Bool      valid; // Desire to maintain state even if data is not valid
  Bit#(16)  did;   // Destination ID
  Bit#(16)  sid;   // Source ID
  UInt#(16) fs;    // Frame Sequence number (rolling count)
  UInt#(16) as;    // ACKstart (start of ACK sequence)
  UInt#(8)  ac;    // ACKCount (number of ACKs)
  Bit#(8)   f;     // Flags (0==ACK Only Frame; 1==Frame has at least 1 message)i
} DPPFrameHeader deriving (Eq, Bits);  

instance DefaultValue#(DPPFrameHeader);
defaultValue =
  DPPFrameHeader {
    did:   0,
    sid:   0,
    fs:    0,
    as:    0,
    ac:    0,
    f:     0,
    valid: False
  };
endinstance

// DPP Message Header - 24B total...
typedef struct {
  Bool      valid; // Desire to maintain state even if data is not valid
  UInt#(32) tid;   // Transaction ID (rolling count)
  UInt#(32) fa;    // Flag Address
  Bit#(32)  fv;    // Flag Value
  UInt#(16) nm;    // Number of Messages in this transaction
  UInt#(16) ms;    // Message Sequence number scoped to this transaction
  UInt#(32) da;    // Data Address where this message should get written
  UInt#(16) dl;    // Data Length in Bytes of data that follows the header
  Bit#(8)   mt;    // Message Type (enum)
  Bit#(8)   tm;    // Trailimg Message (0=last message in frame;1=another message follows)
} DPPMessageHeader deriving (Eq, Bits); 

instance DefaultValue#(DPPMessageHeader);
defaultValue =
  DPPMessageHeader {
    tid:   0,
    fa:    0,
    fv:    0,
    nm:    0,
    ms:    0,
    da:    0,
    dl:    0,
    mt:    0,
    tm:    0,
    valid: False
  };
endinstance

endpackage: DPPDefs
