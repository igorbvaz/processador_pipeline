module program_counter (pc_in, pc_out);

input [31:0] pc_in;
output reg [31:0] pc_out;

initial
begin
	pc_out <= 0;
end

always @ (pc_in)
begin
	pc_out <= pc_in;
end

endmodule
