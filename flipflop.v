module(q, d, clk, rst);

output q;
input d;
input clk, rst;

reg q;

always@(posedge clk or posedge rst)
  if (rst)
    q = 0;
  else
    q = d;
  end
endmodule
