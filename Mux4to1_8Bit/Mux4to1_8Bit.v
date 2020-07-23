module Mux4to1_8Bit(In0, In1, In2, In3, S, Out);

input [7:0] In0, In1, In2, In3;
input [1:0] S;
output [7:0] Out;

Mux4to1(.In0(In0[7]), .In1(In1[7]), .In2(In2[7]), .In3(In3[7]), .S0(S[0]), .S1(S[1]), .Out(Out[7]));
Mux4to1(.In0(In0[6]), .In1(In1[6]), .In2(In2[6]), .In3(In3[6]), .S0(S[0]), .S1(S[1]), .Out(Out[6]));
Mux4to1(.In0(In0[5]), .In1(In1[5]), .In2(In2[5]), .In3(In3[5]), .S0(S[0]), .S1(S[1]), .Out(Out[5]));
Mux4to1(.In0(In0[4]), .In1(In1[4]), .In2(In2[4]), .In3(In3[4]), .S0(S[0]), .S1(S[1]), .Out(Out[4]));
Mux4to1(.In0(In0[3]), .In1(In1[3]), .In2(In2[3]), .In3(In3[3]), .S0(S[0]), .S1(S[1]), .Out(Out[3]));
Mux4to1(.In0(In0[2]), .In1(In1[2]), .In2(In2[2]), .In3(In3[2]), .S0(S[0]), .S1(S[1]), .Out(Out[2]));
Mux4to1(.In0(In0[1]), .In1(In1[1]), .In2(In2[1]), .In3(In3[1]), .S0(S[0]), .S1(S[1]), .Out(Out[1]));
Mux4to1(.In0(In0[0]), .In1(In1[0]), .In2(In2[0]), .In3(In3[0]), .S0(S[0]), .S1(S[1]), .Out(Out[0]));

endmodule