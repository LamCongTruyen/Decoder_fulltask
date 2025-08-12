
module TB_DECODDER_2TO4_E_S;

	// Inputs
	reg E;
	reg S;
	reg [1:0] A;

	// Outputs
	wire [3:0] Y;

	// Instantiate the Unit Under Test (UUT)
	decoder_2to4_E_S uut (
		.E(E), 
		.S(S), 
		.A(A), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		E = 0;
		S = 0;
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
      E = 1;
		S = 0;
	
		// Add stimulus here

	end
	always #100 A[0] = ~A[0];
	always #200 A[1] = ~A[1];
      
endmodule
