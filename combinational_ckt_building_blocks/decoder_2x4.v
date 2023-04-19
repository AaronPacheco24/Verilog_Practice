`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2023 10:28:17 PM
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4
    (
    input [1:0]w,
    input en,
    output reg [0:3]y
    ); 
    always @ (w,en)
    begin
    y = 4'b0000; //defau;ts
    //Below is priority routing network
//    if ( w==2'b00) 
//        y = 4'b1000; // 
//    else if ( w==2'b01)
//        y = 4'b0100;
//    else if (w==2'b10)
//        y = 4'b0010;
//    else if (w==2'b11)
//        y = 4'b0001;
//     case parallel
//     case (w)
//            0: y = 4'b1000;
//            1: y = 4'b0100;
//            2: y = 4'b0010;
//            3: y = 4'b0001;
//            default: y = 4'b0000
    
    y[w] = 1'b1;
     if (en)
     begin 
            y[w] = 1'b1;
     end
      
    //endcase
    end
    
endmodule
