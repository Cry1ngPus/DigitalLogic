module tb_decoder_2x4_gates;

	// Inputs
	reg t_A;
	reg t_B;
	reg t_enable;

	// Outputs
	wire [0:3] t_D;

	// Instantiate the Unit Under Test (UUT)
	decoder_2x4_gates uut (
		.D(t_D), 
		.A(t_A), 
		.B(t_B), 
		.enable(t_enable)
	);

	initial begin
		// Initialize Inputs
		#30 t_enable = 1;
      	#10 t_A = 0; t_B = 0;
		#10 t_A = 0; t_B = 1;
		#10 t_A = 1; t_B = 0;
		#10 t_A = 1; t_B = 1;
		
		#30 t_enable = 0;
      	#10 t_A = 0; t_B = 0;
		#10 t_A = 0; t_B = 1;
		#10 t_A = 1; t_B = 0;
	end
initial #150 $finish;  
      
endmodule
