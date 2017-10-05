`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: MUX2x1
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module MUX2x1( a, b, sel, d );

    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a, b;
    input sel;
    output reg [DATAWIDTH-1:0] d;
    
    always @ ( a, b, sel ) begin
    d <= 0;
        if ( sel == 0 ) begin
            d <= a;
        end
        else if ( sel == 1 ) begin
            d <= b;
        end    
    end

endmodule
