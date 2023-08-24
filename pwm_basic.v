`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 04:26:19 PM
// Design Name: 
// Module Name: pwm_basic
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


module pwm_basic
    #(parameter R = 8)
    (
    input clk,
    input reset_n,
    input [R-1:0] duty,
    output pwm_out
    );
    // UP counter
    reg [R-1:0] Q_reg, Q_next;
    
    always @ (posedge clk, negedge reset_n)
    begin
        if (~reset_n)
            Q_reg <= 'b0;
         else
            Q_reg <= Q_next;
    end
    //Next State Logic
    always @ (*)
    begin
        Q_next = Q_reg + 1;
    end
     
     // Output logic
     assign pwm_out = (Q_reg< duty);
endmodule
