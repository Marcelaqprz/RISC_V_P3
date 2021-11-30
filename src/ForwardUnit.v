module ForwardUnit
(
	input WB_WB,
	input WB_MEM,
	input [4:0] Rs1_EX,
	input [4:0] Rs2_EX,
	input [4:0] RD_MEM,
	input [4:0] RD_WB,
	output [1:0] A,
	output [1:0] B

);

assign A = 	(WB_MEM == 1'b1 &&  RD_MEM != 0 && Rs1_EX == RD_MEM)?										2'b01:
				(WB_WB == 1'b1 && RD_WB != 0 && RD_MEM != Rs1_EX && Rs1_EX == RD_WB)?			2'b10:
																																														2'b00;

assign B = 	(WB_MEM == 1'b1 && RD_MEM != 0 && Rs2_EX == RD_MEM)?	    								2'b01:
				(Rs2_EX == RD_WB && WB_WB == 1'b1 && RD_MEM != Rs2_EX && RD_WB != 0)?			2'b10:
																																														2'b00;

endmodule