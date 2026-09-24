// TinyML Hardware Accelerator
// Auto-generated from trained model

parameter int INPUTS = 3;
parameter int HIDDEN = 4;
parameter int OUTPUTS = 2;

parameter signed [7:0] W1 [0:2][0:3] = '{
'{-65, -81, -48, -75},
'{-29, 28, -127, 82},
'{35, -3, 51, -80}
};

parameter signed [7:0] B1 [0:3] = '{0, 0, 127, 0};

parameter signed [7:0] W2 [0:3][0:1] = '{
'{33, -46},
'{-12, 7},
'{120, -127},
'{64, 7}
};

parameter signed [7:0] B2 [0:1] = '{-127, 127};
