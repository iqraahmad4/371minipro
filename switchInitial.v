module switchInitial(SW,row,HEX0,row0, row1, row2, row3, col0, col1, col2, col3);
input[3:0] SW;
input[3:0]row;
output[6:0]HEX0;
//assign 
wire[7:0]number;
assign number = {SW,row};
//assign number[7:4] = row;

buttontoHEX(number, HEX0);

endmodule 

module buttontoHEX (C,Display);
input[7:0]C;
output[6:0]Display;

	assign Display[0]= ~C[7]&~C[3]|~C[7]&~C[2];
	assign Display[1]= ~C[6]&~C[2] |~C[5]&~C[2];
	assign Display[2]= ~C[6]&~C[3];
	assign Display[3]= ~C[7]&C[3]|~C[7]&~C[2]|~C[7]&~C[1]|~C[5]&~C[1];
	assign Display[4]= ~C[7]&C[3]|~C[6]&C[3]|~C[5]&C[3]|~C[7]&C[1];
	assign Display[5]= ~C[7]&C[3]| ~C[5]&C[3]|~C[7]&C[2]|~C[6]&C[2]|~C[7]&C[1]|~C[5]&C[1];
	assign Display[6]= ~C[6]&C[0]|~C[7]&C[3]|~C[7]&C[1];
endmodule

module checkWhatsPressed()