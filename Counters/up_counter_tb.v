`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/15/2023 05:38:21 PM
// Design Name: 
// Module Name: up_counter_tb
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


module up_counter_tb(

    );
    localparam BITS = 4;
    reg clk, reset_n;
    wire [BITS -1 :0]Q;
    up_counter #(.BITS(BITS)) uut(
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
    );
    //Timer
    initial 
        #200 $stop;
     //generating stimuli
     //generating a clk signal
     localparam T = 10;
     always 
     begin
        clk = 1'b0;
        #(T/2);
        clk =1'b1;
        #(T/2);
      end
      initial 
      begin
        reset_n = 1'b0;
        #2 reset_n =1'b1;
        
       end
endmodule
