#include "ap_axi_sdata.h" // ap_axis can also be used, but it will include all sideband signals which we don't need
#include "ap_int.h"       // Used for arbitrary precision int for c++ language
#include "ap_fixed.h"
#include "definition.h"
#include "hls_stream.h"

struct AXI_L {
	float data;
	bool last;
};

typedef hls::stream<AXI_L> stream_type;
/*
#define N 8
void dot(int a[N], int b[N], int &out) {
	int a_int[N],b_int[N];
	#pragma HLS array_partition  variable=a_int dim=1 complete
	#pragma HLS array_partition  variable=b_int dim=1 complete
  	int product = 0;

  	for (int i = 0; i < N; i++) {
  		#pragma HLS pipeline
  		a_int[i] = a[i];
  	}
  	for (int i = 0; i < N; i++) {
		#pragma HLS pipeline
  		b_int[i] = b[i];
  	}

  	for (int i = 0; i < N; i++) {
		#pragma HLS unroll
  		product += a_int[i] * b_int[i];
  	}
  	out = product;
}
*/
//main
void mlp(stream_type& S_AXIS, stream_type& M_AXIS) {
    //initialization
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE axis port=S_AXIS
    #pragma HLS INTERFACE axis port=M_AXIS
	float weights_0[561], bias[64+64+6];

    while (1) {
    	AXI_L in, out;
    	for (int j = 0; j < 561; j++) {
			in = S_AXIS.read();
			weights_0[j] = in.data;
    	}
    	for (int j = 0; j < 560; j++) {
			out.data = weights_0[j];
			M_AXIS.write(out);
		}
		out.data = weights_0[560];
		out.last = 1;
		M_AXIS.write(out);

    }
}

