`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 12:02:30 PM
// Design Name: 
// Module Name: seven_segment_switches
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


module seven_segment_switches(
output [7:0] AN,
output  dp, 
input [3:0] switches,
output [6:0] display
    );
    
    seven_display(.sw(switches), .out(display));
    
    assign AN = 8'b1111_1110;
    
    assign dp = 1'b1;
    
endmodule
