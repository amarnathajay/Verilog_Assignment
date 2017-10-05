`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: SUB
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module SUB( a, b, diff );
    
    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] diff;
    
    always @ ( a, b ) begin
        diff <= a - b;
    end
     
endmodule