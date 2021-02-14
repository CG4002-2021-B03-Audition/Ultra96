#include "ap_axi_sdata.h" // ap_axis can also be used, but it will include all sideband signals which we don't need
#include "ap_int.h"       // Used for arbitrary precision int for c++ language
#include "ap_fixed.h"
#include "definition.h"

typedef ap_axiu<32,1,1,1> AXI_VAL; //unsigned interpretation of AXI stream. How to convert this struct to ap_fixed?

/*
 * TO-DO LIST
 * - need to change CNNIOT library to skip parameter feeding step
 *
 */

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
void cnn(AXI_VAL* in, AXI_VAL* out) {
    //initialization
    #pragma HLS INTERFACE ap_ctrl_none port=return
    #pragma HLS INTERFACE axis port=in
    #pragma HLS INTERFACE axis port=out

    while (1) {
    	//Data containers
    	//floatA_t input_data[UPPER_BOUND_INPUT], weight[UPPER_BOUND_WEIGHT], bias[UPPER_BOUND_BIAS];
    	float input_data[UPPER_BOUND_INPUT], weight[UPPER_BOUND_WEIGHT], bias[UPPER_BOUND_BIAS];

    	//Parameter declaration
    	int block;												//select convolution, pooling or fully connected
    	int flattened_height;									//size of input data, flattened into a single row
    	int data_d, data_w, data_h;                      		//input data dimensions
        int output_channel, input_channel, kernel_h, kernel_w;  //kernel parameters
        int stride_h, stride_w, padding;                 		//stride & padding related parameters
        int bias_on, relu_on;			     					//model parameters
        //floatA_t precision;
        float precision;
        int new_input, new_weight;                       		//new data markers
        int params[17];

        //Retrieve configuration info
        for (int i = 0; i < 17; i++) {
        	params[i] = axi_transfer(in, out, 0, 1);
        }

        block = params[0];

        if (block == CONV) {
        	//parameter assignment
        	flattened_height = params[1];
        	data_d = params[2];
        	data_w = params[3];
        	data_h = params[4];
        	output_channel = params[5];
        	input_channel = params[6];
        	kernel_h = params[7];
        	kernel_w = params[8];
        	stride_h = params[9];
        	stride_w = params[10];
        	//padding = params[11];
        	bias_on = params[12];
        	relu_on = params[13];
        	//precision = (floatA_t)(1/params[14]);
        	precision = 1/params[14];
        	new_input = params[15];
        	new_weight = params[16];

        	//retrieve input
        	if (new_input == 1) {
        		for (int i = 0; i < flattened_height; i++) {
        			input_data[i] = axi_transfer(in, out, 1, 0) * precision;    //can only use multiplication for ap_fixed?
        		}
        	}

        	//retrieve weight & bias
        	if (new_weight == 1) {
        		//retrieve bias
        		if (bias_on == 1) {
        			for (int i = 0; i < output_channel; i++) {
        				bias[i] = axi_transfer(in, out, 2, 0) * precision;
        			}
        		}
        		//retrieve weight
        		for (int i = 0; i < (output_channel*input_channel*kernel_h*kernel_w); i++) {
        			weight[i] = axi_transfer(in, out, 3, 0) * precision;
        		}
        	}

        	//calculate output dimensions
        	int output_w = data_w/stride_w;
        	int output_h = data_h/stride_h;
        	int output_total = data_d*output_w*output_h;

        	//Send output dimensions back
        	axi_transfer(in, out, output_total,0);
        	axi_transfer(in, out, output_h,0);
        	axi_transfer(in, out, output_w,0);

        	//ALL VARIABLES LOOP BOUNDS MUST BE DEFINED AS CONSTANTS FOR LOOP UNROLLING
        	//main convolution loop
        	//example given was very strange in structure: can you use += instead of blindly multiplying?
        	int curr_idx = 0;
        	o_channel_loop:for (int i = 0; i < output_channel; i++) {
        		int weight_channel = i*kernel_w*kernel_h*input_channel;
        		o_height_loop:for (int j = 0; j < output_h; j++) {
        			o_width_loop:for (int k = 0; k < output_w; k++) {
        				//curr_idx = (i*(output_h*output_w)) + (j*output_w) + k;  //for non sequential unrolled loop?
        				curr_idx += 1;
        				//floatA_t conv_result = 0;
        				float conv_result = 0;
        				//#pragma HLS PIPELINE II=1
        				i_channel_loop:for (int l = 0; l < input_channel; l++) {
        					int input_plane = l*data_h*data_w;
        					int weight_plane = weight_channel + l*kernel_w*kernel_h;
        					kernel_h_loop:for (int m = 0; m < kernel_h; m++) {
        						int input_row = input_plane + ((j*stride_h) + m)*data_w; 	//simulates the kernel shifting down as each row is eval
        						int weight_row = weight_plane + m*kernel_w;
        						kernel_w_loop:for (int n = 0; n < kernel_w; n++) {
        							int input_idx = input_ row + n + k*stride_w;  			//simulates the kernel shifting right as each column is eval
        							int weight_idx = weight_row + n;
        							conv_result += input[input_idx]*weight[weight_idx];
        						}
        					}
        				}
        				if (bias_on == 1) {
        					conv_result = conv_result + bias[i];
						}
        				if (relu_on == 1) {
        					conv_result = (conv_result > 0) ? conv_result : 0;
        				}
						axi_transfer(in, out, conv_result,0);
        			}
        		}
        	}

        } else if (block == POOL) {

        } else if (block == FULL) {

        }
    }

