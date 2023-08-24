`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/17/2023 05:37:13 PM
// Design Name: 
// Module Name: multi_decade_counter
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


module multi_decade_counter(
    input clk,
    input reset_n,
    input enable,
    output done,
    output [3:0] ones,tens,hundreds
    );
    wire done0,done1,done2;
    wire a0,a1,a2;
    BCD_Counter D0(
    .clk(clk),
    .reset_n(reset_n),
    .enable(enable),
    .done(done0),
    .Q(ones)
    );
    assign a0 = enable & done0;
    
    BCD_Counter D1(
    .clk(clk),
    .reset_n(reset_n),
    .enable(enable),
    .done(done1),
    .Q(tens)
    );
    
    assign a1 = a0& done1;
    
    BCD_Counter D2(
    .clk(clk),
    .reset_n(reset_n),
    .enable(enable),
    .done(done2),
    .Q(hundreds)
    );
    
    assign a2 = a1 & done2;
    
    assign done = a2;
endmodule
