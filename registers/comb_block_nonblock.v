`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 02:45:58 PM
// Design Name: 
// Module Name: comb_block_nonblock
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


module comb_block_nonblock(
    input a,b,c,
    output reg x
    );
    //Blocking
//    always @ (a,b,c)
//    begin
//        x=a;
//        x=x^b;
//        x=x^c;
//    end
    
    //Non-Blocking
        always @ (a,b,c)
    begin
        x<=a;
        x<=x^b;
        x<=x^c;
    end
    
endmodule
