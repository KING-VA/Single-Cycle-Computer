module InstructionMemory (Address, IR);
input [7:0] Address;
output [15:0] IR;
reg [15:0] IR;
parameter
	// Register Instruction Opcode; [Opcode, DR, SA, SB]
	MOVA = 7'b0000000, 
	INC = 7'b0000001,
	ADD = 7'b0000010,
	SUB = 7'b0000101,
	DEC = 7'b0000110,	
	And = 7'b0001000,
	Or = 7'b0001001,	
	Xor = 7'b0001010,
	Not = 7'b0001011,	
	MOVB = 7'b0001100,
	SFTR = 7'b0001101, 
	SFTL = 7'b0001110,
	LOAD = 7'b0010000, 
	ST = 7'b0100000,
	// Immediate Instruction Opcode; [Opcode, DR, SA, OP]
	LDI = 7'b1001100, 
	ADI = 7'b1000010,
	// Jump Branch Instruction Opcode; [Opcode, AD, SA, AD]
	BRZ = 7'b1100000,	
	BRN = 7'b1100001,
	JMP = 7'b1110000,
	// Registers
	R0 = 3'b000,
	R1 = 3'b001, 
	R2 = 3'b010,
	R3 = 3'b011,
	// Numbers
	ZERO = 3'b000,
	ONE = 3'b001, 
	TWO = 3'b010,
	THREE = 3'b011, 
	FOUR = 3'b100,
	// Null
	NULL = 3'b000;
	
always@(Address)
begin
	case(Address)
	0: IR <= {LOAD, R0, NULL, NULL};
	1: IR <= {LOAD, R1, NULL, NULL};
	2: IR <= {LDI, R2, NULL, ZERO};
	3: IR <= {LDI, R3, NULL, FOUR};
	4: IR <= {BRZ, 3'b001, R0, 3'b000};
	5: IR <= {ADD, R2, R2, R1};
	6: IR <= {DEC, R0, R0, NULL};
	7: IR <= {JMP, NULL, R3, NULL};
	8: IR <= {ST, NULL, NULL, R2};
	default
		IR <= 255;
	endcase
end
endmodule