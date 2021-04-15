#include "math_functions.h"
#include "definition.h"

//main
void mlp_dance3(stream_type& S_AXIS, stream_type& M_AXIS) {
	//initialization
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=S_AXIS
	#pragma HLS INTERFACE axis port=M_AXIS

	DTYPE input[128];
	DTYPE weights_0[LAYER0_H][128];
	DTYPE weights_1[LAYER1_H][LAYER1_W];
	DTYPE weights_2[LAYER2_H][LAYER2_W];
	DTYPE weights_3[LAYER3_H][LAYER3_W];
	DTYPE weights_4[LAYER4_H][LAYER4_W];
	DTYPE bias_0[LAYER1_W];
	DTYPE bias_1[LAYER2_W];
	DTYPE bias_2[LAYER3_W];
	DTYPE bias_3[LAYER4_W];
	DTYPE bias_4[LAYER4_H];
	DTYPE weights_0_pos[POS_LAYER0_H][128];
	DTYPE weights_1_pos[POS_LAYER1_H][POS_LAYER1_W];
	DTYPE weights_2_pos[POS_LAYER2_H][POS_LAYER2_W];
	DTYPE weights_3_pos[POS_LAYER3_H][POS_LAYER3_W];
	DTYPE bias_0_pos[POS_LAYER1_W];
	DTYPE bias_1_pos[POS_LAYER2_W];
	DTYPE bias_2_pos[POS_LAYER3_W];
	DTYPE bias_3_pos[POS_LAYER3_H];
	DTYPE buffer_0[LAYER0_H];
	DTYPE buffer_1[LAYER1_H];
	DTYPE buffer_2[LAYER2_H];
	DTYPE buffer_3[LAYER3_H];
	DTYPE buffer_4[LAYER4_H];


	int staged = 0;

	dot<DTYPE, 128, 0> dot_0;
	dot<DTYPE, LAYER0_H, 0> dot_1;
	dot<DTYPE, POS_LAYER0_H, 0> dot_2;
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
					weights_3[i][j] = in.data;				}
			}
			loadweights4:for (int i = 0; i < LAYER4_H; i++) {
				for (int j = 0; j < LAYER4_W; j++) {
					S_AXIS >> in;
					weights_4[i][j] = in.data;				}
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
			loadbias3:for (int i = 0; i < LAYER4_W; i++) {
				S_AXIS >> in;
				bias_3[i] = in.data;
			}
			loadbias4:for (int i = 0; i < LAYER4_H; i++) {
				S_AXIS >> in;
				bias_4[i] = in.data;
			}
			staged = 1;
		} else if (staged == 1) {
			loadweights0_pos:for (int i = 0; i < POS_LAYER0_H; i++) {
				for (int j = 0; j < POS_LAYER0_W; j++) {
					S_AXIS >> in;
					weights_0_pos[i][j] = in.data;
				}
			}
			loadweights1_pos:for (int i = 0; i < POS_LAYER1_H; i++) {
				for (int j = 0; j < POS_LAYER1_W; j++) {
					S_AXIS >> in;
					weights_1_pos[i][j] = in.data;
				}
			}
			loadweights2_pos:for (int i = 0; i < POS_LAYER2_H; i++) {
				for (int j = 0; j < POS_LAYER2_W; j++) {
					S_AXIS >> in;
					weights_2_pos[i][j] = in.data;
				}
			}
			loadweights3_pos:for (int i = 0; i < POS_LAYER3_H; i++) {
				for (int j = 0; j < POS_LAYER3_W; j++) {
					S_AXIS >> in;
					weights_3_pos[i][j] = in.data;				}
			}
			loadbias0_pos:for (int i = 0; i < POS_LAYER1_W; i++) {
				S_AXIS >> in;
				bias_0_pos[i] = in.data;
			}
			loadbias1_pos:for (int i = 0; i < POS_LAYER2_W; i++) {
				S_AXIS >> in;
				bias_1_pos[i] = in.data;
			}
			loadbias2_pos:for (int i = 0; i < POS_LAYER3_W; i++) {
				S_AXIS >> in;
				bias_2_pos[i] = in.data;
			}
			loadbias3_pos:for (int i = 0; i < POS_LAYER3_H; i++) {
				S_AXIS >> in;
				bias_3_pos[i] = in.data;
			}
			staged = 2;
		} else if (staged == 2) {
			S_AXIS >> in;
			if (in.data == 0) {
				staged = 3;
			} else {
				staged = 5;
			}
		} else if (staged == 3){
			retrieve_inputs:for (int i = 0; i < LAYER0_W; i++) {
				S_AXIS >> in;
				input[i] = in.data;
			}
			staged = 4;
		} else if (staged == 4) {
			DTYPE val;
			layer0:for (int i = 0; i < LAYER0_H; i++) {
				#pragma HLS pipeline
				dot_0.calculate(input, weights_0[i], val);
				buffer_0[i] = relu_func<DTYPE>(val + bias_0[i]);
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
				buffer_3[i] = relu_func<DTYPE>(val + bias_3[i]);
			}
			layer4:for (int i = 0; i < LAYER4_H; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_3, weights_4[i], val);
				buffer_4[i] = val + bias_4[i];
			}
			output:for (int i = 0; i < LAYER4_H; i++) {
				out.data = buffer_4[i];
				if (i == (LAYER4_H - 1)) {
					out.last = true;
				}
				M_AXIS << out;
			}
			staged = 2;
		} else if (staged == 5){
			retrieve_inputs_pos:for (int i = 0; i < LAYER0_W; i++) {
				S_AXIS >> in;
				input[i] = in.data;
			}
			staged = 6;
		} else if (staged == 6) {
			DTYPE val;
			layer0_pos:for (int i = 0; i < POS_LAYER0_H; i++) {
				#pragma HLS pipeline
				dot_0.calculate(input, weights_0_pos[i], val);
				buffer_0[i] = relu_func<DTYPE>(val + bias_0_pos[i]);
			}
			layer1_pos:for (int i = 0; i < POS_LAYER1_H; i++) {
				#pragma HLS pipeline
				dot_2.calculate(buffer_0, weights_1_pos[i], val);
				buffer_1[i] = relu_func<DTYPE>(val + bias_1_pos[i]);
			}
			layer2_pos:for (int i = 0; i < POS_LAYER2_H; i++) {
				#pragma HLS pipeline
				dot_2.calculate(buffer_1, weights_2_pos[i], val);
				buffer_2[i] = relu_func<DTYPE>(val + bias_2_pos[i]);
			}
			layer3_pos:for (int i = 0; i < POS_LAYER3_H; i++) {
				#pragma HLS pipeline
				dot_2.calculate(buffer_2, weights_3_pos[i], val);
				buffer_3[i] = val + bias_3_pos[i];
			}
			output_pos:for (int i = 0; i < POS_LAYER3_H; i++) {
				out.data = buffer_3[i];
				if (i == (POS_LAYER3_H - 1)) {
					out.last = true;
				}
				M_AXIS << out;
			}
			staged = 2;
		}
	}
}

