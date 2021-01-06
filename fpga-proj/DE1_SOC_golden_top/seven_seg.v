module seven_seg(
	input i_clk,
	input i_rst,
	input [3:0] i_data,
	
	output reg [6:0] o_data
);


always @(posedge i_clk or negedge i_rst)
	begin
		if(!i_rst)
			o_data = 7'b0000000;
		else
			begin
				case(i_data)
					0 :
						begin
							o_data <= 7'b1000000;
						end
					1 :
						begin
							o_data <= 7'b1111001;
						end
					2 :
						begin
							o_data <= 7'b0100100;
						end
					3  :
						begin
							o_data <= 7'b0110000;
						end
					4	:
						begin
							o_data <= 7'b0011001;
						end
					5	:
						begin
							o_data <= 7'b0010010;
						end
					6	:
						begin
							o_data <= 7'b0000010;
						end
					7	:
						begin
							o_data <= 7'b1011000;
						end
					8	:
						begin
							o_data <= 7'b000_0000;
						end
					9	:
						begin
							o_data <= 7'b001_1000;
						end
					4'ha	:
						begin
							o_data <= 7'b000_1000;
						end
					4'hb	:
						begin
							o_data <= 7'b000_0011;
						end
					4'hc	:
						begin
							o_data <= 7'b100_0110;
						end
					4'hd	:
						begin
							o_data <= 7'b010_0001;
						end
					4'he	:
						begin
							o_data <= 7'b000_0110;
						end
					4'hf	:
						begin
							o_data <= 7'b000_1110;
						end
				default:
						begin
							o_data <= o_data;
						end
			endcase
		end
	end
endmodule
