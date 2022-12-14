`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/12 13:22:08
// Design Name: 
// Module Name: Mux_4x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mux_4x1(
    input [3:0] i_a, i_b, i_c, i_d,
    output [1:0] i_sel,
    output [3:0] o_y
    );

    reg [3:0] r_y;
    assign o_y = r_y;

    always @(*) begin
        case (i_sel)
            2'b00 : r_y = i_a; 
            2'b01 : r_y = i_b; 
            2'b10 : r_y = i_c; 
            2'b11 : r_y = i_d; 
        endcase
    end
endmodule
