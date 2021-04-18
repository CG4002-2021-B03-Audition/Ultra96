#include "mlp_dance3.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void mlp_dance3::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"S_AXIS_TDATA\" :  \"" << S_AXIS_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"S_AXIS_TVALID\" :  \"" << S_AXIS_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"S_AXIS_TREADY\" :  \"" << S_AXIS_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"S_AXIS_TLAST\" :  \"" << S_AXIS_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"M_AXIS_TDATA\" :  \"" << M_AXIS_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"M_AXIS_TVALID\" :  \"" << M_AXIS_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"M_AXIS_TREADY\" :  \"" << M_AXIS_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"M_AXIS_TLAST\" :  \"" << M_AXIS_TLAST.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

