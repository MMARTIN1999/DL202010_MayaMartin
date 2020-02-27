`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2020 02:52:04 PM
// Design Name: 
// Module Name: sseg_decoder
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


module sseg_decoder(
    input [3:0] num,
    output reg [6:0] sseg
    );
 
always @*
    begin
        case(num)
        4'b0000:
             sseg = 7'b1000000;
         4'b0001:
             sseg = 7'b1111001;
         4'b0010:
             sseg = 7'b0100100;
         4'b0011:
             sseg = 7'b0110000;
         4'b0100:
             sseg = 7'b0011001;
         4'b0101:
             sseg = 7'b0010010;
         4'b0110:
             sseg = 7'b0000011;
         4'b0111:
             sseg = 7'b1111000;
         4'b1000:
             sseg = 7'b0000000;
         4'b1001:
             sseg = 7'b0011000;
         4'b1010:
             sseg = 7'b0001000;
         4'b1011:
             sseg = 7'b0000011;
         4'b1100:
             sseg = 7'b1000110;
         4'b1101:
             sseg = 7'b0100001;
         4'b1110:
             sseg = 7'b0000110;
         4'b1111:
             sseg = 7'b0001110;  
    endcase    
end          
endmodule
