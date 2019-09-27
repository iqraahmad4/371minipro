module(SW, GPIO_0,HEX0)
input [3:0] SW;
input [24:18]GPIO_0;
output [6:0]HEX0;


if SW = 1
{cols = 0;}
else if SW = 2
{cols = 1;}
else if SW = 4
{cols = 2;}
else if SW = 8
{cols = 3;}

assign RW[0] = GPIO_0[18];
assign RW[1] = GPIO_0[20];
assign RW[2] = GPIO_0[22];
assign RW[3] = GPIO_0[24];

if RW = 1
{rows = 0;}
else if RW = 2
{rows = 1;}
else if RW = 4
{rows = 2;}
else if RW = 8
{rows = 3;}
endmodule

module(row,col, HEX0)
input row, col;
output[6:0]HEX
