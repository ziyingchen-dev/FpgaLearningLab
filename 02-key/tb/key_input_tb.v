`timescale 1ns/1ps

module key_input_tb;

	reg key_n;
	wire led;

	key_input dut (
		.key_n(key_n),
		.led  (led)
	);

	initial begin
		$dumpfile("sim/key_input.vcd");
		$dumpvars(0, key_input_tb);

		key_n = 1'b1;

		#1;
		if (led !== 1'b0) begin
			$display("ERROR: LED is not off when key is released");
			$finish;
		end

		#19;
		key_n = 1'b0;

		#1;
		if (led !== 1'b1) begin
			$display("ERROR: LED is not on when key is pressed");
			$finish;
		end

		#19;
		key_n = 1'b1;

		#1;
		if (led !== 1'b0) begin
			$display("ERROR: LED is not off after key is released");
			$finish;
		end

		$display("PASS: Key input behavior is correct");
		$finish;
	end

endmodule
