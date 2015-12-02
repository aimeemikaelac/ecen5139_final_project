// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================


#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;




   #define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.runQueue.autotvout_ap_return.dat"
   #define INTER_TCL  "../tv/cdatafile/ref.tcl"

   #define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.runQueue.autotvout_ap_return.dat"

class INTER_TCL_FILE {
    public:
//functions
        INTER_TCL_FILE(const char* name) {
            mName = name;
            ap_return_depth = 0;
            trans_num =0;
        }
        ~INTER_TCL_FILE() {
            mFile.open(mName);
            if (!mFile.good() ) {
                cout<<"Failed to open file ref.tcl."<<endl;
                exit (1);
            }
            string total_list = get_depth_list();
            mFile<<"set depth_list {\n";
            mFile<<total_list; 
            mFile<<"}\n";
            mFile<<"set trans_num "<<trans_num<<endl;
            mFile.close();
        }
        string get_depth_list () {
            stringstream total_list;
            total_list<<"   {ap_return "<< ap_return_depth << "}\n";
            return total_list.str();
        }
        void set_num (int num , int* class_num) {
            (*class_num) = (*class_num) > num ? (*class_num) : num;
        }
    public:
//variables
        int ap_return_depth;
        int trans_num;
    private:
        ofstream mFile;
        const char* mName;
};

#define runQueue AESL_ORIG_DUT_runQueue
extern bool runQueue ();
#undef runQueue
bool runQueue () {

    fstream wrapc_switch_file_token;

    wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");

    int AESL_i;

    if (wrapc_switch_file_token.good()) {

        static unsigned AESL_transaction_pc;

        string AESL_token;

        string AESL_num;

        static AESL_FILE_HANDLER aesl_fh;

        bool AESL_return;

        aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); //data

            sc_bv<1> ap_return_pc_buffer;

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    ap_return_pc_buffer = AESL_token.c_str();

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return)) {

                   exit(1);

                }

            }

            if (i > 0) {

                AESL_i = 0; //subscript for rtl array

                AESL_return = (sc_bv<1>(ap_return_pc_buffer.range(0, 0))).to_uint64();

                AESL_i++;

                }

        }

        AESL_transaction_pc ++ ;

        return AESL_return;

    } else {

        static unsigned AESL_transaction;

        static AESL_FILE_HANDLER aesl_fh;

        char* tvout_ap_return = new char[50];

        static INTER_TCL_FILE tcl_file(INTER_TCL);


        int leading_zero;

        bool AESL_return = AESL_ORIG_DUT_runQueue();

        sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

        sc_bv<1> ap_return_tvout_wrapc_buffer;

        AESL_i = 0; //subscript for rtl array

        ap_return_tvout_wrapc_buffer.range(0, 0) = AESL_return;

        AESL_i++;

        for (int i = 0; i < 1 ; i++) {

            sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

        }

        tcl_file.set_num(1,&tcl_file.ap_return_depth);

        sprintf(tvout_ap_return, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

        delete [] tvout_ap_return;

        AESL_transaction++;

        tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

        return AESL_return;

    }
}


