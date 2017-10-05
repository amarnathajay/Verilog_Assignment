`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Circuit6
// Group: amarnathajay_ankurlimaye
//////////////////////////////////////////////////////////////////////////////////

module Circuit6( a, b, c, d, e, f, g, h, num, Clk, Rst, avg );

    input [15:0] a, b, c, d, e, f, g, h, num;
    input Clk, Rst;
    output [15:0] avg;
    
    wire [15:0] r1, r2, r3, r4, r5, r6, r7;
    wire [15:0] avgwire;
    wire [31:0] t1, t2, t3, t4, t5, t6, t7;
    
    ADD #(32) Add0( {16'b0,a}, {16'b0,b}, t1 );
    REG #(16) Reg0( t1[15:0], Clk, Rst, r1 );
    ADD #(32) Add1( {16'b0,r1}, {16'b0,c}, t2 );
    REG #(16) Reg1( t2[15:0], Clk, Rst, r2 );
    ADD #(32) Add2( {16'b0,r2}, {16'b0,d}, t3 );
    REG #(16) Reg2( t3[15:0], Clk, Rst, r3 );
    ADD #(32) Add4( {16'b0,r3}, {16'b0,e}, t4 );
    REG #(16) Reg4( t4[15:0], Clk, Rst, r4 );
    ADD #(32) Add5( {16'b0,r4}, {16'b0,f}, t5 );
    REG #(16) Reg5( t5[15:0], Clk, Rst, r5 );
    ADD #(32) Add6( {16'b0,r5}, {16'b0,g}, t6 );
    REG #(16) Reg6( t6[15:0], Clk, Rst, r6 );
    ADD #(32) Add7( {16'b0,r6}, {16'b0,h}, t7 );
    REG #(16) Reg7( t7[15:0], Clk, Rst, r7 );
    DIV #(16) Div0( r7, num, avgwire );
    REG #(16) Reg8( avgwire, Clk, Rst, avg );            
    
endmodule