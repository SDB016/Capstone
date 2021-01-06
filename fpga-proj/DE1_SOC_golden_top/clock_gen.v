module clock_gen(
	input i_clk,
	
	output reg o_clk
);

reg [32:0] clk_counter;

always @ (posedge i_clk)
	begin
		if(clk_counter == 2500000)
			begin
				o_clk <= !o_clk;
				clk_counter <= 0;
			end
		else
			clk_counter <= clk_counter + 1;
	end
	
endmodule
