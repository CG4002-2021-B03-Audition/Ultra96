#include "ap_fixed.h"

template <class T, int size_in, int offset> class dot {
public:
	T a_int[size_in],b_int[size_in];
	dot() {
	}
	void calculate(T a[size_in], T b[size_in], T &out) {
		#pragma HLS array_partition variable=a_int complete
		#pragma HLS array_partition variable=b_int complete
		T product = 0;

		for(int i = 0; i < size_in; i++) {
			#pragma HLS pipeline
			a_int[i] = a[i+offset];
		}
		for(int i = 0; i < size_in; i++) {
			#pragma HLS pipeline
			b_int[i] = b[i+offset];
		}

		for(int i = 0; i < size_in; i++) {
			#pragma HLS unroll
			product += a_int[i] * b_int[i];
		}
		out = product;
	}
};

template <class T>
T relu_func(T a) {
	if (a > 0) {
		return a;
	} else {
		return 0;
	}
};
/*
template <class T, int size, int width, int height> class conv {
private:
	#pragma HLS array_partition variable=a_int complete
	#pragma HLS array_partition variable=weights complete
	T a_int[size][size];
	T weights[width][height][size][size];
public:
	conv() {
	}
	void loadWeights(T input_weights[width][height][size][size]) {
		#pragma HLS pipeline
		#pragma HLS unroll
		for (int i = 0; i < width; i++) {
			for (int j = 0; j < height; j++) {
				for (int k = 0; k < size; k++) {
					for (int l = 0; l < size; l++) {
						weights[i][j][k][l] = input_weights[i][j][k][l];
					}
				}
			}
		}
	}
	void calculate(T (&a)[height], T (&b)[height]) {
		#pragma HLS pipeline
		#pragma HLS unroll
		for (int x = 0; x < width - size + 1; x++) {
			for (int y = 0; y < height - size + 1; y++) {
				T value = 0;
				for (int i = x; i < size; i++) {
					for (int j = y; j < size; j++) {
						value += a_int[i][j] * weights[x][y][i][j];
					}
				}
				b[x][y] = value;
			}
		}
	}
};
*/

