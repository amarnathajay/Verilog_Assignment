`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: ADD
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module ADD( a, b, sum );
    
    parameter DATAWIDTH = 8;
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] sum;
    
    always @ ( a, b ) begin
        sum <= a + b;
    end
     
endmodule