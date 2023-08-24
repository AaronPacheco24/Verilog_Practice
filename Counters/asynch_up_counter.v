`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 10:11:52 PM
// Design Name: 
// Module Name: asynch_up_counter
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


module asynch_up_counter(
    input clk,
    input reset_n,
    output [3:0] Q
    );
    t_ff FF0 (
        .clk(clk),
        .T(1'b1),
        .reset_n(reset_n),
        .Q(Q[0])
    );
    t_ff FF1 (
        .clk(~Q[0]),
        .T(1'b1),
        .reset_n(reset_n),
        .Q(Q[1])
    );
    t_ff FF2 (
        .clk(~Q[1]),
        .T(1'b1),
        .reset_n(reset_n),
        .Q(Q[2])
    );
    t_ff FF3 (
        .clk(~Q[2]),
        .T(1'b1),
        .reset_n(reset_n),
        .Q(Q[3])
    );
endmodule
