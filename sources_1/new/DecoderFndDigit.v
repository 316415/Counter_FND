`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/12 13:17:04
// Design Name: 
// Module Name: DecoderFndDigit
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


module DecoderFndDigit(
    input [1:0] i_select,
    output [3:0] o_digitPosition
    );

    reg [3:0] r_digitPosition;
    assign o_digitPosition = r_digitPosition;

    always @(i_select) begin
        case(i_select)
            2'b00 : r_digitPosition = 4'b1110;
            2'b01 : r_digitPosition = 4'b1101;
            2'b10 : r_digitPosition = 4'b1011;
            2'b11 : r_digitPosition = 4'b0111;
        endcase
    end
endmodule
