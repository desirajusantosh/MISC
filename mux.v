module mux(out, a, b, control);

output out;
input a;
input b;
input control;

reg out;
wire notcontrol

always@(control or notcontrol or a or b)
q = (control & a) | (control & b);

not(notcontrol, control);

endmodule
