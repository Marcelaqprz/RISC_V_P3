module pipeline
#(
	parameter N = 32
)
(
	// Inputs
	input clk,
	input reset,
	input		  [N-1:0] dataInput,
	output reg [N-1:0] dataOutput
);
always@(negedge reset or posedge clk ) begin // Para que escriba en flanco de subida
	if(reset==0)
		dataOutput <= 0;
	else	
		dataOutput <= dataInput;
end

endmodule