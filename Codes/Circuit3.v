`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit3
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit3( a, b, c, d, e, f, g, h, sa, Clk, Rst, avg );

    input [15:0] a, b, c, d, e, f, g, h;
    input [7:0] sa;
    input Clk, Rst;
    output [15:0] avg;
    
    wire [31:0] l00, l01, l01, l02, l03, l10, l11, l2, l2div2, l2div4, l2div8;
    
    ADD #(32) Add0( {16'b0,a}, {16'b0,b}, l00 );
    ADD #(32) Add1( {16'b0,c}, {16'b0,d}, l01 );
    ADD #(32) Add2( {16'b0,e}, {16'b0,f}, l02 );
    ADD #(32) Add3( {16'b0,g}, {16'b0,h}, l03 );
    ADD #(32) Add4( l00, l01, l10 );
    ADD #(32) Add5( l02, l03, l11 );
    ADD #(32) Add6( l10, l11, l2 );
    SHR #(32) SHR0( l2, {24'b0,sa}, l2div2 );
    SHR #(32) SHR1( l2div2, {24'b0,sa}, l2div4 );
    SHR #(32) SHR2( l2div4, {24'b0,sa}, l2div8 );
    REG #(16) Reg0( l2div8[15:0], Clk, Rst, avg );
    
endmodule