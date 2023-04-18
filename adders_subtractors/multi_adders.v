`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 12:16:52 PM
// Design Name: 
// Module Name: multi_adders
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

//many adders making use of parametrization.
module multi_adders(
    input [15:0]a,b,
    output [15:0]s_ab,
    output c_out_ab,
    input [33:0]x,y,
    output [33:0]s_xy,
    output c_out_xy
    );
    rca_nbit #(.n(16)) adder_16 (
        .x(a),
        .y(b),
        .c_in(),
        .s(s_ab),
        .c_out(c_out_ab)
    );
    rca_nbit #(.n(34)) adder_34 (
        .x(x),
        .y(y),
        .c_in(),
        .s(s_xy),
        .c_out(c_out_xy)
    );
endmodule
