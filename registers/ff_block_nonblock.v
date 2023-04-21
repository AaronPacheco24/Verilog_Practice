`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 02:56:40 PM
// Design Name: 
// Module Name: ff_block_nonblock
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


module ff_block_nonblock(
    input d,clk,
    output reg q1,q2
    );
//    always @ (posedge clk)
//    begin
//        q2=q1;
//        q1=d;
//    end
    always @ (posedge clk)
    begin
        q2<=q1;
           q1<=d;
    end
endmodule
