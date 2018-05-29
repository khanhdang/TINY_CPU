module cpu_top(CLK50MHZ, ROT_A, ROT_CENTER, BTN_SOUTH, BTN_EAST, BTN_NORTH,
               BTN_WEST, SW, LED, LCD_E, LCD_RS, LCD_RW, SF_D);

 input CLK50MHZ, ROT_A, ROT_CENTER, BTN_SOUTH, BTN_EAST, BTN_NORTH, BTN_WEST;
 input [3:0] SW;
 output [4:0] LED;
 output LCD_RS, LCD_E, LCD_RW;
 output [11:8] SF_D;
 wire clk, reset;
 wire [2:0] cs;
 wire [6:0] in;
 wire [15:0] data0, data1, data2, data3, data4, data5;

 chattering #(8) chattering0(.clk(CLK50MHZ), .reset(reset),
       .in({BTN_WEST, BTN_NORTH, BTN_EAST, SW, ~ROT_A}), .out({in,clk}));
 lcdctrl lcdctrl0(.clk(CLK50MHZ), .reset(reset), .lcd_e(LCD_E),
           .lcd_rs(LCD_RS), .lcd_rw(LCD_RW), .sf_d(SF_D), .data0(data0),
           .data1(data1), .data2(data2), .data3(data3), .data4(data4),
           .data5(data5));
 tinycpu tinycpu0(.clk(clk), .reset(reset), .run(ROT_CENTER),
           .in({9'h000,in}), .cs(cs), .pcout(data0), .irout(data1),
           .qtop(data2), .abus(data3), .dbus(data4), .out(data5));

 assign reset = ~BTN_SOUTH;
 assign LED[4] = (cs==`IDLE);
 assign LED[3] = (cs==`FETCHA);
 assign LED[2] = (cs==`FETCHB);
 assign LED[1] = (cs==`EXECA);
 assign LED[0] = (cs==`EXECB);

endmodule
