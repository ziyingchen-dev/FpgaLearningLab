module led_blink (
    input  wire clk,
    input  wire rst_n,
    output reg  led
);

    parameter TARGET_COUNT = 9;
    reg [31:0] counter;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            led <= 0;
        end else begin
            if (counter == TARGET_COUNT) begin
                counter <= 0;
                led <= ~led;
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule