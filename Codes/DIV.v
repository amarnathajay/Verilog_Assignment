`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: DIV
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module DIV( a, b, quot );

    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] quot;
    
    always @ ( a, b ) begin
        quot <= a / b;
    end

endmodule
