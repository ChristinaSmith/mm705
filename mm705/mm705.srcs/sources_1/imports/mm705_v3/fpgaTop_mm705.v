// fpgaTop_kc705.v - the top-level Verilog for the Xilinx KC705 board
// Copyright (c) 2011-2012 Atomic Rules LLC - ALL RIGHTS RESERVED
//

module fpgaTop (
  input  wire        sys0_clkp,      // sys0 Clock +
  input  wire        sys0_clkn,      // sys0 Clock -
  input  wire        sys0_rst,       // sys0 Reset (active high)

  output wire [7:0]  led            // leds
//  output wire [3:0]  lcd_db,
//  output wire        lcd_e,
//  output wire        lcd_rs,
//  output wire        lcd_rw


);

//ECO here
wire sys0_clk;
IBUFGDS clock_buf( .O(sys0_clk), .I(sys0_clkp), .IB(sys0_clkn));

// Instance and connect mkFTop...
 mkFTop_mm705 ftop(
  .sys0_clk          (sys0_clk),
  .sys0_rstn         (!sys0_rst),   // Invert to make active-low

  .ledOut              (led)
//  .lcd_db            (lcd_db),
//  .lcd_e             (lcd_e),
//  .lcd_rs            (lcd_rs),
//  .lcd_rw            (lcd_rw)
);

endmodule
