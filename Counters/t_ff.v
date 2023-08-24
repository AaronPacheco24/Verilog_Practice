`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 10:06:54 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input clk,
    input T,
    input reset_n,
    output Q
    );
localparam C2Q_Delay =2;
reg Q_reg;
wire Q_next;

always @ (posedge clk, negedge reset_n)
begin
    if (~reset_n)
        Q_reg<= 1'b0;
    else
        #C2Q_Delay Q_reg<=Q_next;
end
//next state
assign Q_next = T?~Q_reg: Q_reg;
//output
assign Q = Q_reg;
endmodule
