module key_input (
    input  wire key_n,
    output wire led
);

    assign led = ~key_n;

endmodule
