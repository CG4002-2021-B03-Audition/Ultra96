#include "ap_fixed.h"

#define FLOAT_WIDTH 24
#define INT_WIDTH 4

//minimum possible matrix size for implementation of all layers
#define UPPER_BOUND_INPUT 30000
#define UPPER_BOUND_WEIGHT 30000
#define UPPER_BOUND_BIAS 2000

//block selector variables
#define CONV 0
#define POOL 1
#define FULL 2

typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;

floatA_t relu_func(floatA_t a) {
	if (a > (floatA_t)0) {
		return a;
	} else {
		return (floatA_t)0;
	}
}