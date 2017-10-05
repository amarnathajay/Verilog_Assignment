`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: DEC
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module DEC( a, d );
    
    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] d;
        
    always @ ( a ) begin
        d <= a - 1;
    end
        
endmodule
