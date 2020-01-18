`timescale 1ns / 1ps
// Create Date:    17:53:26 11/15/2019 
// Module Name:    mod 
// Project Name: 	 synchronous mode13counter 
// Designer name:  Arjun Parmar(U18EC019) & Ishan Chopra(U18EC020)
module mod(q,qb,j,k,clk);
output q,qb;
input j,k,clk;
reg q,qb;
initial begin q=1'b0; qb=1'b1; end
always @(posedge clk)
	begin
		case({j,k})
						{1'b0,1'b0}:begin q=q; qb=qb;end
						{1'b0,1'b1}:begin q=1'b0; qb=1'b1;end
						{1'b1,1'b0}:begin q=1'b1; qb=1'b0;end
						{1'b1,1'b1}:begin q=~q; qb=~qb;end
		endcase
	end
endmodule

module mod13(qo,clk);
	output [3:0]qo;
	input clk;	
	always @(posedge clk);
		mod mod1(qo[0],q11,j1,k1,clk);
		mod mod2(qo[1],q12,j2,k2,clk);
		mod mod3(qo[2],q13,j3,k3,clk);
		mod mod4(qo[3],q14,j4,k4,clk);
		assign {q4,q3,q2,q1}=qo;	
		assign j4=q3&q2&q1;
		assign k4=q3;
		assign j3=q2&q1;
		assign k3=q4|(q2&q1);
		assign j2=q1;
		assign k2=q1;	
		assign j1=(~q4) | (~q3);
		assign k1=1;
endmodule