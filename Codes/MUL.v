`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: MUL
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module MUL( a, b, prod );

    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] a, b;
    output reg [DATAWIDTH-1:0] prod;
    
    always @ ( a, b ) begin
        prod <= a * b;
    end

endmodule