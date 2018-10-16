`include "defs.v"

module cpu_top(CLK_N, CLK_P, ROT_A, ROT_CENTER, BTN_SOUTH, BTN_EAST, BTN_NORTH,
               BTN_WEST, BTN_CENTER, SW, LED, LCD_E, LCD_RS, LCD_RW, SF_D);

 input CLK_N, CLK_P, ROT_A, ROT_CENTER, BTN_SOUTH, BTN_EAST, BTN_NORTH, BTN_WEST, BTN_CENTER;
 input [3:0] SW;
 output [3:0] LED;
 output LCD_RS, LCD_E, LCD_RW;
 output [11:8] SF_D;
 wire clk, reset;
 wire [2:0] cs;
 wire [6:0] in;
 wire [15:0] data0, data1, data2, data3, data4, data5;
 wire clk200, clk200x, clk100x;
 reg clk100 = 1'b0, clk50 = 1'b0;
 chattering #(8) chattering0(.clk(clk50), .reset(reset),
       .in({BTN_WEST, BTN_NORTH, BTN_EAST, SW, ~ROT_A}), .out({in,clk}));
 lcdctrl lcdctrl0(.clk(clk50), .reset(reset), .lcd_e(LCD_E),
           .lcd_rs(LCD_RS), .lcd_rw(LCD_RW), .sf_d(SF_D), .data0(data0),
           .data1(data1), .data2(data2), .data3(data3), .data4(data4),
           .data5(data5));
 tinycpu tinycpu0(.clk(clk), .reset(reset), .run(ROT_CENTER),
           .in({9'h000,in}), .cs(cs), .pcout(data0), .irout(data1),
           .qtop(data2), .abus(data3), .dbus(data4), .out(data5));
IBUFGDS diff_clk_buffer(
     .I(CLK_P),
     .IB(CLK_N),
     .O(clk200));
BUFG clock_buf1 ( 
     .I(clk200),
     .O(clk200x));

always @(posedge clk200x) clk100 <= ~clk100;
BUFG clock_buf2 ( 
    .I(clk100),
    .O(clk100x));
always @(posedge clk100x) clk50 <= ~clk50;
    
 assign reset = ~BTN_SOUTH;
 //assign LED[4] = (cs==`IDLE);
 assign LED[3] = (cs==`FETCHA);
 assign LED[2] = (cs==`FETCHB);
 assign LED[1] = (cs==`EXECA);
 assign LED[0] = (cs==`EXECB);

endmodule
