`timescale 1ns / 1ps

// Create Date:   18:42:48 11/15/2019
// Design Name:   mod13
// Module Name:   D:/X/mod/test.v
// Project Name:  mod

module test;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] qo;

	// Instantiate the Unit Under Test (UUT)
	mod13 uut (
		.qo(qo), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;

		// Wait 100 ns for global reset to finish
	
		// Add stimulus here

	end
      
endmodule

