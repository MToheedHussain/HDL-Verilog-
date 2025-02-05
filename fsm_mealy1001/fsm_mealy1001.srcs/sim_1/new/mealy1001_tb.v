`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 12:51:38 PM
// Design Name: 
// Module Name: mealy1001_tb
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


module mealy1001_tb();
reg in, clk, reset;
wire z;
    mealy1001 dut (.in(in), .clk(clk), .reset(reset), .z(z));
      
       initial clk = 1'b0;
       always #5 clk = ~clk;
       
       initial begin 
       in = 1'b0; reset = 1'b0;
       #10 //10ns
       in = 1'b1; reset = 1'b1; 
       #10 //20ns
       in = 1'b1; reset = 1'b0;
       #10 //30ns
       in = 1'b0; 
       #10 //40ns
       in = 1'b0; 
       #10 //50ns
       in = 1'b1; 
       #10 //60ns
       in = 1'b0;
       #10 //70ns
       in = 1'b0;
       #10 //80ns
       in = 1'b1;
       #10 //90ns
       in = 1'b1;
       #10 //100ns
       in = 1'b0;
       #10 //110ns
       in = 1'b0;
       #10 //120ns
       in = 1'b1;
      end
endmodule
