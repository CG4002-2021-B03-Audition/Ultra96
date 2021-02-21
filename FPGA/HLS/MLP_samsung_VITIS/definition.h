#include "ap_fixed.h"

#define FLOAT_WIDTH 12
#define INT_WIDTH 4

#define IN false
#define OUT true

typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;

float relu_func(float a) {
	if (a > 0) {
		return a;
	} else {
		return 0;
	}
}
