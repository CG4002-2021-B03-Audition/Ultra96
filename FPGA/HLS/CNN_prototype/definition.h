#include "ap_fixed.h"
#include "hls_stream.h"

#define FLOAT_WIDTH 16
#define INT_WIDTH 4

typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;
typedef float DTYPE;

#define LAYER0_W 100
#define LAYER0_H 128
#define LAYER1_W 128
#define LAYER1_H 128
#define LAYER2_W 128
#define LAYER2_H 128
#define LAYER3_W 128
#define LAYER3_H 128
#define LAYER4_W 128
#define LAYER4_H 12

#define POS_LAYER0_W 100
#define POS_LAYER0_H 32
#define POS_LAYER1_W 32
#define POS_LAYER1_H 32
#define POS_LAYER2_W 32
#define POS_LAYER2_H 32
#define POS_LAYER3_W 32
#define POS_LAYER3_H 3

struct AXI_L {
	float data;
	bool last = false;
};

typedef hls::stream<AXI_L> stream_type;
