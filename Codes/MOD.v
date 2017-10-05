`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: MOD
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module MOD( a, b, rem );

    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] rem;
    
    always @ ( a, b ) begin
        rem <= a % b;
    end

endmodule