module InstructionDecoder(IR, CW);
input [15:0] IR;
output [19:0] CW;
assign CW[19:17] = IR[8:6];
assign CW[16:14] = IR[5:3];
assign CW[13:11] = IR[2:0];
assign CW[10] = IR[15];
assign CW[9] = IR[12];
assign CW[8] = IR[11];
assign CW[7] = IR[10];
assign CW[5] = IR[13];
assign CW[4] = (~IR[14]);
assign CW[3] = (IR[14]) & (~IR[15]);
assign CW[2] = IR[14] & IR[15];
assign CW[1] = IR[13];
assign CW[0] = IR[9];
assign CW[6] = IR[9] & (~CW[2]);
endmodule
