module Extend(In, Out);
input [5:0] In;
output [7:0] Out;
assign Out[5:0] = In[5:0];
assign Out[6] = In[5];
assign Out[7] = In[5];
endmodule