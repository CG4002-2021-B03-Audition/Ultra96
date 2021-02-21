#include "ap_int.h"       // Used for arbitrary precision int for c++ language
#include "hls_stream.h"
#include "ap_axi_sdata.h"

struct AXI_L {
	float data;
	bool last = false;
};

typedef hls::stream<AXI_L> stream_type;

//main
void mlp(hls::stream<AXI_L>& S_AXIS, hls::stream<AXI_L>& M_AXIS) {
//initialization
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=S_AXIS
#pragma HLS INTERFACE axis port=M_AXIS
	float weights_0[561];

	while (true) {
		AXI_L in, out;
		inputloop:for (int j = 0; j < 32; j++) {
			S_AXIS >> in;
			weights_0[j] = in.data;
		}
		outputloop:for (int j = 0; j < 32; j++) {
			out.data = weights_0[j];
			if (j == 31) {
				out.last = true;
			}
			M_AXIS << out;
		}
	}
}

