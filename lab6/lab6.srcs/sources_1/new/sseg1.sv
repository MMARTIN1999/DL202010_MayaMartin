`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2020 03:41:12 PM
// Design Name: 
// Module Name: sseg1
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


module sseg1(
    input [15:0] sw,
    output [3:0] an,
    output [6:0] seg,
    output dp
    );
    wire [3:0] num_sseg1;
    
    mux2_4b mux(.in1(sw[7:4]), .in0(sw[3:0]),.sel(sw[15]),.out(num_sseg1));
    sseg_decoder sd(.num(num_sseg1),.sseg(seg));
    
    assign an[1] = ~sw[15];
    assign an[0] = sw[15];
    assign an[3:2] = 2'b11;
    assign dp = 1;
    
endmodule
