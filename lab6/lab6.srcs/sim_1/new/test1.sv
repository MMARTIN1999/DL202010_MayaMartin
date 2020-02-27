`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2020 02:37:25 PM
// Design Name: 
// Module Name: test1
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


module test1();
    
    reg [3:0] in1_in, in0_in;
    reg sel_in;
    wire [3:0] out_test;
    
    mux2_4b Mux(.in1(in1_in), .in0(in0_in), .sel(sel_in), .out(out_test));
    
    initial begin;
    in0_in = 4'b0000;
    in1_in = 4'b0001;
    sel_in = 0;
    #10;
    
    in0_in = 4'b0001;
    in1_in = 4'b0010;
    sel_in = 1;
    #10;
    
    in0_in = 4'b0010;
    in1_in = 4'b0001;
    sel_in = 0;
    #10;
    
    in0_in = 4'b0010;
    in1_in = 4'b0001;
    sel_in = 1;
    #10;
    
    $finish;
    end
    
endmodule
