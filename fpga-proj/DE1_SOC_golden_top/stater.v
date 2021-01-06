module stater(
	input i_clk,
	input i_rst,
	input i_key,
	
	output reg [7:0] count
);


always @ (posedge i_clk or negedge i_rst)
	begin
		if(!i_rst)
			count <= 8'h00;
		else
			//if(i_key)
				begin
					count <= count + 8'h01;
				end
	end
	
endmodule
