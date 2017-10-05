`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: INC
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module INC( a, d );
    
    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a;
    output reg [DATAWIDTH-1:0] d;
        
    always @ ( a ) begin
        d <= a + 1;
    end
        
endmodule
