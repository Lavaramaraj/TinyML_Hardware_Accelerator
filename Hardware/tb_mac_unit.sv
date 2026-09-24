`timescale 1ns/1ps

//============================================================
// Testbench for MAC Unit
//============================================================

module tb_mac_unit;

    // Testbench signals
    logic signed [7:0]  input_data;
    logic signed [7:0]  weight;
    logic signed [31:0] accumulator_in;

    logic signed [31:0] accumulator_out;

    //========================================================
    // Instantiate MAC Unit
    //========================================================

    mac_unit uut (
        .input_data(input_data),
        .weight(weight),
        .accumulator_in(accumulator_in),
        .accumulator_out(accumulator_out)
    );

    //========================================================
    // Test Cases
    //========================================================

    initial begin

        $display("========================================");
        $display(" TinyML MAC Unit Simulation");
        $display("========================================");

        // ---------------------------------------------------
        // Test 1
        // 10 × 5 + 0 = 50
        // ---------------------------------------------------

        input_data     = 10;
        weight         = 5;
        accumulator_in = 0;

        #10;

        $display("Test 1");
        $display("Input       = %d", input_data);
        $display("Weight      = %d", weight);
        $display("Accumulator = %d", accumulator_in);
        $display("Output      = %d", accumulator_out);

        // ---------------------------------------------------
        // Test 2
        // 3 × (-7) + 50 = 29
        // ---------------------------------------------------

        input_data     = 3;
        weight         = -7;
        accumulator_in = accumulator_out;

        #10;

        $display("Test 2");
        $display("Input       = %d", input_data);
        $display("Weight      = %d", weight);
        $display("Accumulator = %d", accumulator_in);
        $display("Output      = %d", accumulator_out);

        // ---------------------------------------------------
        // Test 3
        // (-4) × 8 + 0 = -32
        // ---------------------------------------------------

        input_data     = -4;
        weight         = 8;
        accumulator_in = 0;

        #10;

        $display("Test 3");
        $display("Input       = %d", input_data);
        $display("Weight      = %d", weight);
        $display("Accumulator = %d", accumulator_in);
        $display("Output      = %d", accumulator_out);

        // ---------------------------------------------------
        // Test 4
        // 25 × 52 + 0 = 1300
        // This uses one of your actual TinyML weights.
        // ---------------------------------------------------

        input_data     = 25;
        weight         = 52;
        accumulator_in = 0;

        #10;

        $display("Test 4 - Actual TinyML Weight");
        $display("Input       = %d", input_data);
        $display("Weight      = %d", weight);
        $display("Accumulator = %d", accumulator_in);
        $display("Output      = %d", accumulator_out);

        $display("========================================");
        $display(" Simulation Completed");
        $display("========================================");

        $finish;

    end

endmodule