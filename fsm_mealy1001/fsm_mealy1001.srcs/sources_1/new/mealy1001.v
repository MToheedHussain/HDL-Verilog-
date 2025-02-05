`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2025 12:36:43 PM
// Design Name: 
// Module Name: mealy1001
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


module mealy1001#(parameter S1 = 2'b00,
                S2 = 2'b01,
                S3 = 2'b10,
                S4 = 2'b11
                )
(input in, clk, reset,
output  reg z
        );
    
    
        reg [1:0] PS, NS;
        
        always @(in, PS)
        case (PS)
        S1 : if (in == 1) 
             begin NS = S2; z = 0; end 
        else begin NS = S1; z = 0; end
        
        S2 : if (in == 0) 
             begin NS = S3; z= 0; end
        else begin NS = S2; z= 0; end
        
        S3 : if (in == 0) 
             begin NS = S4; z=0;end
        else begin NS = S2; z=0; end
        
        S4 : if (in == 1) 
        begin NS = S2; z=1; end 
        
        else begin  NS = S1; z=0; end
   
        endcase 
        
        always @(posedge clk, posedge reset) begin 
            if (reset == 0) 
            PS <= NS;
            else
            PS <= S1;
            end
      
endmodule
