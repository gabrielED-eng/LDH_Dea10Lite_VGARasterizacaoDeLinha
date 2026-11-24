module clk_25M(
	input clk_50M,
	input reset,
	output reg clk_out
);

	reg count;

	always @(posedge clk_50M) begin
		if (reset) begin
			count <= 1'd0;
			clk_out <= 0;
		end else begin
			count <= count + 1;
			
			if(count == 1'd1)begin
				clk_out <= ~clk_out;
			end
		end
	end

endmodule