#include "ap_fixed.h"

#define FLOAT_WIDTH 24
#define INT_WIDTH 4

typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;

floatA_t relu_func(floatA_t a) {
	if (a > (floatA_t)0) {
		return a;
	} else {
		return (floatA_t)0;
	}
}
