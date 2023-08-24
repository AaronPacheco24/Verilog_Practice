`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module up_down_counter-TB(

    );
    localparam BITS =4;
    reg clk,reset_n,enable,up;
    wire [BITS - 1:0] Q:
    //instantiate mod under test
    up_down_counter #(.BITS(BITS)) uut (
        .clk(clk)
        .reset_n(reset_n)
        .enable(enable)
        .up(up)
        .Q(Q)
       
    );
    //timer
    initial #400 $stop
    //gen stimuli
    //gen clk signal
    localparam T=10;
    always 
    begin
        clk =1'b0;
        #(T/2);
        clk = 1'b1;
        #(T/2);
     end
     
     initial 
     begin
     //isue a quick reset for 2 ns
        reset_n = 1'b0;
        enable = 1'b0;
        up=1'b1;
        #2 reset_n = 1'b1;
        
        repeat(2) @(negedge clk);
        enable 1'b1;
        
        wait (Q==15);
        enable 1'b0;
        
        
        repeat(2) @(negedge clk);
        up = 1'b0;
        enable = 1'b0;
endmodule
