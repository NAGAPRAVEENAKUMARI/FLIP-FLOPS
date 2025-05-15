`include "sr.v"
module sr_tb();
reg s,r,clk;
wire q;
wire qn;
sr dut(s,r,clk,q,qn);
always #5 clk=~clk; 
initial begin
$monitor("s=%b, r=%b, clk=%b, q=%b, qn=%b", s,r,clk,q,qn);
$dumpfile("sr_tb.vcd");
$dumpvars(0, sr_tb);
// clk=0;  s=0;r=0; 
// #10;
clk=1; s=0; r=0;
#10;
s=0; r=1;
#10; s=1; r=0;
#10; s=0; r=0;
#10; s=1; r=1;
#10; s=0; r=0;
$finish;
 end
 endmodule