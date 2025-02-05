`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 11:53:26 AM
// Design Name: 
// Module Name: fsm_1101tb
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


module fsm_1101tb();
reg clk, in, reset;
wire out;
    
    fsm1101detector dut(.clk(clk), .in(in), .reset(reset), .out(out));
    
    initial clk = 1'b0;
    always #5 clk = ~clk;
    
    
    initial begin 
    reset = 1'b1;
    #10 reset = 1'b0;
    
    #10 in = 1'b1;  
    #10 in = 1'b1; 
    #10 in = 1'b0;
    #10 in = 1'b1;
    
    #10 in = 1'b1;  
        #10 in = 1'b1; 
        #10 in = 1'b0;
        #10 in = 1'b1;
         
         
     
    
       
    
   end
endmodule
