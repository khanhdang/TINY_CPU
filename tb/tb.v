`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/31/2018 01:57:42 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(
    );
    
    
    reg CLK_N, CLK_P;
    wire ROT_A, ROT_CENTER, BTN_EAST, BTN_NORTH, BTN_WEST;
    reg BTN_SOUTH;
    reg BTN_CENTER;
    wire [3:0] SW;
    wire [3:0] LED;
    wire LCD_RS, LCD_E, LCD_RW;
    wire [11:8] SF_D;
    assign ROT_A = 1'b0;
    assign ROT_CENTER = 1'b0;
    assign BTN_EAST = 1'b0;
    assign BTN_NORTH = 1'b0;
    assign BTN_WEST = 1'b0;
    assign SW = 3'b0;
    cpu_top u0(CLK_N, CLK_P, ROT_A, ROT_CENTER, BTN_SOUTH, BTN_EAST, BTN_NORTH,
                       BTN_WEST, BTN_CENTER, SW, LED, LCD_E, LCD_RS, LCD_RW, SF_D);
    initial begin
        CLK_N = 1'b0;
        CLK_P = 1'b1;
        BTN_SOUTH = 1'b0;
        BTN_CENTER = 1'b0;
        #200;
        BTN_SOUTH = 1'b1;
    end
    always #20000 BTN_CENTER=~BTN_CENTER;
        
    always #50 CLK_N=~CLK_N;
    always #50 CLK_P=~CLK_P;   
        
endmodule
