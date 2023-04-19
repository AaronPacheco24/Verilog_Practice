`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 08:57:19 PM
// Design Name: 
// Module Name: mux_generic_1bit
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


module mux_generic_1bit
    #(parameter inps = 5)
    (
    input [inps-1:0] w,
    input [$clog2(inps)-1:0] s,
    output reg f
    );
    integer k;// integer because this is strcutural not behavioral 
    //you would use genvar if behavioral
    always @(w,s)
    begin
        f='bx;
        for(k=0;k<inps;k=k+1)
            if (k==s)
                f=w[k];
    end
endmodule
