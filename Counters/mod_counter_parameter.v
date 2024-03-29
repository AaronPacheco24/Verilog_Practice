`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 08:36:58 PM
// Design Name: 
// Module Name: mod_counter_parameter
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


module mod_counter_parameter
    #(parameter FINAL_VALUE = 9)
    (
    input clk,
    input reset_n,
    input enable,
    output [BITS - 1:0] Q
    );
    localparam BITS = $clog2(FINAL_VALUE);
    reg [BITS - 1:0] Q_reg, Q_next;
    wire done;
    always @ (posedge clk, negedge reset_n)
    begin
        if (~reset_n)
            Q_reg <='b0;
         else if (enable)
            Q_reg<= Q_next;
         else 
            Q_reg<=Q_reg;
    end
    
    //next state logic
    assign done = Q_reg == FINAL_VALUE;
    
    always @ (*)
    begin
        Q_next = done ? 'b0: Q_reg +1;
    end
    
    //output logic
    assign Q=Q_reg;
endmodule