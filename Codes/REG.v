`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: REG
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module REG( d, Clk, Rst, q );

    parameter DATAWIDTH = 2;
    input [DATAWIDTH-1:0] d;
    input Clk, Rst;
    output reg [DATAWIDTH-1:0] q;
    
    always @ ( posedge Clk ) begin
        q <= 0;
        if (Rst == 1) begin
            q <= 0;
        end
        else if ( Rst == 0 ) begin
            q <= d;
        end
    end
endmodule
