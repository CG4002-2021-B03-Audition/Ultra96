// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct AXI_L {
        float data;
        bool last;
       } AXI_L;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "S_AXIS_V_data"
#define AUTOTB_TVIN_S_AXIS_V_data  "../tv/cdatafile/c.mlp.autotvin_S_AXIS_V_data.dat"
#define WRAPC_STREAM_SIZE_IN_S_AXIS_V_data  "../tv/stream_size/stream_size_in_S_AXIS_V_data.dat"
#define WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data  "../tv/stream_size/stream_ingress_status_S_AXIS_V_data.dat"
// wrapc file define: "S_AXIS_V_last"
#define AUTOTB_TVIN_S_AXIS_V_last  "../tv/cdatafile/c.mlp.autotvin_S_AXIS_V_last.dat"
#define WRAPC_STREAM_SIZE_IN_S_AXIS_V_last  "../tv/stream_size/stream_size_in_S_AXIS_V_last.dat"
#define WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last  "../tv/stream_size/stream_ingress_status_S_AXIS_V_last.dat"
// wrapc file define: "M_AXIS_V_data"
#define AUTOTB_TVOUT_M_AXIS_V_data  "../tv/cdatafile/c.mlp.autotvout_M_AXIS_V_data.dat"
#define AUTOTB_TVIN_M_AXIS_V_data  "../tv/cdatafile/c.mlp.autotvin_M_AXIS_V_data.dat"
#define WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data  "../tv/stream_size/stream_size_out_M_AXIS_V_data.dat"
#define WRAPC_STREAM_EGRESS_STATUS_M_AXIS_V_data  "../tv/stream_size/stream_egress_status_M_AXIS_V_data.dat"
// wrapc file define: "M_AXIS_V_last"
#define AUTOTB_TVOUT_M_AXIS_V_last  "../tv/cdatafile/c.mlp.autotvout_M_AXIS_V_last.dat"
#define AUTOTB_TVIN_M_AXIS_V_last  "../tv/cdatafile/c.mlp.autotvin_M_AXIS_V_last.dat"
#define WRAPC_STREAM_SIZE_OUT_M_AXIS_V_last  "../tv/stream_size/stream_size_out_M_AXIS_V_last.dat"
#define WRAPC_STREAM_EGRESS_STATUS_M_AXIS_V_last  "../tv/stream_size/stream_egress_status_M_AXIS_V_last.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "M_AXIS_V_data"
#define AUTOTB_TVOUT_PC_M_AXIS_V_data  "../tv/rtldatafile/rtl.mlp.autotvout_M_AXIS_V_data.dat"
// tvout file define: "M_AXIS_V_last"
#define AUTOTB_TVOUT_PC_M_AXIS_V_last  "../tv/rtldatafile/rtl.mlp.autotvout_M_AXIS_V_last.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			S_AXIS_V_data_depth = 0;
			S_AXIS_V_last_depth = 0;
			M_AXIS_V_data_depth = 0;
			M_AXIS_V_last_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{S_AXIS_V_data " << S_AXIS_V_data_depth << "}\n";
			total_list << "{S_AXIS_V_last " << S_AXIS_V_last_depth << "}\n";
			total_list << "{M_AXIS_V_data " << M_AXIS_V_data_depth << "}\n";
			total_list << "{M_AXIS_V_last " << M_AXIS_V_last_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int S_AXIS_V_data_depth;
		int S_AXIS_V_last_depth;
		int M_AXIS_V_data_depth;
		int M_AXIS_V_last_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void mlp (
hls::stream<AXI_L > (&S_AXIS),
hls::stream<AXI_L > (&M_AXIS));

void AESL_WRAP_mlp (
hls::stream<AXI_L > (&S_AXIS),
hls::stream<AXI_L > (&M_AXIS))
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		// pop stream input: "S_AXIS"
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, AESL_token); // pop_size
			int aesl_tmp_1 = atoi(AESL_token.c_str());
			for (int i = 0; i < aesl_tmp_1; i++)
			{
				S_AXIS.read();
			}
			aesl_fh.read(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, AESL_token); // [[/transaction]]
		}

		// define output stream variables: "M_AXIS"
		std::vector<AXI_L > aesl_tmp_3;
		int aesl_tmp_4;
		int aesl_tmp_5 = 0;

		// read output stream size: "M_AXIS"
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, AESL_token); // [[transaction]]
		aesl_fh.read(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, AESL_token); // pop_size
			aesl_tmp_4 = atoi(AESL_token.c_str());
			aesl_fh.read(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, AESL_token); // [[/transaction]]
		}

		// output port post check: "M_AXIS_V_data"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_data, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_data, AESL_token); // data

			std::vector<sc_bv<32> > M_AXIS_V_data_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_AXIS_V_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_AXIS_V_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					M_AXIS_V_data_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_data, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_AXIS_V_data))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					AXI_L tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_AXIS_V_data
				{
					// bitslice(31, 0)
					// {
						// celement: M_AXIS.V.data(31, 0)
						// {
							sc_lv<32>* M_AXIS_V_data_lv0_0_0_1_lv1_0_0_1 = new sc_lv<32>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M_AXIS.V.data(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										M_AXIS_V_data_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(31, 0) = sc_bv<32>(M_AXIS_V_data_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M_AXIS.V.data(31, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].data
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].data
									// output_left_conversion : *(int*)&aesl_tmp_3[i_0].data
									// output_type_conversion : (M_AXIS_V_data_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64()
									if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
									{
										*(int*)&aesl_tmp_3[i_0].data = (M_AXIS_V_data_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// output port post check: "M_AXIS_V_last"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_last, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_last, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_last, AESL_token); // data

			std::vector<sc_bv<1> > M_AXIS_V_last_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_AXIS_V_last', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_AXIS_V_last', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					M_AXIS_V_last_pc_buffer.push_back(AESL_token.c_str());
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_AXIS_V_last, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_AXIS_V_last))
				{
					exit(1);
				}
			}

			// correct the buffer size the current transaction
			if (i != aesl_tmp_4)
			{
				aesl_tmp_4 = i;
			}

			if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4)
			{
				int aesl_tmp_3_size = aesl_tmp_3.size();

				for (int tmp_aesl_tmp_3 = 0; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size; tmp_aesl_tmp_3++)
				{
					AXI_L tmp;
					aesl_tmp_3.push_back(tmp);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_AXIS_V_last
				{
					// bitslice(0, 0)
					// {
						// celement: M_AXIS.V.last(0, 0)
						// {
							sc_lv<1>* M_AXIS_V_last_lv0_0_0_1_lv1_0_0_1 = new sc_lv<1>[aesl_tmp_4 - aesl_tmp_5];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: M_AXIS.V.last(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										M_AXIS_V_last_lv0_0_0_1_lv1_0_0_1[hls_map_index].range(0, 0) = sc_bv<1>(M_AXIS_V_last_pc_buffer[hls_map_index].range(0, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: M_AXIS.V.last(0, 0)
						{
							// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
							for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
							{
								// carray: (0) => (0) @ (1)
								for (int i_1 = 0; i_1 <= 0; i_1 += 1)
								{
									// sub                    : i_0 i_1
									// ori_name               : aesl_tmp_3[i_0].last
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : aesl_tmp_3[0].last
									// output_left_conversion : aesl_tmp_3[i_0].last
									// output_type_conversion : (M_AXIS_V_last_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64()
									if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
									{
										aesl_tmp_3[i_0].last = (M_AXIS_V_last_lv0_0_0_1_lv1_0_0_1[hls_map_index]).to_uint64();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}
		}

		// push back output stream: "M_AXIS"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			M_AXIS.write(aesl_tmp_3[i]);
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "S_AXIS_V_data"
		char* tvin_S_AXIS_V_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_S_AXIS_V_data);
		char* wrapc_stream_size_in_S_AXIS_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data);
		char* wrapc_stream_ingress_status_S_AXIS_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data);

		// "S_AXIS_V_last"
		char* tvin_S_AXIS_V_last = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_S_AXIS_V_last);
		char* wrapc_stream_size_in_S_AXIS_V_last = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_IN_S_AXIS_V_last);
		char* wrapc_stream_ingress_status_S_AXIS_V_last = new char[50];
		aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last);

		// "M_AXIS_V_data"
		char* tvin_M_AXIS_V_data = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_AXIS_V_data);
		char* tvout_M_AXIS_V_data = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_AXIS_V_data);
		char* wrapc_stream_size_out_M_AXIS_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data);
		char* wrapc_stream_egress_status_M_AXIS_V_data = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_M_AXIS_V_data);

		// "M_AXIS_V_last"
		char* tvin_M_AXIS_V_last = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_AXIS_V_last);
		char* tvout_M_AXIS_V_last = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_AXIS_V_last);
		char* wrapc_stream_size_out_M_AXIS_V_last = new char[50];
		aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_last);
		char* wrapc_stream_egress_status_M_AXIS_V_last = new char[50];
		aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_M_AXIS_V_last);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// dump stream tvin: "S_AXIS"
		std::vector<AXI_L > aesl_tmp_0;
		int aesl_tmp_1 = 0;
		while (!S_AXIS.empty())
		{
			aesl_tmp_0.push_back(S_AXIS.read());
			aesl_tmp_1++;
		}

		// dump stream tvin: "M_AXIS"
		std::vector<AXI_L > aesl_tmp_3;
		int aesl_tmp_4 = 0;
		while (!M_AXIS.empty())
		{
			aesl_tmp_3.push_back(M_AXIS.read());
			aesl_tmp_4++;
		}

		// push back input stream: "S_AXIS"
		for (int i = 0; i < aesl_tmp_1; i++)
		{
			S_AXIS.write(aesl_tmp_0[i]);
		}

		// push back input stream: "M_AXIS"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			M_AXIS.write(aesl_tmp_3[i]);
		}

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		mlp(S_AXIS, M_AXIS);

		CodeState = DUMP_OUTPUTS;
		// record input size to tv3: "S_AXIS"
		int aesl_tmp_2 = S_AXIS.size();

		// pop output stream: "M_AXIS"
		int aesl_tmp_5 = aesl_tmp_4;
		aesl_tmp_4 = 0;
     aesl_tmp_3.clear();
		while (!M_AXIS.empty())
		{
			aesl_tmp_3.push_back(M_AXIS.read());
			aesl_tmp_4++;
		}

		// [[transaction]]
		sprintf(tvin_S_AXIS_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_S_AXIS_V_data, tvin_S_AXIS_V_data);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, tvin_S_AXIS_V_data);

		sc_bv<32>* S_AXIS_V_data_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: S_AXIS_V_data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: S_AXIS.V.data(31, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].data
							// regulate_c_name       : S_AXIS_V_data
							// input_type_conversion : *(int*)&aesl_tmp_0[i_0].data
							if (&(aesl_tmp_0[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> S_AXIS_V_data_tmp_mem;
								S_AXIS_V_data_tmp_mem = *(int*)&aesl_tmp_0[i_0].data;
								S_AXIS_V_data_tvin_wrapc_buffer[hls_map_index].range(31, 0) = S_AXIS_V_data_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_S_AXIS_V_data, "%s\n", (S_AXIS_V_data_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_S_AXIS_V_data, tvin_S_AXIS_V_data);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_S_AXIS_V_data = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, stream_ingress_size_S_AXIS_V_data.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_S_AXIS_V_data--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, stream_ingress_size_S_AXIS_V_data.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_S_AXIS_V_data = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, stream_ingress_size_S_AXIS_V_data.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.S_AXIS_V_data_depth);
		sprintf(tvin_S_AXIS_V_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_S_AXIS_V_data, tvin_S_AXIS_V_data);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_data, tvin_S_AXIS_V_data);

		// release memory allocation
		delete [] S_AXIS_V_data_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_S_AXIS_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, wrapc_stream_size_in_S_AXIS_V_data);
		sprintf(wrapc_stream_size_in_S_AXIS_V_data, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, wrapc_stream_size_in_S_AXIS_V_data);
		sprintf(wrapc_stream_size_in_S_AXIS_V_data, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_S_AXIS_V_data, wrapc_stream_size_in_S_AXIS_V_data);

		// [[transaction]]
		sprintf(tvin_S_AXIS_V_last, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_S_AXIS_V_last, tvin_S_AXIS_V_last);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, tvin_S_AXIS_V_last);

		sc_bv<1>* S_AXIS_V_last_tvin_wrapc_buffer = new sc_bv<1>[aesl_tmp_1 - aesl_tmp_2];

		// RTL Name: S_AXIS_V_last
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: S_AXIS.V.last(0, 0)
				{
					// carray: (0) => (aesl_tmp_1 - aesl_tmp_2 - 1) @ (1)
					for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_0[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_0[0].last
							// regulate_c_name       : S_AXIS_V_last
							// input_type_conversion : aesl_tmp_0[i_0].last
							if (&(aesl_tmp_0[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> S_AXIS_V_last_tmp_mem;
								S_AXIS_V_last_tmp_mem = aesl_tmp_0[i_0].last;
								S_AXIS_V_last_tvin_wrapc_buffer[hls_map_index].range(0, 0) = S_AXIS_V_last_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			sprintf(tvin_S_AXIS_V_last, "%s\n", (S_AXIS_V_last_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_S_AXIS_V_last, tvin_S_AXIS_V_last);
		}

		// dump stream ingress status to file
     if (aesl_tmp_1 > aesl_tmp_2)
     {
		sc_int<32> stream_ingress_size_S_AXIS_V_last = aesl_tmp_1;
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, stream_ingress_size_S_AXIS_V_last.to_string().c_str());
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, "\n");

		for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2; i++)
		{
			stream_ingress_size_S_AXIS_V_last--;
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, stream_ingress_size_S_AXIS_V_last.to_string().c_str());
			aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, "\n");
		}
     }
     else {
		    sc_int<32> stream_ingress_size_S_AXIS_V_last = 0;
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, stream_ingress_size_S_AXIS_V_last.to_string().c_str());
		    aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, "\n");
     }

		tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2, &tcl_file.S_AXIS_V_last_depth);
		sprintf(tvin_S_AXIS_V_last, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_S_AXIS_V_last, tvin_S_AXIS_V_last);
		aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_S_AXIS_V_last, tvin_S_AXIS_V_last);

		// release memory allocation
		delete [] S_AXIS_V_last_tvin_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_in_S_AXIS_V_last, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_S_AXIS_V_last, wrapc_stream_size_in_S_AXIS_V_last);
		sprintf(wrapc_stream_size_in_S_AXIS_V_last, "%d\n", aesl_tmp_1 - aesl_tmp_2);
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_S_AXIS_V_last, wrapc_stream_size_in_S_AXIS_V_last);
		sprintf(wrapc_stream_size_in_S_AXIS_V_last, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_IN_S_AXIS_V_last, wrapc_stream_size_in_S_AXIS_V_last);

		// [[transaction]]
		sprintf(tvout_M_AXIS_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_AXIS_V_data, tvout_M_AXIS_V_data);

		sc_bv<32>* M_AXIS_V_data_tvout_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: M_AXIS_V_data
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M_AXIS.V.data(31, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].data
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].data
							// regulate_c_name       : M_AXIS_V_data
							// input_type_conversion : *(int*)&aesl_tmp_3[i_0].data
							if (&(aesl_tmp_3[0].data) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_AXIS_V_data_tmp_mem;
								M_AXIS_V_data_tmp_mem = *(int*)&aesl_tmp_3[i_0].data;
								M_AXIS_V_data_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_AXIS_V_data_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_M_AXIS_V_data, "%s\n", (M_AXIS_V_data_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_AXIS_V_data, tvout_M_AXIS_V_data);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.M_AXIS_V_data_depth);
		sprintf(tvout_M_AXIS_V_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_AXIS_V_data, tvout_M_AXIS_V_data);

		// release memory allocation
		delete [] M_AXIS_V_data_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_M_AXIS_V_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, wrapc_stream_size_out_M_AXIS_V_data);
		sprintf(wrapc_stream_size_out_M_AXIS_V_data, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, wrapc_stream_size_out_M_AXIS_V_data);
		sprintf(wrapc_stream_size_out_M_AXIS_V_data, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_data, wrapc_stream_size_out_M_AXIS_V_data);

		// [[transaction]]
		sprintf(tvout_M_AXIS_V_last, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_AXIS_V_last, tvout_M_AXIS_V_last);

		sc_bv<1>* M_AXIS_V_last_tvout_wrapc_buffer = new sc_bv<1>[aesl_tmp_4 - aesl_tmp_5];

		// RTL Name: M_AXIS_V_last
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: M_AXIS.V.last(0, 0)
				{
					// carray: (aesl_tmp_5) => (aesl_tmp_4 - 1) @ (1)
					for (int i_0 = aesl_tmp_5; i_0 <= aesl_tmp_4 - 1; i_0 += 1)
					{
						// carray: (0) => (0) @ (1)
						for (int i_1 = 0; i_1 <= 0; i_1 += 1)
						{
							// sub                   : i_0 i_1
							// ori_name              : aesl_tmp_3[i_0].last
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : aesl_tmp_3[0].last
							// regulate_c_name       : M_AXIS_V_last
							// input_type_conversion : aesl_tmp_3[i_0].last
							if (&(aesl_tmp_3[0].last) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<1> M_AXIS_V_last_tmp_mem;
								M_AXIS_V_last_tmp_mem = aesl_tmp_3[i_0].last;
								M_AXIS_V_last_tvout_wrapc_buffer[hls_map_index].range(0, 0) = M_AXIS_V_last_tmp_mem.range(0, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5; i++)
		{
			sprintf(tvout_M_AXIS_V_last, "%s\n", (M_AXIS_V_last_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_AXIS_V_last, tvout_M_AXIS_V_last);
		}

		tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5, &tcl_file.M_AXIS_V_last_depth);
		sprintf(tvout_M_AXIS_V_last, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_AXIS_V_last, tvout_M_AXIS_V_last);

		// release memory allocation
		delete [] M_AXIS_V_last_tvout_wrapc_buffer;

		// dump stream size
		sprintf(wrapc_stream_size_out_M_AXIS_V_last, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_last, wrapc_stream_size_out_M_AXIS_V_last);
		sprintf(wrapc_stream_size_out_M_AXIS_V_last, "%d\n", aesl_tmp_4 - aesl_tmp_5);
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_last, wrapc_stream_size_out_M_AXIS_V_last);
		sprintf(wrapc_stream_size_out_M_AXIS_V_last, "[[/transaction]] \n");
		aesl_fh.write(WRAPC_STREAM_SIZE_OUT_M_AXIS_V_last, wrapc_stream_size_out_M_AXIS_V_last);

		// push back output stream: "M_AXIS"
		for (int i = 0; i < aesl_tmp_4; i++)
		{
			M_AXIS.write(aesl_tmp_3[i]);
		}

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "S_AXIS_V_data"
		delete [] tvin_S_AXIS_V_data;
		delete [] wrapc_stream_size_in_S_AXIS_V_data;
		// release memory allocation: "S_AXIS_V_last"
		delete [] tvin_S_AXIS_V_last;
		delete [] wrapc_stream_size_in_S_AXIS_V_last;
		// release memory allocation: "M_AXIS_V_data"
		delete [] tvout_M_AXIS_V_data;
		delete [] tvin_M_AXIS_V_data;
		delete [] wrapc_stream_size_out_M_AXIS_V_data;
		// release memory allocation: "M_AXIS_V_last"
		delete [] tvout_M_AXIS_V_last;
		delete [] tvin_M_AXIS_V_last;
		delete [] wrapc_stream_size_out_M_AXIS_V_last;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

