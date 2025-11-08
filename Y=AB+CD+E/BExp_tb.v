`timescale 1ns / 1ps

module boolean_exp_tb;

    // Inputs
    reg A, B, C, D, E;

    // Output
    wire Y;

    // Instantiate the DUT (Device Under Test)
    boolean_exp dut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .Y(Y)
    );

    initial begin
        $dumpfile("BExp_tb.vcd");
        $dumpvars(0, boolean_exp_tb);  // <- This is KEY!

        $display("A B C D E | Y");
        $monitor("%b %b %b %b %b | %b", A, B, C, D, E, Y);

        // Test combinations
        A = 0; B = 0; C = 0; D = 0; E = 0; #10;
        A = 1; B = 1; C = 0; D = 0; E = 0; #10;
        A = 0; B = 0; C = 1; D = 1; E = 0; #10;
        A = 0; B = 0; C = 0; D = 0; E = 1; #10;
        A = 1; B = 1; C = 1; D = 1; E = 0; #10;
        A = 1; B = 0; C = 1; D = 1; E = 1; #10;

        $finish;
    end

endmodule
