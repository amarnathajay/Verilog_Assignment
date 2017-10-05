`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit4
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit4( a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, Clk, Rst, finalop );

    input [7:0] a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
    input Clk, Rst;
    output [31:0] finalop;
    
    wire [31:0] t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14;
    
    ADD #(32) Add00( {24'b0,a}, {24'b0,b}, t1 );
    ADD #(32) Add01( t1, {24'b0,c}, t2 );
    ADD #(32) Add02( t2, {24'b0,d}, t3 );
    ADD #(32) Add03( t3, {24'b0,e}, t4 );
    ADD #(32) Add04( t4, {24'b0,f}, t5 );
    ADD #(32) Add05( t5, {24'b0,g}, t6 );
    ADD #(32) Add06( t6, {24'b0,h}, t7 );
    ADD #(32) Add07( t7, {24'b0,i}, t8 );
    ADD #(32) Add08( t8, {24'b0,j}, t9 );
    ADD #(32) Add09( t9, {24'b0,l}, t10 );
    ADD #(32) Add10( t10, {24'b0,m}, t11 );
    ADD #(32) Add11( t11, {24'b0,n}, t12 );
    ADD #(32) Add12( t12, {24'b0,o}, t13 );
    ADD #(32) Add13( t13, {24'b0,p}, t14 );
    REG #(32) Reg0( t14, Clk, Rst, finalop );

endmodule