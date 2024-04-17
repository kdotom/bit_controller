`default_nettype none
`timescale 1ns/1ns
module project (
    input wire clk,
    input wire reset,
    output wire out,
    input wire [7:0] level
    );

    reg [7:0] counter;
    reg out_reg;


	always @(posedge clk) begin
		if (reset) begin
            counter <= 0;
            out_reg <= 1'b0;
        end else begin
            counter <= (counter + 1);
            if (counter < (level-1)) begin
                out_reg <= 1'b1;
            end else begin
                out_reg <= 1'b0;
            end
        end
	end

assign out = out_reg;

endmodule
