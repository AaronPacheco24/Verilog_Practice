`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 12:08:08 PM
// Design Name: 
// Module Name: full_adder
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2023 10:46:50 AM
// Design Name: 
// Module Name: full_adder
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

//Full adder. Makes use of 2 half adders.
module full_adder(
    input x,y,c_in,
    output s,c_out
    );
    wire c1,s1,c2;
    half_adder HA0 (
    .x(x),
    .y(y),
    .c(c1),
    .s(s1)
    );
    half_adder HA1(
    .x(s1),
    .y(c_in),
    .c(c2),
    .s(s)
    );
    assign c_out = c1|c2;
endmodule
    

