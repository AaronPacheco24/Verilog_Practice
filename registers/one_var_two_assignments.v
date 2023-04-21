`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 03:14:08 PM
// Design Name: 
// Module Name: one_var_two_assignments
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


module one_var_two_assignments(
    input a,b,
    output reg x
    );
    always @ (a,b)
    begin
        x=a|b;
    end
    always @ (a,b)
    begin
        x=a&b;
    end
endmodule
