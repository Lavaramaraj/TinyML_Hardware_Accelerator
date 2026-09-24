//============================================================
// TinyML Hardware Accelerator
// Auto-generated from trained TinyML model
//============================================================

parameter int INPUTS  = 3;
parameter int HIDDEN  = 4;
parameter int OUTPUTS = 2;

// Input Layer -> Hidden Layer
parameter signed [7:0] W1 [0:2][0:3] = '{
    '{52, -14, 89, -15},
    '{-7, -46, 97, 127},
    '{-48, -52, -30, 52}
};

// Hidden Layer Bias
parameter signed [7:0] B1 [0:3] = '{0, 0, -65, -127};

// Hidden Layer -> Output Layer
parameter signed [7:0] W2 [0:3][0:1] = '{
    '{70, -24},
    '{40, 5},
    '{-127, 116},
    '{-74, 29}
};

// Output Layer Bias
parameter signed [7:0] B2 [0:1] = '{127, -127};