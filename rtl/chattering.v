module chattering(clk,reset,in,out);
  parameter N=1;

  input clk,reset;
  input [N-1:0]in;
  output [N-1:0]out;
  reg [N-1:0]out,buffer;
  reg [15:0] count;

  always @(posedge clk or negedge reset)
    if(!reset) count <= 0;
    else count <= count + 1;

  always @(posedge clk)
    if(count==0)
      begin
        buffer <= in;
        out <= buffer;
      end

endmodule
