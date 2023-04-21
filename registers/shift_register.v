`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2023 11:20:48 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register
    #(parameter N=4)
    (
     input clk,
     input SI,
     output SO

    );
    reg [N-1:0] Q_reg,Q_next;
    always @ (posedge clk)
    begin
        Q_reg <=Q_next;
    end
     
    always @(SI, Q_reg)
    begin
        Q_next = {SI, Q_reg[N-1:1]}; //Right shift
        //Q_next = {Q_reg[N-2]:0,SI}// Left Shift
    end
    assign SO = Q_reg[0];
    assign Q = Q_reg;
endmodule
