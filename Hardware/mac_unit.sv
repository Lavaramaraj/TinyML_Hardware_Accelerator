//============================================================
// TinyML Hardware Accelerator
// MAC (Multiply-Accumulate) Unit
//
// Operation:
// accumulator_out = accumulator_in + (input_data × weight)
//============================================================

module mac_unit #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 32
)(
    input  logic signed [DATA_WIDTH-1:0] input_data,
    input  logic signed [DATA_WIDTH-1:0] weight,
    input  logic signed [ACC_WIDTH-1:0]  accumulator_in,

    output logic signed [ACC_WIDTH-1:0] accumulator_out
);

    logic signed [(2*DATA_WIDTH)-1:0] multiplication_result;

    // Multiply
    assign multiplication_result = input_data * weight;

    // Accumulate
    assign accumulator_out =
        accumulator_in + multiplication_result;

endmodule