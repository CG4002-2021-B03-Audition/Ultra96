#include "math_functions.h"
#include "definition.h"

//main
void mlp(stream_type& S_AXIS, stream_type& M_AXIS) {
	//initialization
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=S_AXIS
	#pragma HLS INTERFACE axis port=M_AXIS

	#define OPT 512

	DTYPE input[OPT+64];
	DTYPE weights_0[LAYER0_H][OPT+64];
	DTYPE weights_1[LAYER1_H][LAYER1_W];
	DTYPE weights_2[LAYER2_H][LAYER2_W];
	DTYPE weights_3[LAYER3_H][LAYER3_W];
	DTYPE bias_0[LAYER1_W];
	DTYPE bias_1[LAYER2_W];
	DTYPE bias_2[LAYER3_W];
	DTYPE bias_3[LAYER3_H];
	DTYPE buffer_0[LAYER0_H];
	DTYPE buffer_1[LAYER1_H];
	DTYPE buffer_2[LAYER2_H];
	DTYPE buffer_3[LAYER3_H];

	int staged = 0;

	dot<DTYPE, OPT, 0> dot_0;
	dot<DTYPE, 64, OPT> dot_05;
	dot<DTYPE, LAYER0_H, 0> dot_1;

	while (true) {
		AXI_L in, out;
		if (staged == 0) {
			loadweights0:for (int i = 0; i < LAYER0_H; i++) {
				for (int j = 0; j < LAYER0_W; j++) {
					S_AXIS >> in;
					weights_0[i][j] = in.data;
				}
			}
			loadweights1:for (int i = 0; i < LAYER1_H; i++) {
				for (int j = 0; j < LAYER1_W; j++) {
					S_AXIS >> in;
					weights_1[i][j] = in.data;
				}
			}
			loadweights2:for (int i = 0; i < LAYER2_H; i++) {
				for (int j = 0; j < LAYER2_W; j++) {
					S_AXIS >> in;
					weights_2[i][j] = in.data;
				}
			}
			loadweights3:for (int i = 0; i < LAYER3_H; i++) {
				for (int j = 0; j < LAYER3_W; j++) {
					S_AXIS >> in;
					weights_3[i][j] = in.data;
				}
			}
			loadbias0:for (int i = 0; i < LAYER1_W; i++) {
				S_AXIS >> in;
				bias_0[i] = in.data;
			}
			loadbias1:for (int i = 0; i < LAYER2_W; i++) {
				S_AXIS >> in;
				bias_1[i] = in.data;
			}
			loadbias2:for (int i = 0; i < LAYER3_W; i++) {
				S_AXIS >> in;
				bias_2[i] = in.data;
			}
			loadbias3:for (int i = 0; i < LAYER3_H; i++) {
				S_AXIS >> in;
				bias_3[i] = in.data;
			}
			staged = 1;
		} else if (staged == 1){
			retrieve_inputs:for (int i = 0; i < LAYER0_W; i++) {
				S_AXIS >> in;
				input[i] = in.data;
			}
			staged = 2;
		} else {
			DTYPE val;
			layer0:for (int i = 0; i < LAYER0_H; i++) {
				#pragma HLS pipeline
				dot_0.calculate(input, weights_0[i], val);
				buffer_0[i] = val;
			}
			layer05:for (int i = 0; i < LAYER0_H; i++) {
				#pragma HLS pipeline
				dot_05.calculate(input, weights_0[i], val);
				buffer_0[i] = relu_func<DTYPE>(buffer_0[i] + val + bias_0[i]);
			}
			layer1:for (int i = 0; i < LAYER1_H; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_0, weights_1[i], val);
				buffer_1[i] = relu_func<DTYPE>(val + bias_1[i]);
			}
			layer2:for (int i = 0; i < LAYER2_H; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_1, weights_2[i], val);
				buffer_2[i] = relu_func<DTYPE>(val + bias_2[i]);
			}
			layer3:for (int i = 0; i < LAYER3_H; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_2, weights_3[i], val);
				buffer_3[i] = val + bias_3[i];
			}
			output:for (int i = 0; i < LAYER3_H; i++) {
				out.data = buffer_3[i];
				if (i == (LAYER3_H - 1)) {
					out.last = true;
				}
				M_AXIS << out;
			}
			staged = 1;
		}
	}
}

