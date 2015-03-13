#grey counter

module(cout, start, rst, clk);
output logic cout;
input logic clk;
input logic rst;
input logic start;

logic count;

always@(posedge clk, posedge rst)
begin
  if (rst)
    cout = 0;
  else if (start)
    count = count + 1;
  else
    count <= count;
  end
  
  assign cout = {count[3], count[3] ^ count [2], count[2] ^ count[1], count[1] ^ count[0]};
endmodule
