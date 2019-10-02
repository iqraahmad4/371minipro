module switchInitial(SW,row,HEX0);
input[3:0] SW;
input[3:0]row;
output[6:0]HEX0;

wire[7:0]number;
assign number = {SW,row};
//assign number[7:4] = row;

buttontoHEX(number, HEX0);

endmodule 

module buttontoHEX (C,HEX0);
input[7:0]C;
output[6:0]HEX0;

	assign HEX0[0]= ~C[7]&~C[3]|~C[7]&~C[2];
	assign HEX0[1]= ~C[6]&~C[2] |~C[5]&~C[2];
	assign HEX0[2]= ~C[6]&~C[3];
	assign HEX0[3]= ~C[7]&C[3]|~C[7]&~C[2]|~C[7]&~C[1]|~C[5]&~C[1];
	assign HEX0[4]= ~C[7]&C[3]|~C[6]&C[3]|~C[5]&C[3]|~C[7]&C[1];
	assign HEX0[5]= ~C[7]&C[3]| ~C[5]&C[3]|~C[7]&C[2]|~C[6]&C[2]|~C[7]&C[1]|~C[5]&C[1];
	assign HEX0[6]= ~C[6]&C[0]|~C[7]&C[3]|~C[7]&C[1];
endmodule