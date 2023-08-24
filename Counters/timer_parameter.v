`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2023 05:53:09 PM
// Design Name: 
// Module Name: timer_parameter
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


module timer_parameter
    #(parameter FINAL_VALUE = 255)
    (
    input clk,
    input reset_n,
    input enable,
    //output [BITS -1 :0]Q
    output done;
    );
    localparam BITS = $clog2(FINAL_VALUE);
    reg [BITS - 1:0] Q_reg, Q_next;

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
    

    
endmodule
