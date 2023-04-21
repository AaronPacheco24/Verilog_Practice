`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 11:17:08 PM
// Design Name: 
// Module Name: simple_register_load
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


module simple_register_load
    #(parameter N = 4)
    (
    input clk,
    input load,
    input [N-1:0] I,
    output [N-1:0] Q
    );
    reg [N-1:0] Q_reg ,Q_next;
    always @ (posedge clk)
    begin
        Q_reg <=Q_next;        
    end
    always @ (I,load)
    begin
        if (load)
            Q_next = I;
        else
            Q_next = Q_reg;
    end
    assign Q = Q_reg;
endmodule
