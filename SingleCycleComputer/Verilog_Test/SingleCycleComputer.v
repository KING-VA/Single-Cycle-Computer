module SingleCycleComputer(BusA, BusB, BusD, 
PCout, Clock, DataIn, IR, K, MW, ResetN, 
BusDhighnibble, BusDlownibble, 
BusBhighnibble, BusBlownibble, 
BusAhighnibble, BusAlownibble, 
PCouthighnibble, PCoutlownibble);

input Clock, ResetN;
input [7:0] DataIn;
output MW;
output [6:0] BusAhighnibble, BusAlownibble, 
BusDhighnibble, BusDlownibble, BusBhighnibble, 
BusBlownibble, PCouthighnibble, PCoutlownibble;
output [7:0] BusA, BusB, BusD, PCout;
output [1:0] K;
output [15:0] IR;

ProgramCounter8bit(.K[0](K[0]), .K[1](K[1]), .Clock(Clock), .ResetN(ResetN),
);
RegisterFile();