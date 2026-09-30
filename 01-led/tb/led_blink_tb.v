`timescale 1ns/1ps

module led_blink_tb;

	reg clk;
	reg rst_n;
	wire led;

	led_blink dut (
		.clk  (clk),
		.rst_n(rst_n),
		.led  (led)
	);

	always #5 clk = ~clk;

	initial begin
		$dumpfile("sim/led_blink.vcd");
		$dumpvars(0, led_blink_tb);

		clk   = 1'b0;
		rst_n = 1'b1;

		#1;
		rst_n = 1'b0;

		#1;
		if (led !== 1'b0) begin
			$display("ERROR: LED is not off during reset");
			$finish;
		end

		#11;
		rst_n = 1'b1;
		repeat (10) @(posedge clk);
		#1;
		if (led !== 1'b1) begin
			$display("ERROR: LED did not toggle after 10 clocks");
			$finish;
		end

		repeat (10) @(posedge clk);
		#1;
		if (led !== 1'b0) begin
			$display("ERROR: LED did not toggle back after 10 clocks");
			$finish;
		end

		$display("PASS: LED blink behavior is correct");
		$finish;
	end

endmodule
