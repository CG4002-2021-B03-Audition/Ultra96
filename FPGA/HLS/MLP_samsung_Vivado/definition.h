#include "ap_fixed.h"
#include "hls_stream.h"

#define FLOAT_WIDTH 16
#define INT_WIDTH 4

typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;
typedef float DTYPE;

#define LAYER0_W 561
#define LAYER0_H 64
#define LAYER1_W 64
#define LAYER1_H 64
#define LAYER2_W 64
#define LAYER2_H 64
#define LAYER3_W 64
#define LAYER3_H 6

struct AXI_L {
	float data;
	bool last = false;
};

typedef hls::stream<AXI_L> stream_type;
