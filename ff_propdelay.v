Propagation Delay:
 Delay from clock edge to Q
 Delay from reset to Q
 
module(q, d, clk, rst);
output q;
input d;
input clk;
input rst;

reg q;

always@(posedge clk or posedge rst)
begin
  if(rst)
    #2 q = 0;
  else
    q = #3 d;
  end
  
  specify
    $hold(clk,d,2);
    $setup(d,clk,0);
  endspecify
endmodule
