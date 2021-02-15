#include "ap_axi_sdata.h" // ap_axis can also be used, but it will include all sideband signals which we don't need
#include "ap_int.h"       // Used for arbitrary precision int for c++ language
#include "ap_fixed.h"
#include "definition.h"

typedef ap_axiu<32,1,1,1> AXI_VAL; //unsigned interpretation of AXI stream. How to convert this struct to ap_fixed?

int axi_transfer(AXI_VAL* in, AXI_VAL* out, int value, int loop) {   //this function is used to interface with i/o stream
    //loop variable appears to be to denote write to output (0) vs no write to output within loop (1)
	int temp;
    temp = in->data;      //input data read here
    if (loop == 1) {
        out->data = temp;  
    } else {
        out->data = value;
        out->dest = in->dest;
        out->id = in->id;
        out->keep = in->keep;
        out->last = in->last;
        out->strb = in->strb;
        out->user = in->user;
    }
    return temp;
}

//main
void mlp(AXI_VAL* in, AXI_VAL* out) {
    //initialization
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE axis port=in
    #pragma HLS INTERFACE axis port=out
	int new_input;
	int new_weight;
	floatA_t weights_1[561 + 64 + 64][64], weights_2[64][6], bias[64 + 64 + 64 + 6];

    while (1) {              //consider parallel acceleration of multiple inputs at once?
    	//Data containers
    	floatA_t buffer_1[64];
    	floatA_t buffer_2[64];
    	floatA_t buffer_3[64];
    	floatA_t buffer_4[6];

    	int params[2];

    	for (int i = 0; i < 2; i++) {
			params[i] = axi_transfer(in, out, 0, 1);
		}

    	new_input = params[0];
    	new_weight = params[1];

    	if (new_weight == 1) {
    		//load weights
			for (int i = 0; i < 561 + 64 + 64; i++) {
				for (int j = 0; j < 64; j++) {
					weights_1[i][j] = axi_transfer(in, out, 2, 0);

				}
			}
			for (int i = 0; i < 64; i++) {
				for (int j = 0; j < 6; j++) {
					weights_2[i][j] = axi_transfer(in, out, 2, 0);
				}
			}
			//load bias
			for (int i = 0; i < 64 + 64 + 64 + 6; i++) {
				bias[i] = axi_transfer(in, out, 2, 0);
			}
		}


    	if (new_input == 1) {
			layer1_loop:for (int k = 0; k < 64; k++) {
				for (int l = 0; l < 561; l++) {
					buffer_1[k] += axi_transfer(in, out, 1, 0) * weights_1[l][k];
				}
				buffer_1[k] += bias[k];
			}

			layer2_loop:for (int k = 0; k < 64; k++) {
				for (int l = 0; l < 64; l++) {
					buffer_2[k] += buffer_1[l] * weights_1[561 + l][k];
				}
				buffer_2[k] += bias[64 + k];
			}
			layer3_loop:for (int m = 0; m < 64; m++) {
				for (int n = 0; n < 64; n++) {
					buffer_3[m] += buffer_2[n] * weights_1[561 + 64 + n][m];
				}
				buffer_3[m] += bias[64 + 64 + m];
			}

			layer4_loop:for (int o = 0; o < 6; o++) {
				for (int p = 0; p < 64; p++) {
					buffer_4[o] += buffer_3[p] * weights_2[p][o];
				}
			}
			layer4_bias:for (int i = 0; i < 6; i++) {
				buffer_4[i] += bias[64 + 64 + i];
				axi_transfer(in, out, buffer_4[i],0);;
			}
    	}
    }
}

