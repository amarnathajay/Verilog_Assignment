`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: SHL
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////


module SHL( a, sh_amt, d );

    parameter DATAWIDTH = 16;
    input [DATAWIDTH-1:0] a, sh_amt;
    output reg [DATAWIDTH-1:0] d;
    
    always @ ( a, sh_amt ) begin
        d <= a << sh_amt;
    end
endmodule
