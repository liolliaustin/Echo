// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Echo_HH_
#define _Echo_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Echo_fadd_32ns_32bkb.h"
#include "Echo_fptrunc_64nscud.h"
#include "Echo_fpext_32ns_6dEe.h"
#include "Echo_dadd_64ns_64eOg.h"
#include "Echo_dmul_64ns_64fYi.h"
#include "Echo_sitodp_32ns_g8j.h"
#include "Echo_buffer_r.h"
#include "Echo_CTRL_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_CTRL_BUS_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_CTRL_BUS_DATA_WIDTH = 32>
struct Echo : public sc_module {
    // Port declarations 29
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > change_V_TDATA;
    sc_in< sc_logic > change_V_TVALID;
    sc_out< sc_logic > change_V_TREADY;
    sc_in< sc_lv<32> > value_in_V_TDATA;
    sc_in< sc_logic > value_in_V_TVALID;
    sc_out< sc_logic > value_in_V_TREADY;
    sc_out< sc_lv<32> > value_out_V_TDATA;
    sc_out< sc_logic > value_out_V_TVALID;
    sc_in< sc_logic > value_out_V_TREADY;
    sc_in< sc_lv<32> > scale;
    sc_in< sc_logic > s_axi_CTRL_BUS_AWVALID;
    sc_out< sc_logic > s_axi_CTRL_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_ADDR_WIDTH> > s_axi_CTRL_BUS_AWADDR;
    sc_in< sc_logic > s_axi_CTRL_BUS_WVALID;
    sc_out< sc_logic > s_axi_CTRL_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_DATA_WIDTH> > s_axi_CTRL_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_DATA_WIDTH/8> > s_axi_CTRL_BUS_WSTRB;
    sc_in< sc_logic > s_axi_CTRL_BUS_ARVALID;
    sc_out< sc_logic > s_axi_CTRL_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_CTRL_BUS_ADDR_WIDTH> > s_axi_CTRL_BUS_ARADDR;
    sc_out< sc_logic > s_axi_CTRL_BUS_RVALID;
    sc_in< sc_logic > s_axi_CTRL_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_CTRL_BUS_DATA_WIDTH> > s_axi_CTRL_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_CTRL_BUS_RRESP;
    sc_out< sc_logic > s_axi_CTRL_BUS_BVALID;
    sc_in< sc_logic > s_axi_CTRL_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_CTRL_BUS_BRESP;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Echo(sc_module_name name);
    SC_HAS_PROCESS(Echo);

    ~Echo();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Echo_buffer_r* buffer_r_U;
    Echo_CTRL_BUS_s_axi<C_S_AXI_CTRL_BUS_ADDR_WIDTH,C_S_AXI_CTRL_BUS_DATA_WIDTH>* Echo_CTRL_BUS_s_axi_U;
    Echo_fadd_32ns_32bkb<1,5,32,32,32>* Echo_fadd_32ns_32bkb_U1;
    Echo_fptrunc_64nscud<1,1,64,32>* Echo_fptrunc_64nscud_U2;
    Echo_fpext_32ns_6dEe<1,1,32,64>* Echo_fpext_32ns_6dEe_U3;
    Echo_fpext_32ns_6dEe<1,1,32,64>* Echo_fpext_32ns_6dEe_U4;
    Echo_dadd_64ns_64eOg<1,5,64,64,64>* Echo_dadd_64ns_64eOg_U5;
    Echo_dmul_64ns_64fYi<1,6,64,64,64>* Echo_dmul_64ns_64fYi_U6;
    Echo_dmul_64ns_64fYi<1,6,64,64,64>* Echo_dmul_64ns_64fYi_U7;
    Echo_sitodp_32ns_g8j<1,6,32,64>* Echo_sitodp_32ns_g8j_U8;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<32> > change_V_0_data_out;
    sc_signal< sc_logic > change_V_0_vld_in;
    sc_signal< sc_logic > change_V_0_vld_out;
    sc_signal< sc_logic > change_V_0_ack_in;
    sc_signal< sc_logic > change_V_0_ack_out;
    sc_signal< sc_lv<32> > change_V_0_payload_A;
    sc_signal< sc_lv<32> > change_V_0_payload_B;
    sc_signal< sc_logic > change_V_0_sel_rd;
    sc_signal< sc_logic > change_V_0_sel_wr;
    sc_signal< sc_logic > change_V_0_sel;
    sc_signal< sc_logic > change_V_0_load_A;
    sc_signal< sc_logic > change_V_0_load_B;
    sc_signal< sc_lv<2> > change_V_0_state;
    sc_signal< sc_logic > change_V_0_state_cmp_full;
    sc_signal< sc_lv<32> > value_in_V_0_data_out;
    sc_signal< sc_logic > value_in_V_0_vld_in;
    sc_signal< sc_logic > value_in_V_0_vld_out;
    sc_signal< sc_logic > value_in_V_0_ack_in;
    sc_signal< sc_logic > value_in_V_0_ack_out;
    sc_signal< sc_lv<32> > value_in_V_0_payload_A;
    sc_signal< sc_lv<32> > value_in_V_0_payload_B;
    sc_signal< sc_logic > value_in_V_0_sel_rd;
    sc_signal< sc_logic > value_in_V_0_sel_wr;
    sc_signal< sc_logic > value_in_V_0_sel;
    sc_signal< sc_logic > value_in_V_0_load_A;
    sc_signal< sc_logic > value_in_V_0_load_B;
    sc_signal< sc_lv<2> > value_in_V_0_state;
    sc_signal< sc_logic > value_in_V_0_state_cmp_full;
    sc_signal< sc_lv<32> > value_out_V_1_data_out;
    sc_signal< sc_logic > value_out_V_1_vld_in;
    sc_signal< sc_logic > value_out_V_1_vld_out;
    sc_signal< sc_logic > value_out_V_1_ack_in;
    sc_signal< sc_logic > value_out_V_1_ack_out;
    sc_signal< sc_lv<32> > value_out_V_1_payload_A;
    sc_signal< sc_lv<32> > value_out_V_1_payload_B;
    sc_signal< sc_logic > value_out_V_1_sel_rd;
    sc_signal< sc_logic > value_out_V_1_sel_wr;
    sc_signal< sc_logic > value_out_V_1_sel;
    sc_signal< sc_logic > value_out_V_1_load_A;
    sc_signal< sc_logic > value_out_V_1_load_B;
    sc_signal< sc_lv<2> > value_out_V_1_state;
    sc_signal< sc_logic > value_out_V_1_state_cmp_full;
    sc_signal< sc_lv<32> > delay;
    sc_signal< sc_lv<32> > delayCount;
    sc_signal< sc_lv<32> > readBuffer1;
    sc_signal< sc_lv<32> > readBuffer2;
    sc_signal< sc_lv<32> > readBuffer3;
    sc_signal< sc_lv<32> > readBuffer4;
    sc_signal< sc_lv<32> > writeBuffer;
    sc_signal< sc_lv<16> > buffer_r_address0;
    sc_signal< sc_logic > buffer_r_ce0;
    sc_signal< sc_lv<32> > buffer_r_q0;
    sc_signal< sc_lv<16> > buffer_r_address1;
    sc_signal< sc_logic > buffer_r_ce1;
    sc_signal< sc_logic > buffer_r_we1;
    sc_signal< sc_lv<32> > buffer_r_q1;
    sc_signal< sc_logic > change_V_TDATA_blk_n;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_pp0_stage1_flag00000000;
    sc_signal< sc_logic > value_in_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage3_flag00000000;
    sc_signal< sc_lv<1> > tmp_2_reg_896;
    sc_signal< sc_logic > value_out_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage2_flag00000000;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state25_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state29_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state33_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state37_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state41_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state45_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state49_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state53_pp0_stage0_iter13;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<32> > tmp_6_reg_190;
    sc_signal< sc_lv<32> > reg_235;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state2_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state10_pp0_stage1_iter2;
    sc_signal< bool > ap_block_state14_pp0_stage1_iter3;
    sc_signal< bool > ap_block_state18_pp0_stage1_iter4;
    sc_signal< bool > ap_block_state22_pp0_stage1_iter5;
    sc_signal< bool > ap_block_state26_pp0_stage1_iter6;
    sc_signal< bool > ap_block_state30_pp0_stage1_iter7;
    sc_signal< bool > ap_block_state34_pp0_stage1_iter8;
    sc_signal< bool > ap_block_state38_pp0_stage1_iter9;
    sc_signal< bool > ap_block_state42_pp0_stage1_iter10;
    sc_signal< bool > ap_block_state46_pp0_stage1_iter11;
    sc_signal< bool > ap_block_state50_pp0_stage1_iter12;
    sc_signal< bool > ap_block_state54_pp0_stage1_iter13;
    sc_signal< bool > ap_block_pp0_stage1_flag00011001;
    sc_signal< bool > ap_block_state3_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state11_pp0_stage2_iter2;
    sc_signal< bool > ap_block_state15_pp0_stage2_iter3;
    sc_signal< bool > ap_block_state19_pp0_stage2_iter4;
    sc_signal< bool > ap_block_state23_pp0_stage2_iter5;
    sc_signal< bool > ap_block_state27_pp0_stage2_iter6;
    sc_signal< bool > ap_block_state31_pp0_stage2_iter7;
    sc_signal< bool > ap_block_state35_pp0_stage2_iter8;
    sc_signal< bool > ap_block_state39_pp0_stage2_iter9;
    sc_signal< bool > ap_block_state43_pp0_stage2_iter10;
    sc_signal< bool > ap_block_state47_pp0_stage2_iter11;
    sc_signal< bool > ap_block_state51_pp0_stage2_iter12;
    sc_signal< bool > ap_block_state55_pp0_stage2_iter13;
    sc_signal< bool > ap_block_pp0_stage2_flag00011001;
    sc_signal< sc_lv<1> > tmp_26_reg_995;
    sc_signal< sc_lv<32> > reg_240;
    sc_signal< sc_lv<64> > grp_fu_214_p2;
    sc_signal< sc_lv<64> > reg_246;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_lv<1> > tmp_8_reg_949;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_tmp_8_reg_949;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_lv<1> > tmp_16_reg_972;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_tmp_16_reg_972;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter8_tmp_26_reg_995;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< bool > ap_block_state4_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage3_iter1;
    sc_signal< bool > ap_block_state12_pp0_stage3_iter2;
    sc_signal< bool > ap_block_state16_pp0_stage3_iter3;
    sc_signal< bool > ap_block_state20_pp0_stage3_iter4;
    sc_signal< bool > ap_block_state24_pp0_stage3_iter5;
    sc_signal< bool > ap_block_state28_pp0_stage3_iter6;
    sc_signal< bool > ap_block_state32_pp0_stage3_iter7;
    sc_signal< bool > ap_block_state36_pp0_stage3_iter8;
    sc_signal< bool > ap_block_state40_pp0_stage3_iter9;
    sc_signal< bool > ap_block_state44_pp0_stage3_iter10;
    sc_signal< bool > ap_block_state48_pp0_stage3_iter11;
    sc_signal< bool > ap_block_state52_pp0_stage3_iter12;
    sc_signal< bool > ap_block_pp0_stage3_flag00011001;
    sc_signal< sc_lv<1> > tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter11_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter11_sel_tmp_reg_1046;
    sc_signal< sc_lv<32> > delay_read_reg_871;
    sc_signal< sc_lv<1> > tmp_1_fu_251_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_879;
    sc_signal< sc_lv<32> > writeBuffer_load_s_fu_261_p3;
    sc_signal< sc_lv<32> > writeBuffer_load_s_reg_889;
    sc_signal< sc_lv<1> > tmp_2_fu_269_p2;
    sc_signal< sc_lv<1> > not_tmp_1_fu_279_p2;
    sc_signal< sc_lv<1> > not_tmp_1_reg_900;
    sc_signal< sc_lv<32> > readBuffer3_load_s_fu_284_p3;
    sc_signal< sc_lv<32> > readBuffer3_load_s_reg_916;
    sc_signal< sc_lv<32> > tmp_5_fu_295_p2;
    sc_signal< sc_lv<32> > delayCount_load_s_fu_312_p3;
    sc_signal< sc_lv<32> > delayCount_load_s_reg_930;
    sc_signal< sc_lv<1> > tmp_7_fu_333_p2;
    sc_signal< sc_lv<1> > tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter8_tmp_7_reg_936;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter9_tmp_7_reg_936;
    sc_signal< sc_lv<1> > tmp_8_fu_344_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_8_reg_949;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_8_reg_949;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_tmp_8_reg_949;
    sc_signal< sc_lv<32> > tmp_13_fu_355_p2;
    sc_signal< sc_lv<32> > tmp_13_reg_961;
    sc_signal< sc_lv<1> > tmp_15_fu_369_p2;
    sc_signal< sc_lv<1> > tmp_15_reg_966;
    sc_signal< sc_lv<1> > tmp_16_fu_374_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_16_reg_972;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_16_reg_972;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_tmp_16_reg_972;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_tmp_16_reg_972;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_tmp_16_reg_972;
    sc_signal< sc_lv<32> > tmp_23_fu_385_p2;
    sc_signal< sc_lv<32> > tmp_23_reg_984;
    sc_signal< sc_lv<1> > tmp_25_fu_399_p2;
    sc_signal< sc_lv<1> > tmp_25_reg_989;
    sc_signal< sc_lv<1> > tmp_26_fu_404_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_26_reg_995;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_26_reg_995;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_tmp_26_reg_995;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_tmp_26_reg_995;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_tmp_26_reg_995;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_tmp_26_reg_995;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter9_tmp_26_reg_995;
    sc_signal< sc_lv<32> > tmp_33_fu_409_p2;
    sc_signal< sc_lv<32> > tmp_33_reg_1002;
    sc_signal< sc_lv<1> > tmp_35_fu_421_p2;
    sc_signal< sc_lv<1> > tmp_35_reg_1007;
    sc_signal< sc_lv<1> > tmp_44_fu_426_p2;
    sc_signal< sc_lv<1> > tmp_44_reg_1012;
    sc_signal< sc_lv<64> > grp_fu_231_p1;
    sc_signal< sc_lv<64> > tmp_9_reg_1025;
    sc_signal< sc_lv<1> > tmp_36_fu_495_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter8_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter9_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter10_tmp_36_reg_1036;
    sc_signal< sc_lv<1> > sel_tmp_fu_597_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter8_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter9_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter10_sel_tmp_reg_1046;
    sc_signal< sc_lv<1> > readBuffer1_flag_2_fu_603_p3;
    sc_signal< sc_lv<1> > sel_tmp3_fu_631_p2;
    sc_signal< sc_lv<1> > sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter8_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter9_sel_tmp3_reg_1055;
    sc_signal< sc_lv<1> > readBuffer2_flag_2_fu_649_p3;
    sc_signal< sc_lv<1> > sel_tmp11_fu_685_p2;
    sc_signal< sc_lv<1> > sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter5_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter6_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter7_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter8_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter9_sel_tmp11_reg_1064;
    sc_signal< sc_lv<1> > readBuffer3_flag_2_fu_711_p3;
    sc_signal< sc_lv<1> > readBuffer4_flag_2_fu_748_p3;
    sc_signal< sc_lv<64> > grp_fu_208_p1;
    sc_signal< sc_lv<64> > tmp_10_reg_1077;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter2_tmp_10_reg_1077;
    sc_signal< sc_lv<64> > grp_fu_211_p1;
    sc_signal< sc_lv<64> > tmp_19_reg_1082;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter2_tmp_19_reg_1082;
    sc_signal< sc_lv<64> > tmp_29_reg_1092;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter2_tmp_29_reg_1092;
    sc_signal< sc_lv<32> > buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter2_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter3_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter4_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter5_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter6_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter7_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter8_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter9_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter10_buffer_load_4_reg_1097;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter11_buffer_load_4_reg_1097;
    sc_signal< sc_lv<64> > tmp_39_reg_1102;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter3_tmp_39_reg_1102;
    sc_signal< sc_lv<64> > grp_fu_219_p2;
    sc_signal< sc_lv<64> > tmp_s_reg_1107;
    sc_signal< sc_lv<64> > grp_fu_224_p2;
    sc_signal< sc_lv<64> > tmp_17_reg_1112;
    sc_signal< sc_lv<64> > tmp_27_reg_1117;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<64> > tmp_37_reg_1122;
    sc_signal< sc_lv<64> > tmp_11_reg_1127;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<64> > tmp_20_reg_1132;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter5_tmp_20_reg_1132;
    sc_signal< sc_lv<64> > tmp_30_reg_1137;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter5_tmp_30_reg_1137;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter6_tmp_30_reg_1137;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter7_tmp_30_reg_1137;
    sc_signal< sc_lv<64> > tmp_40_reg_1142;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter5_tmp_40_reg_1142;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter6_tmp_40_reg_1142;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter7_tmp_40_reg_1142;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter8_tmp_40_reg_1142;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter9_tmp_40_reg_1142;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter10_tmp_40_reg_1142;
    sc_signal< sc_lv<32> > outAccumulate1_fu_817_p3;
    sc_signal< sc_lv<32> > outAccumulate1_reg_1147;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter6_outAccumulate1_reg_1147;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter7_outAccumulate1_reg_1147;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter8_outAccumulate1_reg_1147;
    sc_signal< sc_lv<64> > tmp_21_reg_1154;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_lv<32> > outAccumulate_1_fu_824_p3;
    sc_signal< sc_lv<32> > outAccumulate_1_reg_1159;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter8_outAccumulate_1_reg_1159;
    sc_signal< sc_lv<64> > tmp_31_reg_1166;
    sc_signal< sc_lv<32> > outAccumulate_2_fu_830_p3;
    sc_signal< sc_lv<32> > outAccumulate_2_reg_1171;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter10_outAccumulate_2_reg_1171;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter11_outAccumulate_2_reg_1171;
    sc_signal< sc_lv<32> > sel_tmp19_fu_847_p3;
    sc_signal< sc_lv<32> > sel_tmp19_reg_1178;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter10_sel_tmp19_reg_1178;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter11_sel_tmp19_reg_1178;
    sc_signal< sc_lv<64> > tmp_41_reg_1183;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_lv<32> > outAccumulate_7_fu_860_p3;
    sc_signal< sc_lv<32> > outAccumulate_7_reg_1188;
    sc_signal< sc_lv<32> > grp_fu_200_p2;
    sc_signal< bool > ap_block_pp0_stage3_flag00011011;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< bool > ap_block_pp0_stage2_flag00011011;
    sc_signal< sc_lv<1> > ap_phi_precharge_reg_pp0_iter0_writeBuffer_flag_1_reg_167;
    sc_signal< sc_lv<1> > ap_phi_precharge_reg_pp0_iter1_writeBuffer_flag_1_reg_167;
    sc_signal< sc_lv<1> > writeBuffer_flag_1_phi_fu_171_p4;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter0_writeBuffer_new_1_reg_179;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter1_writeBuffer_new_1_reg_179;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter0_tmp_6_reg_190;
    sc_signal< sc_lv<32> > ap_phi_precharge_reg_pp0_iter1_tmp_6_reg_190;
    sc_signal< sc_lv<64> > tmp_3_fu_291_p1;
    sc_signal< sc_lv<64> > tmp_4_fu_350_p1;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<64> > tmp_18_fu_380_p1;
    sc_signal< sc_lv<64> > tmp_28_fu_475_p1;
    sc_signal< sc_lv<64> > tmp_38_fu_501_p1;
    sc_signal< sc_lv<64> > tmp_50_fu_812_p1;
    sc_signal< sc_lv<32> > tmp_48_fu_770_p2;
    sc_signal< sc_lv<32> > readBuffer1_new_2_fu_618_p3;
    sc_signal< sc_lv<32> > readBuffer2_new_2_fu_672_p3;
    sc_signal< sc_lv<32> > readBuffer3_new_2_fu_740_p3;
    sc_signal< sc_lv<32> > readBuffer4_new_2_fu_755_p3;
    sc_signal< bool > ap_block_pp0_stage1_flag00001001;
    sc_signal< bool > ap_block_pp0_stage2_flag00001001;
    sc_signal< sc_lv<32> > grp_fu_208_p0;
    sc_signal< sc_lv<32> > grp_fu_211_p0;
    sc_signal< sc_lv<64> > grp_fu_214_p0;
    sc_signal< sc_lv<64> > grp_fu_214_p1;
    sc_signal< sc_lv<64> > grp_fu_219_p0;
    sc_signal< sc_lv<64> > grp_fu_219_p1;
    sc_signal< sc_lv<64> > grp_fu_224_p0;
    sc_signal< sc_lv<64> > grp_fu_224_p1;
    sc_signal< sc_lv<32> > readBuffer1_load_s_fu_319_p3;
    sc_signal< sc_lv<32> > tmp_14_fu_361_p3;
    sc_signal< sc_lv<32> > readBuffer2_load_s_fu_326_p3;
    sc_signal< sc_lv<32> > tmp_24_fu_391_p3;
    sc_signal< sc_lv<32> > tmp_34_fu_414_p3;
    sc_signal< sc_lv<1> > not_tmp_8_fu_443_p2;
    sc_signal< sc_lv<1> > not_tmp_s_fu_459_p2;
    sc_signal< sc_lv<1> > not_tmp_2_fu_479_p2;
    sc_signal< sc_lv<32> > readBuffer4_load_s_fu_436_p3;
    sc_signal< sc_lv<1> > readBuffer1_flag_1_fu_448_p2;
    sc_signal< sc_lv<32> > readBuffer1_new_1_fu_453_p3;
    sc_signal< sc_lv<1> > readBuffer2_flag_1_fu_464_p2;
    sc_signal< sc_lv<32> > readBuffer2_new_1_fu_469_p3;
    sc_signal< sc_lv<1> > readBuffer3_flag_1_fu_484_p2;
    sc_signal< sc_lv<32> > readBuffer3_new_1_fu_489_p3;
    sc_signal< sc_lv<1> > tmp5_fu_554_p2;
    sc_signal< sc_lv<1> > not_tmp_3_fu_512_p2;
    sc_signal< sc_lv<1> > tmp_45_fu_564_p2;
    sc_signal< sc_lv<32> > tmp_43_fu_506_p2;
    sc_signal< sc_lv<1> > tmp6_fu_593_p2;
    sc_signal< sc_lv<1> > sel_tmp9_fu_589_p2;
    sc_signal< sc_lv<1> > p_readBuffer1_flag_1_fu_518_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_583_p3;
    sc_signal< sc_lv<32> > p_readBuffer1_new_1_fu_523_p3;
    sc_signal< sc_lv<32> > sel_tmp1_fu_611_p3;
    sc_signal< sc_lv<1> > sel_tmp2_fu_626_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_636_p3;
    sc_signal< sc_lv<1> > p_readBuffer2_flag_1_fu_530_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_643_p3;
    sc_signal< sc_lv<32> > sel_tmp6_fu_657_p3;
    sc_signal< sc_lv<32> > p_readBuffer2_new_1_fu_535_p3;
    sc_signal< sc_lv<32> > sel_tmp7_fu_665_p3;
    sc_signal< sc_lv<1> > sel_tmp10_fu_680_p2;
    sc_signal< sc_lv<1> > sel_tmp12_fu_691_p3;
    sc_signal< sc_lv<1> > sel_tmp13_fu_698_p3;
    sc_signal< sc_lv<1> > p_readBuffer3_flag_1_fu_542_p2;
    sc_signal< sc_lv<1> > sel_tmp14_fu_705_p3;
    sc_signal< sc_lv<1> > tmp_46_fu_719_p2;
    sc_signal< sc_lv<32> > sel_tmp15_fu_725_p3;
    sc_signal< sc_lv<32> > p_readBuffer3_new_1_fu_547_p3;
    sc_signal< sc_lv<32> > sel_tmp16_fu_733_p3;
    sc_signal< sc_lv<1> > p_readBuffer4_flag_1_fu_558_p2;
    sc_signal< sc_lv<32> > p_readBuffer4_new_1_fu_569_p3;
    sc_signal< sc_lv<32> > p_delayCount_load_s_fu_577_p3;
    sc_signal< sc_lv<32> > tmp_47_fu_763_p3;
    sc_signal< sc_lv<32> > tmp_49_fu_806_p2;
    sc_signal< sc_lv<32> > grp_fu_205_p1;
    sc_signal< sc_lv<32> > sel_tmp17_fu_836_p3;
    sc_signal< sc_lv<32> > sel_tmp18_fu_841_p3;
    sc_signal< sc_lv<32> > outAccumulate_3_fu_854_p3;
    sc_signal< sc_logic > grp_fu_200_ce;
    sc_signal< sc_logic > grp_fu_214_ce;
    sc_signal< sc_logic > grp_fu_219_ce;
    sc_signal< sc_logic > grp_fu_224_ce;
    sc_signal< sc_logic > grp_fu_231_ce;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< bool > ap_block_pp0_stage1_flag00011011;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_822;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_pp0_stage1;
    static const sc_lv<4> ap_ST_fsm_pp0_stage2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage3;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_2;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_3FE0000000000000;
    static const sc_lv<64> ap_const_lv64_3FC0000000000000;
    static const sc_lv<64> ap_const_lv64_3FD0000000000000;
    static const sc_lv<64> ap_const_lv64_3FB0000000000000;
    static const sc_lv<32> ap_const_lv32_BB80;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_pp0_stage1_flag00000000();
    void thread_ap_block_pp0_stage1_flag00001001();
    void thread_ap_block_pp0_stage1_flag00011001();
    void thread_ap_block_pp0_stage1_flag00011011();
    void thread_ap_block_pp0_stage2_flag00000000();
    void thread_ap_block_pp0_stage2_flag00001001();
    void thread_ap_block_pp0_stage2_flag00011001();
    void thread_ap_block_pp0_stage2_flag00011011();
    void thread_ap_block_pp0_stage3_flag00000000();
    void thread_ap_block_pp0_stage3_flag00011001();
    void thread_ap_block_pp0_stage3_flag00011011();
    void thread_ap_block_state10_pp0_stage1_iter2();
    void thread_ap_block_state11_pp0_stage2_iter2();
    void thread_ap_block_state12_pp0_stage3_iter2();
    void thread_ap_block_state13_pp0_stage0_iter3();
    void thread_ap_block_state14_pp0_stage1_iter3();
    void thread_ap_block_state15_pp0_stage2_iter3();
    void thread_ap_block_state16_pp0_stage3_iter3();
    void thread_ap_block_state17_pp0_stage0_iter4();
    void thread_ap_block_state18_pp0_stage1_iter4();
    void thread_ap_block_state19_pp0_stage2_iter4();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state20_pp0_stage3_iter4();
    void thread_ap_block_state21_pp0_stage0_iter5();
    void thread_ap_block_state22_pp0_stage1_iter5();
    void thread_ap_block_state23_pp0_stage2_iter5();
    void thread_ap_block_state24_pp0_stage3_iter5();
    void thread_ap_block_state25_pp0_stage0_iter6();
    void thread_ap_block_state26_pp0_stage1_iter6();
    void thread_ap_block_state27_pp0_stage2_iter6();
    void thread_ap_block_state28_pp0_stage3_iter6();
    void thread_ap_block_state29_pp0_stage0_iter7();
    void thread_ap_block_state2_pp0_stage1_iter0();
    void thread_ap_block_state30_pp0_stage1_iter7();
    void thread_ap_block_state31_pp0_stage2_iter7();
    void thread_ap_block_state32_pp0_stage3_iter7();
    void thread_ap_block_state33_pp0_stage0_iter8();
    void thread_ap_block_state34_pp0_stage1_iter8();
    void thread_ap_block_state35_pp0_stage2_iter8();
    void thread_ap_block_state36_pp0_stage3_iter8();
    void thread_ap_block_state37_pp0_stage0_iter9();
    void thread_ap_block_state38_pp0_stage1_iter9();
    void thread_ap_block_state39_pp0_stage2_iter9();
    void thread_ap_block_state3_pp0_stage2_iter0();
    void thread_ap_block_state40_pp0_stage3_iter9();
    void thread_ap_block_state41_pp0_stage0_iter10();
    void thread_ap_block_state42_pp0_stage1_iter10();
    void thread_ap_block_state43_pp0_stage2_iter10();
    void thread_ap_block_state44_pp0_stage3_iter10();
    void thread_ap_block_state45_pp0_stage0_iter11();
    void thread_ap_block_state46_pp0_stage1_iter11();
    void thread_ap_block_state47_pp0_stage2_iter11();
    void thread_ap_block_state48_pp0_stage3_iter11();
    void thread_ap_block_state49_pp0_stage0_iter12();
    void thread_ap_block_state4_pp0_stage3_iter0();
    void thread_ap_block_state50_pp0_stage1_iter12();
    void thread_ap_block_state51_pp0_stage2_iter12();
    void thread_ap_block_state52_pp0_stage3_iter12();
    void thread_ap_block_state53_pp0_stage0_iter13();
    void thread_ap_block_state54_pp0_stage1_iter13();
    void thread_ap_block_state55_pp0_stage2_iter13();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage1_iter1();
    void thread_ap_block_state7_pp0_stage2_iter1();
    void thread_ap_block_state8_pp0_stage3_iter1();
    void thread_ap_block_state9_pp0_stage0_iter2();
    void thread_ap_condition_822();
    void thread_ap_enable_pp0();
    void thread_ap_idle_pp0();
    void thread_ap_phi_precharge_reg_pp0_iter0_tmp_6_reg_190();
    void thread_ap_phi_precharge_reg_pp0_iter0_writeBuffer_flag_1_reg_167();
    void thread_ap_phi_precharge_reg_pp0_iter0_writeBuffer_new_1_reg_179();
    void thread_ap_reset_idle_pp0();
    void thread_ap_rst_n_inv();
    void thread_buffer_r_address0();
    void thread_buffer_r_address1();
    void thread_buffer_r_ce0();
    void thread_buffer_r_ce1();
    void thread_buffer_r_we1();
    void thread_change_V_0_ack_in();
    void thread_change_V_0_ack_out();
    void thread_change_V_0_data_out();
    void thread_change_V_0_load_A();
    void thread_change_V_0_load_B();
    void thread_change_V_0_sel();
    void thread_change_V_0_state_cmp_full();
    void thread_change_V_0_vld_in();
    void thread_change_V_0_vld_out();
    void thread_change_V_TDATA_blk_n();
    void thread_change_V_TREADY();
    void thread_delayCount_load_s_fu_312_p3();
    void thread_grp_fu_200_ce();
    void thread_grp_fu_208_p0();
    void thread_grp_fu_211_p0();
    void thread_grp_fu_214_ce();
    void thread_grp_fu_214_p0();
    void thread_grp_fu_214_p1();
    void thread_grp_fu_219_ce();
    void thread_grp_fu_219_p0();
    void thread_grp_fu_219_p1();
    void thread_grp_fu_224_ce();
    void thread_grp_fu_224_p0();
    void thread_grp_fu_224_p1();
    void thread_grp_fu_231_ce();
    void thread_not_tmp_1_fu_279_p2();
    void thread_not_tmp_2_fu_479_p2();
    void thread_not_tmp_3_fu_512_p2();
    void thread_not_tmp_8_fu_443_p2();
    void thread_not_tmp_s_fu_459_p2();
    void thread_outAccumulate1_fu_817_p3();
    void thread_outAccumulate_1_fu_824_p3();
    void thread_outAccumulate_2_fu_830_p3();
    void thread_outAccumulate_3_fu_854_p3();
    void thread_outAccumulate_7_fu_860_p3();
    void thread_p_delayCount_load_s_fu_577_p3();
    void thread_p_readBuffer1_flag_1_fu_518_p2();
    void thread_p_readBuffer1_new_1_fu_523_p3();
    void thread_p_readBuffer2_flag_1_fu_530_p2();
    void thread_p_readBuffer2_new_1_fu_535_p3();
    void thread_p_readBuffer3_flag_1_fu_542_p2();
    void thread_p_readBuffer3_new_1_fu_547_p3();
    void thread_p_readBuffer4_flag_1_fu_558_p2();
    void thread_p_readBuffer4_new_1_fu_569_p3();
    void thread_readBuffer1_flag_1_fu_448_p2();
    void thread_readBuffer1_flag_2_fu_603_p3();
    void thread_readBuffer1_load_s_fu_319_p3();
    void thread_readBuffer1_new_1_fu_453_p3();
    void thread_readBuffer1_new_2_fu_618_p3();
    void thread_readBuffer2_flag_1_fu_464_p2();
    void thread_readBuffer2_flag_2_fu_649_p3();
    void thread_readBuffer2_load_s_fu_326_p3();
    void thread_readBuffer2_new_1_fu_469_p3();
    void thread_readBuffer2_new_2_fu_672_p3();
    void thread_readBuffer3_flag_1_fu_484_p2();
    void thread_readBuffer3_flag_2_fu_711_p3();
    void thread_readBuffer3_load_s_fu_284_p3();
    void thread_readBuffer3_new_1_fu_489_p3();
    void thread_readBuffer3_new_2_fu_740_p3();
    void thread_readBuffer4_flag_2_fu_748_p3();
    void thread_readBuffer4_load_s_fu_436_p3();
    void thread_readBuffer4_new_2_fu_755_p3();
    void thread_sel_tmp10_fu_680_p2();
    void thread_sel_tmp11_fu_685_p2();
    void thread_sel_tmp12_fu_691_p3();
    void thread_sel_tmp13_fu_698_p3();
    void thread_sel_tmp14_fu_705_p3();
    void thread_sel_tmp15_fu_725_p3();
    void thread_sel_tmp16_fu_733_p3();
    void thread_sel_tmp17_fu_836_p3();
    void thread_sel_tmp18_fu_841_p3();
    void thread_sel_tmp19_fu_847_p3();
    void thread_sel_tmp1_fu_611_p3();
    void thread_sel_tmp2_fu_626_p2();
    void thread_sel_tmp3_fu_631_p2();
    void thread_sel_tmp4_fu_636_p3();
    void thread_sel_tmp5_fu_643_p3();
    void thread_sel_tmp6_fu_657_p3();
    void thread_sel_tmp7_fu_665_p3();
    void thread_sel_tmp8_fu_583_p3();
    void thread_sel_tmp9_fu_589_p2();
    void thread_sel_tmp_fu_597_p2();
    void thread_tmp5_fu_554_p2();
    void thread_tmp6_fu_593_p2();
    void thread_tmp_13_fu_355_p2();
    void thread_tmp_14_fu_361_p3();
    void thread_tmp_15_fu_369_p2();
    void thread_tmp_16_fu_374_p2();
    void thread_tmp_18_fu_380_p1();
    void thread_tmp_1_fu_251_p2();
    void thread_tmp_23_fu_385_p2();
    void thread_tmp_24_fu_391_p3();
    void thread_tmp_25_fu_399_p2();
    void thread_tmp_26_fu_404_p2();
    void thread_tmp_28_fu_475_p1();
    void thread_tmp_2_fu_269_p2();
    void thread_tmp_33_fu_409_p2();
    void thread_tmp_34_fu_414_p3();
    void thread_tmp_35_fu_421_p2();
    void thread_tmp_36_fu_495_p2();
    void thread_tmp_38_fu_501_p1();
    void thread_tmp_3_fu_291_p1();
    void thread_tmp_43_fu_506_p2();
    void thread_tmp_44_fu_426_p2();
    void thread_tmp_45_fu_564_p2();
    void thread_tmp_46_fu_719_p2();
    void thread_tmp_47_fu_763_p3();
    void thread_tmp_48_fu_770_p2();
    void thread_tmp_49_fu_806_p2();
    void thread_tmp_4_fu_350_p1();
    void thread_tmp_50_fu_812_p1();
    void thread_tmp_5_fu_295_p2();
    void thread_tmp_7_fu_333_p2();
    void thread_tmp_8_fu_344_p2();
    void thread_value_in_V_0_ack_in();
    void thread_value_in_V_0_ack_out();
    void thread_value_in_V_0_data_out();
    void thread_value_in_V_0_load_A();
    void thread_value_in_V_0_load_B();
    void thread_value_in_V_0_sel();
    void thread_value_in_V_0_state_cmp_full();
    void thread_value_in_V_0_vld_in();
    void thread_value_in_V_0_vld_out();
    void thread_value_in_V_TDATA_blk_n();
    void thread_value_in_V_TREADY();
    void thread_value_out_V_1_ack_in();
    void thread_value_out_V_1_ack_out();
    void thread_value_out_V_1_data_out();
    void thread_value_out_V_1_load_A();
    void thread_value_out_V_1_load_B();
    void thread_value_out_V_1_sel();
    void thread_value_out_V_1_state_cmp_full();
    void thread_value_out_V_1_vld_in();
    void thread_value_out_V_1_vld_out();
    void thread_value_out_V_TDATA();
    void thread_value_out_V_TDATA_blk_n();
    void thread_value_out_V_TVALID();
    void thread_writeBuffer_flag_1_phi_fu_171_p4();
    void thread_writeBuffer_load_s_fu_261_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
