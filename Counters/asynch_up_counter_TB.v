`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 10:15:59 PM
// Design Name: 
// Module Name: asynch_up_counter_TB
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


module asynch_up_counter_TB(

    );
    reg clk, reset_n;
    wire [3:0] Q;
    asynch_up_counter uut (
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q)
    );
    
    // Timer
    initial 
        #200 $stop;
    // Generate stimuli
    
    // Generate a cllk signal
    localparam T =10;
     
    
    always 
    begin
        clk =1'b0;
        #(T/2);
        clk = 1'b1;
        #(T/2);
    end
    
    initial
    begin
        reset_n = 1'b0;
       #2 reset_n = 1'b1;
    end
    
    
endmodule
