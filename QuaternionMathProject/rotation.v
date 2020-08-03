`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2017 04:51:11 PM
// Design Name: 
// Module Name: rotation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rotation(
    input clk,
    input [31:0] v0, v1, v2, v3,
    input [3:0] valid_v,
    input [31:0] r0, r1, r2, r3,
    input [3:0] valid_r,
    output [31:0] out0, out1, out2, out3,
    output valid_result
    );
    
    wire [3:0] valid_t, valid_res;
    wire [31:0] rs0, rs1, rs2, rs3, t0, t1, t2, t3;
    quarterion_mult intermediate_result 
       (.clk(clk),
        .q0(v0),
        .q1(v1),
        .q2(v2),
        .q3(v3),
        .r0(r0),
        .r1(r1),
        .r2(r2),
        .r3(r3),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3),
        .valid_q0(1),
        .valid_q1(valid_v[0]),
        .valid_q2(valid_v[1]),
        .valid_q3(valid_v[2]),
        .valid_r0(valid_r[0]),
        .valid_r1(valid_r[1]),
        .valid_r2(valid_r[2]),
        .valid_r3(valid_r[3]),
        .valid_t0(valid_t[0]),
        .valid_t1(valid_t[1]),
        .valid_t2(valid_t[2]),
        .valid_t3(valid_t[3]));
       
    quarterion_conj r_star
       (.q0(r0),
        .q1(r1),
        .q2(r2),
        .q3(r3),
        .t0(rs0),
        .t1(rs1),
        .t2(rs2),
        .t3(rs3));
         
    quarterion_mult final_multiply 
       (.clk(clk),
        .q0(t0),
        .q1(t1),
        .q2(t2),
        .q3(t3),
        .r0(rs0),
        .r1(rs1),
        .r2(rs2),
        .r3(rs3),
        .t0(out0),
        .t1(out1),
        .t2(out2),
        .t3(out3),
        .valid_q0(valid_t[0]),
        .valid_q1(valid_t[0]),
        .valid_q2(valid_t[1]),
        .valid_q3(valid_t[2]),
        .valid_r0(valid_r[0]),
        .valid_r1(valid_r[1]),
        .valid_r2(valid_r[2]),
        .valid_r3(valid_r[3]),
        .valid_t0(valid_res[0]),
        .valid_t1(valid_res[1]),
        .valid_t2(valid_res[2]),
        .valid_t3(valid_res[3]));
    
    assign valid_result = (valid_res[0] & valid_res[1]) & (valid_res[2] & valid_res[3]);

endmodule
