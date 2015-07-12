--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: RS232top_timesim.vhd
-- /___/   /\     Timestamp: Wed Nov 05 22:36:23 2014
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf RS232top.pcf -rpw 100 -tpw 0 -ar Structure -tm RS232top -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim RS232top.ncd RS232top_timesim.vhd 
-- Device	: 6slx25ftg256-3 (PRODUCTION 1.15 2010-12-02)
-- Input file	: RS232top.ncd
-- Output file	: C:\Users\Diego\Documents\DSED\PII\RS232\netgen\par\RS232top_timesim.vhd
-- # of Entities	: 1
-- Design Name	: RS232top
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity RS232top is
  port (
    Reset : in STD_LOGIC := 'X'; 
    Clk : in STD_LOGIC := 'X'; 
    Valid_D : in STD_LOGIC := 'X'; 
    RD : in STD_LOGIC := 'X'; 
    Data_read : in STD_LOGIC := 'X'; 
    Ack_in : out STD_LOGIC; 
    TX_RDY : out STD_LOGIC; 
    TD : out STD_LOGIC; 
    Full : out STD_LOGIC; 
    Empty : out STD_LOGIC; 
    Data_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Data_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end RS232top;

architecture Structure of RS232top is
  signal Internal_memory_BU2_U0_grf_rf_ram_wr_en : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_2047 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_2048 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_2049 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_2050 : STD_LOGIC; 
  signal Receiver_Reset_inv : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_cy_6_0 : STD_LOGIC; 
  signal StartTX_2053 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0 : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd1_2055 : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd2_2056 : STD_LOGIC; 
  signal TX_RDY_OBUF_2057 : STD_LOGIC; 
  signal Valid_D_IBUF_0 : STD_LOGIC; 
  signal Ack_in_OBUF_0 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_ram_rd_en : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q : STD_LOGIC; 
  signal Valid_D_TX_RDY_i_AND_9_o : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_tmp_ram_rd_en : STD_LOGIC; 
  signal Data_out_7_OBUF_2086 : STD_LOGIC; 
  signal Data_out_6_OBUF_2087 : STD_LOGIC; 
  signal Data_out_5_OBUF_2088 : STD_LOGIC; 
  signal Data_out_4_OBUF_2089 : STD_LOGIC; 
  signal Data_out_3_OBUF_2090 : STD_LOGIC; 
  signal Data_out_2_OBUF_2091 : STD_LOGIC; 
  signal Data_out_1_OBUF_2092 : STD_LOGIC; 
  signal Data_out_0_OBUF_2093 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q_2109 : STD_LOGIC; 
  signal Transmitter_Cuenta : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_3_Q_2128 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_7_Q_2129 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_11_Q_2130 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_15_Q_2131 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_19_Q_2132 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_23_Q_2133 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_27_Q_2134 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q_2150 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0 : STD_LOGIC; 
  signal LineRD_in_2169 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_2170 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd1_2171 : STD_LOGIC; 
  signal Fifo_write_0 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_cy_3_Q_2188 : STD_LOGIC; 
  signal Receiver_Result_0_0 : STD_LOGIC; 
  signal Receiver_Result_1_0 : STD_LOGIC; 
  signal Receiver_Result_2_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_3_Q_2209 : STD_LOGIC; 
  signal Receiver_Result_3_0 : STD_LOGIC; 
  signal Receiver_Result_4_0 : STD_LOGIC; 
  signal Receiver_Result_5_0 : STD_LOGIC; 
  signal Receiver_Result_6_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_7_Q_2214 : STD_LOGIC; 
  signal Receiver_Result_7_0 : STD_LOGIC; 
  signal Receiver_Result_8_0 : STD_LOGIC; 
  signal Receiver_Result_9_0 : STD_LOGIC; 
  signal Receiver_Result_10_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_11_Q_2219 : STD_LOGIC; 
  signal Receiver_Result_11_0 : STD_LOGIC; 
  signal Receiver_Result_12_0 : STD_LOGIC; 
  signal Receiver_Result_13_0 : STD_LOGIC; 
  signal Receiver_Result_14_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_15_Q_2224 : STD_LOGIC; 
  signal Receiver_Result_15_0 : STD_LOGIC; 
  signal Receiver_Result_16_0 : STD_LOGIC; 
  signal Receiver_Result_17_0 : STD_LOGIC; 
  signal Receiver_Result_18_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_19_Q_2229 : STD_LOGIC; 
  signal Receiver_Result_19_0 : STD_LOGIC; 
  signal Receiver_Result_20_0 : STD_LOGIC; 
  signal Receiver_Result_21_0 : STD_LOGIC; 
  signal Receiver_Result_22_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_23_Q_2234 : STD_LOGIC; 
  signal Receiver_Result_23_0 : STD_LOGIC; 
  signal Receiver_Result_24_0 : STD_LOGIC; 
  signal Receiver_Result_25_0 : STD_LOGIC; 
  signal Receiver_Result_26_0 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_27_Q_2239 : STD_LOGIC; 
  signal Receiver_Result_27_0 : STD_LOGIC; 
  signal Receiver_Result_28_0 : STD_LOGIC; 
  signal Receiver_Result_29_0 : STD_LOGIC; 
  signal Receiver_Result_30_0 : STD_LOGIC; 
  signal Receiver_Result_31_0 : STD_LOGIC; 
  signal Transmitter_n0077_inv : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_3_Q_2246 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_7_Q_2247 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_11_Q_2248 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_15_Q_2249 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_19_Q_2250 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_23_Q_2251 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_27_Q_2252 : STD_LOGIC; 
  signal Receiver_n0078_inv : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_3_Q_2257 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_7_Q_2262 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_11_Q_2267 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_15_Q_2272 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_19_Q_2277 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_23_Q_2282 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_27_Q_2287 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q_2293 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0 : STD_LOGIC; 
  signal Data_read_IBUF_0 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal TD_OBUF_2297 : STD_LOGIC; 
  signal Full_OBUF_2298 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Empty_OBUF_2300 : STD_LOGIC; 
  signal Data_in_0_IBUF_0 : STD_LOGIC; 
  signal Data_in_1_IBUF_0 : STD_LOGIC; 
  signal Data_in_2_IBUF_0 : STD_LOGIC; 
  signal Data_in_3_IBUF_0 : STD_LOGIC; 
  signal Data_in_4_IBUF_0 : STD_LOGIC; 
  signal Data_in_5_IBUF_0 : STD_LOGIC; 
  signal Data_in_6_IBUF_0 : STD_LOGIC; 
  signal Data_in_7_IBUF_0 : STD_LOGIC; 
  signal Receiver_n0063 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11_2314 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12_2315 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14_2316 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2317 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In2_2318 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In3_2319 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In4_2320 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In7_2321 : STD_LOGIC; 
  signal Transmitter_TX : STD_LOGIC; 
  signal Transmitter_TX1_2323 : STD_LOGIC; 
  signal Transmitter_TX2_2324 : STD_LOGIC; 
  signal Transmitter_TX3_2325 : STD_LOGIC; 
  signal Transmitter_TX4_2326 : STD_LOGIC; 
  signal Transmitter_TX7_2327 : STD_LOGIC; 
  signal Transmitter_TX6_2328 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o11 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12_2337 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o14 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_0 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_2343 : STD_LOGIC; 
  signal Valid_out : STD_LOGIC; 
  signal Transmitter_TX5_2345 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In6_2348 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In5_2349 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In1_2350 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO4 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO5 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO6 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO7 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO12 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO13 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO14 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO15 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP0 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP1 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP0 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP1 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO0 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO1 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO2 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO3 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO4 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO5 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO6 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO7 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO8 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO9 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO10 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO11 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO12 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO13 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO14 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO15 : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTA_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCE_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLK_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLK_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWREN_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEA_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDEN_INT : STD_LOGIC;
 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRST_INT : STD_LOGIC;
 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi_106 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_0_Q_105 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi1_99 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_1_Q_98 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_3_Q_92 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi3_91 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi2_90 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_2_Q_89 : STD_LOGIC; 
  signal ProtoComp6_CYINITGND_0 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi4_135 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_4_Q_134 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi5_128 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_5_Q_127 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi6_124 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_6_Q_123 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_Q : STD_LOGIC; 
  signal Transmitter_Mmux_Cuenta11_lut_116 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width1 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width2 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width3 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width4 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width5 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width6 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width7 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width8 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width9 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width10 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width11 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width12 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width13 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width14 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width15 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width16 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width17 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width18 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width19 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width20 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width21 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width22 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width23 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width24 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width25 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width26 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width27 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width28 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width29 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width30 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width31 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi_486 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_0_Q_485 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi1_479 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_1_Q_478 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi2_472 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_2_Q_471 : STD_LOGIC; 
  signal ProtoComp10_CYINITVCC_1 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi3_463 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_3_Q_462 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi4_516 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_4_Q_515 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi5_509 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_5_Q_508 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi6_505 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_lut_6_Q_504 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_Q : STD_LOGIC; 
  signal Fifo_write : STD_LOGIC; 
  signal Receiver_Mmux_Store_out11_lut_496 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi_550 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi1_543 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi2_536 : STD_LOGIC; 
  signal ProtoComp12_CYINITVCC_1 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi3_527 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi4_574 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi5_567 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi6_563 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_cy_6_Q_561 : STD_LOGIC; 
  signal Receiver_BitCounter_1_rt_595 : STD_LOGIC; 
  signal Receiver_BitCounter_2_rt_592 : STD_LOGIC; 
  signal ProtoComp14_CYINITGND_0 : STD_LOGIC; 
  signal Receiver_BitCounter_3_rt_583 : STD_LOGIC; 
  signal Receiver_BitCounter_4_rt_620 : STD_LOGIC; 
  signal Receiver_BitCounter_5_rt_617 : STD_LOGIC; 
  signal Receiver_BitCounter_6_rt_614 : STD_LOGIC; 
  signal Receiver_BitCounter_7_rt_605 : STD_LOGIC; 
  signal Receiver_BitCounter_8_rt_642 : STD_LOGIC; 
  signal Receiver_BitCounter_9_rt_639 : STD_LOGIC; 
  signal Receiver_BitCounter_10_rt_636 : STD_LOGIC; 
  signal Receiver_BitCounter_11_rt_627 : STD_LOGIC; 
  signal Receiver_BitCounter_12_rt_664 : STD_LOGIC; 
  signal Receiver_BitCounter_13_rt_661 : STD_LOGIC; 
  signal Receiver_BitCounter_14_rt_658 : STD_LOGIC; 
  signal Receiver_BitCounter_15_rt_649 : STD_LOGIC; 
  signal Receiver_BitCounter_16_rt_686 : STD_LOGIC; 
  signal Receiver_BitCounter_17_rt_683 : STD_LOGIC; 
  signal Receiver_BitCounter_18_rt_680 : STD_LOGIC; 
  signal Receiver_BitCounter_19_rt_671 : STD_LOGIC; 
  signal Receiver_BitCounter_20_rt_708 : STD_LOGIC; 
  signal Receiver_BitCounter_21_rt_705 : STD_LOGIC; 
  signal Receiver_BitCounter_22_rt_702 : STD_LOGIC; 
  signal Receiver_BitCounter_23_rt_693 : STD_LOGIC; 
  signal Receiver_BitCounter_24_rt_730 : STD_LOGIC; 
  signal Receiver_BitCounter_25_rt_727 : STD_LOGIC; 
  signal Receiver_BitCounter_26_rt_724 : STD_LOGIC; 
  signal Receiver_BitCounter_27_rt_715 : STD_LOGIC; 
  signal Receiver_BitCounter_28_rt_750 : STD_LOGIC; 
  signal Receiver_BitCounter_29_rt_747 : STD_LOGIC; 
  signal Receiver_BitCounter_30_rt_744 : STD_LOGIC; 
  signal Receiver_BitCounter_31_rt_737 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count1 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count2 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count3 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count4 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count5 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count6 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count7 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count8 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count9 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count10 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count11 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count12 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count13 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count14 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count15 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count16 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count17 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count18 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count19 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count20 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count21 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count22 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count23 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count24 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count25 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count26 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count27 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count28 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count29 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count30 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count31 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count : STD_LOGIC; 
  signal Receiver_Mcount_Data_count1 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count2 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count3 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count4 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count5 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count6 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count7 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count8 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count9 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count10 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count11 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count12 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count13 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count14 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count15 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count16 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count17 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count18 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count19 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count20 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count21 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count22 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count23 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count24 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count25 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count26 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count27 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count28 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count29 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count30 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count31 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi_1294 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q_1293 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1_1287 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q_1286 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2_1280 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q_1279 : STD_LOGIC; 
  signal ProtoComp23_CYINITVCC_1 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3_1271 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q_1270 : STD_LOGIC; 
  signal Data_read_IBUF_1305 : STD_LOGIC; 
  signal RD_IBUF_1308 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_1317 : STD_LOGIC; 
  signal Valid_D_IBUF_1338 : STD_LOGIC; 
  signal ProtoComp27_IINV_OUT : STD_LOGIC; 
  signal Receiver_Reset_inv_non_inverted : STD_LOGIC; 
  signal Data_in_0_IBUF_1347 : STD_LOGIC; 
  signal Data_in_1_IBUF_1350 : STD_LOGIC; 
  signal Data_in_2_IBUF_1353 : STD_LOGIC; 
  signal Data_in_3_IBUF_1356 : STD_LOGIC; 
  signal Data_in_4_IBUF_1359 : STD_LOGIC; 
  signal Data_in_5_IBUF_1362 : STD_LOGIC; 
  signal Data_in_6_IBUF_1365 : STD_LOGIC; 
  signal Data_in_7_IBUF_1368 : STD_LOGIC; 
  signal Ack_in_OBUF_1376 : STD_LOGIC; 
  signal Valid_D_INV_15_o : STD_LOGIC; 
  signal Shift_Q_AUX_4_pack_1 : STD_LOGIC; 
  signal Shift_Q_AUX_5_rt_1401 : STD_LOGIC; 
  signal Shift_Q_AUX_6_rt_1397 : STD_LOGIC; 
  signal Shift_Q_AUX_5_pack_3 : STD_LOGIC; 
  signal Shift_Q_AUX_7_rt_1392 : STD_LOGIC; 
  signal Shift_Q_AUX_6_pack_5 : STD_LOGIC; 
  signal Shift_Q_AUX_7_pack_7 : STD_LOGIC; 
  signal LineRD_in_rt_1384 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_6 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_9 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt_1523 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt_1520 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_1519 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_pack_1 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_pack_1 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot_1596 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot_1592 : STD_LOGIC; 
  signal Receiver_BitCounter_0_rstpot_1660 : STD_LOGIC; 
  signal Receiver_BitCounter_1_rstpot_1658 : STD_LOGIC; 
  signal Receiver_BitCounter_3_rstpot_1651 : STD_LOGIC; 
  signal Receiver_BitCounter_2_rstpot_1645 : STD_LOGIC; 
  signal Receiver_BitCounter_4_rstpot_1685 : STD_LOGIC; 
  signal Receiver_BitCounter_5_rstpot_1683 : STD_LOGIC; 
  signal Receiver_BitCounter_7_rstpot_1676 : STD_LOGIC; 
  signal Receiver_BitCounter_6_rstpot_1670 : STD_LOGIC; 
  signal Receiver_BitCounter_8_rstpot_1710 : STD_LOGIC; 
  signal Receiver_BitCounter_9_rstpot_1708 : STD_LOGIC; 
  signal Receiver_BitCounter_11_rstpot_1701 : STD_LOGIC; 
  signal Receiver_BitCounter_10_rstpot_1695 : STD_LOGIC; 
  signal Receiver_BitCounter_12_rstpot_1735 : STD_LOGIC; 
  signal Receiver_BitCounter_13_rstpot_1733 : STD_LOGIC; 
  signal Receiver_BitCounter_15_rstpot_1726 : STD_LOGIC; 
  signal Receiver_BitCounter_14_rstpot_1720 : STD_LOGIC; 
  signal Receiver_BitCounter_16_rstpot_1760 : STD_LOGIC; 
  signal Receiver_BitCounter_17_rstpot_1758 : STD_LOGIC; 
  signal Receiver_BitCounter_19_rstpot_1751 : STD_LOGIC; 
  signal Receiver_BitCounter_18_rstpot_1745 : STD_LOGIC; 
  signal Receiver_BitCounter_20_rstpot_1785 : STD_LOGIC; 
  signal Receiver_BitCounter_21_rstpot_1783 : STD_LOGIC; 
  signal Receiver_BitCounter_23_rstpot_1776 : STD_LOGIC; 
  signal Receiver_BitCounter_22_rstpot_1770 : STD_LOGIC; 
  signal Receiver_BitCounter_24_rstpot_1810 : STD_LOGIC; 
  signal Receiver_BitCounter_25_rstpot_1808 : STD_LOGIC; 
  signal Receiver_BitCounter_27_rstpot_1801 : STD_LOGIC; 
  signal Receiver_BitCounter_26_rstpot_1795 : STD_LOGIC; 
  signal Receiver_BitCounter_29_rstpot_1832 : STD_LOGIC; 
  signal Receiver_BitCounter_30_rstpot_1824 : STD_LOGIC; 
  signal Receiver_BitCounter_28_rstpot_1821 : STD_LOGIC; 
  signal StartTX_rstpot_1839 : STD_LOGIC; 
  signal StartTX_pack_1 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q_1868 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5_1867 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_Q : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q_1862 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q_1852 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4_1851 : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd1_In : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd2_In : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd2_pack_1 : STD_LOGIC; 
  signal Receiver_BitCounter_31_rstpot_1910 : STD_LOGIC; 
  signal LineRD_in_pack_4 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd1_In : STD_LOGIC; 
  signal RD_IBUF_rt_1984 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_11_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_10_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_9_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_8_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q : STD_LOGIC;
 
  signal NlwBufferSignal_Transmitter_Pulse_width_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Pulse_width_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_Data_count_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_Data_count_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_TD_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Full_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_TX_RDY_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Ack_in_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Data_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Empty_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_Clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_Ack_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_21_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_27_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_26_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_25_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_24_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_28_CLK : STD_LOGIC; 
  signal NlwBufferSignal_StartTX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_e_actual_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_e_actual_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_e_actual_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_e_actual_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LineRD_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_0_IN : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_128_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mmux_Cuenta11_cy_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mmux_Cuenta11_cy_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mmux_Cuenta11_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mmux_Cuenta11_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mmux_Cuenta11_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mmux_Cuenta11_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_N0_29_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_30_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_31_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_32_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_25_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_26_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_27_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_28_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_21_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_22_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_23_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_24_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_17_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_18_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_19_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_20_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_15_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_16_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Pulse_width_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_2_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_129_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mmux_Store_out11_cy_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mmux_Store_out11_cy_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mmux_Store_out11_cy_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mmux_Store_out11_cy_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mmux_Store_out11_cy_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mmux_Store_out11_cy_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcompar_n0017_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_92_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_93_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_94_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_4_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_88_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_89_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_90_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_91_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_84_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_85_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_86_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_87_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_80_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_81_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_82_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_83_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_76_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_77_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_78_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_79_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_72_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_73_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_74_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_75_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_68_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_69_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_70_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_71_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_BitCounter_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_65_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_66_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_67_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_60_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_61_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_62_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_63_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_56_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_57_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_58_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_59_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_52_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_53_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_54_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_55_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_48_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_49_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_50_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_51_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_44_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_45_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_46_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_47_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_40_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_41_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_42_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_43_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_36_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_37_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_38_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_39_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Transmitter_Mcount_Data_count_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_33_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_34_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_35_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_124_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_125_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_126_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_127_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_120_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_121_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_122_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_123_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_116_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_117_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_118_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_119_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_112_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_113_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_114_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_115_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_108_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_109_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_110_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_111_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_104_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_105_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_106_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_107_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_100_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_27_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_27_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_cy_27_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_101_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_102_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_103_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_xor_31_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_xor_31_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_xor_31_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_xor_31_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcount_Data_count_xor_31_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_97_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_98_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_99_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_64_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Shift_Q_AUX : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Transmitter_Pulse_width : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Receiver_BitCounter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Transmitter_Data_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Receiver_Data_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Data_FF : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Transmitter_Mcount_Pulse_width_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Transmitter_Mcompar_n0017_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Receiver_Mcount_BitCounter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Receiver_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Transmitter_Mcount_Data_count_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Receiver_Mcount_Data_count_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1INV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTAINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTA_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCEINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCE_INT

    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLKINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLK_INT

    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLKINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLK_INT

    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWRENINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWREN_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEAINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => '0',
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEA_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDENINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_mem_gbm_tmp_ram_rd_en,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDEN_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRSTINV : 
X_BUF
    generic map(
      LOC => "RAMB8_X0Y7",
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      O => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRST_INT
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram : 
X_RAMB8BWER
    generic map(
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 18,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      RAM_MODE => "TDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      LOC => "RAMB8_X0Y7"
    )
    port map (
      RSTBRST => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTBRST_INT
,
      ENBRDEN => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENBRDEN_INT
,
      REGCEA => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEA_INT,
      ENAWREN => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ENAWREN_INT
,
      CLKAWRCLK => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKAWRCLK_INT
,
      CLKBRDCLK => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_CLKBRDCLK_INT
,
      REGCEBREGCE => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_REGCEBREGCE_INT
,
      RSTA => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_RSTA_INT,
      WEAWEL(1) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL1_INT
,
      WEAWEL(0) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEAWEL0_INT
,
      WEBWEU(1) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU1_INT
,
      WEBWEU(0) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_WEBWEU0_INT
,
      ADDRAWRADDR(12) => GND,
      ADDRAWRADDR(11) => GND,
      ADDRAWRADDR(10) => GND,
      ADDRAWRADDR(9) => GND,
      ADDRAWRADDR(8) => GND,
      ADDRAWRADDR(7) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q
,
      ADDRAWRADDR(6) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q
,
      ADDRAWRADDR(5) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q
,
      ADDRAWRADDR(4) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q
,
      ADDRAWRADDR(3) => GND,
      ADDRAWRADDR(2) => GND,
      ADDRAWRADDR(1) => GND,
      ADDRAWRADDR(0) => GND,
      DIPBDIP(1) => GND,
      DIPBDIP(0) => GND,
      DIBDI(15) => GND,
      DIBDI(14) => GND,
      DIBDI(13) => GND,
      DIBDI(12) => GND,
      DIBDI(11) => GND,
      DIBDI(10) => GND,
      DIBDI(9) => GND,
      DIBDI(8) => GND,
      DIBDI(7) => GND,
      DIBDI(6) => GND,
      DIBDI(5) => GND,
      DIBDI(4) => GND,
      DIBDI(3) => GND,
      DIBDI(2) => GND,
      DIBDI(1) => GND,
      DIBDI(0) => GND,
      DIADI(15) => GND,
      DIADI(14) => GND,
      DIADI(13) => GND,
      DIADI(12) => GND,
      DIADI(11) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_11_Q
,
      DIADI(10) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_10_Q
,
      DIADI(9) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_9_Q
,
      DIADI(8) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_8_Q
,
      DIADI(7) => GND,
      DIADI(6) => GND,
      DIADI(5) => GND,
      DIADI(4) => GND,
      DIADI(3) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q
,
      DIADI(2) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q
,
      DIADI(1) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q
,
      DIADI(0) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q
,
      ADDRBRDADDR(12) => GND,
      ADDRBRDADDR(11) => GND,
      ADDRBRDADDR(10) => GND,
      ADDRBRDADDR(9) => GND,
      ADDRBRDADDR(8) => GND,
      ADDRBRDADDR(7) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q
,
      ADDRBRDADDR(6) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q
,
      ADDRBRDADDR(5) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q
,
      ADDRBRDADDR(4) => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q
,
      ADDRBRDADDR(3) => GND,
      ADDRBRDADDR(2) => GND,
      ADDRBRDADDR(1) => GND,
      ADDRBRDADDR(0) => GND,
      DIPADIP(1) => GND,
      DIPADIP(0) => GND,
      DOADO(15) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO15,
      DOADO(14) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO14,
      DOADO(13) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO13,
      DOADO(12) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO12,
      DOADO(11) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO11,
      DOADO(10) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO10,
      DOADO(9) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO9,
      DOADO(8) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO8,
      DOADO(7) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO7,
      DOADO(6) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO6,
      DOADO(5) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO5,
      DOADO(4) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO4,
      DOADO(3) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO3,
      DOADO(2) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO2,
      DOADO(1) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO1,
      DOADO(0) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOADO0,
      DOPADOP(1) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP1,
      DOPADOP(0) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPADOP0,
      DOPBDOP(1) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP1,
      DOPBDOP(0) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOPBDOP0,
      DOBDO(15) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO15,
      DOBDO(14) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO14,
      DOBDO(13) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO13,
      DOBDO(12) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO12,
      DOBDO(11) => Data_out_7_OBUF_2086,
      DOBDO(10) => Data_out_6_OBUF_2087,
      DOBDO(9) => Data_out_5_OBUF_2088,
      DOBDO(8) => Data_out_4_OBUF_2089,
      DOBDO(7) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO7,
      DOBDO(6) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO6,
      DOBDO(5) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO5,
      DOBDO(4) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO4,
      DOBDO(3) => Data_out_3_OBUF_2090,
      DOBDO(2) => Data_out_2_OBUF_2091,
      DOBDO(1) => Data_out_1_OBUF_2092,
      DOBDO(0) => Data_out_0_OBUF_2093
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => Transmitter_Pulse_width(15),
      ADR3 => Transmitter_Pulse_width(16),
      ADR4 => Transmitter_Pulse_width(17),
      ADR1 => Transmitter_Pulse_width(18),
      ADR2 => Transmitter_Pulse_width(19),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_3_Q_92
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"00000001"
    )
    port map (
      ADR0 => Transmitter_Pulse_width(15),
      ADR3 => Transmitter_Pulse_width(16),
      ADR4 => Transmitter_Pulse_width(17),
      ADR1 => Transmitter_Pulse_width(18),
      ADR2 => Transmitter_Pulse_width(19),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi3_91
    );
  ProtoComp6_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X14Y3"
    )
    port map (
      O => ProtoComp6_CYINITGND_0
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y3"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp6_CYINITGND_0,
      CO(3) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q_2109,
      CO(2) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi3_91,
      DI(2) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi2_90,
      DI(1) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi1_99,
      DI(0) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi_106,
      O(3) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_O_0_UNCONNECTED,
      S(3) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_3_Q_92,
      S(2) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_2_Q_89,
      S(1) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_1_Q_98,
      S(0) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_0_Q_105
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => Transmitter_Pulse_width(10),
      ADR1 => Transmitter_Pulse_width(11),
      ADR3 => Transmitter_Pulse_width(12),
      ADR2 => Transmitter_Pulse_width(13),
      ADR4 => Transmitter_Pulse_width(14),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_2_Q_89
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"00000001"
    )
    port map (
      ADR0 => Transmitter_Pulse_width(10),
      ADR1 => Transmitter_Pulse_width(11),
      ADR3 => Transmitter_Pulse_width(12),
      ADR2 => Transmitter_Pulse_width(13),
      ADR4 => Transmitter_Pulse_width(14),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi2_90
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"0000100000001000"
    )
    port map (
      ADR2 => Transmitter_Pulse_width(5),
      ADR0 => Transmitter_Pulse_width(6),
      ADR3 => Transmitter_Pulse_width(7),
      ADR1 => Transmitter_Pulse_width(8),
      ADR4 => Transmitter_Pulse_width(9),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_1_Q_98
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"00001133"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_Pulse_width(6),
      ADR3 => Transmitter_Pulse_width(7),
      ADR1 => Transmitter_Pulse_width(8),
      ADR4 => Transmitter_Pulse_width(9),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi1_99
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"1000000010000000"
    )
    port map (
      ADR2 => Transmitter_Pulse_width(3),
      ADR4 => Transmitter_Pulse_width(0),
      ADR3 => Transmitter_Pulse_width(2),
      ADR0 => Transmitter_Pulse_width(1),
      ADR1 => Transmitter_Pulse_width(4),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_0_Q_105
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X14Y3",
      INIT => X"13331333"
    )
    port map (
      ADR2 => Transmitter_Pulse_width(3),
      ADR4 => '1',
      ADR3 => Transmitter_Pulse_width(2),
      ADR0 => Transmitter_Pulse_width(1),
      ADR1 => Transmitter_Pulse_width(4),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi_106
    );
  Transmitter_Cuenta_Transmitter_Cuenta_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_Q,
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0
    );
  Transmitter_Mmux_Cuenta11_lut : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"FCFCFCFCFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR5 => '1',
      O => Transmitter_Mmux_Cuenta11_lut_116
    );
  N0_128_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_128_D5LUT_O_UNCONNECTED
    );
  Transmitter_Mmux_Cuenta11_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y4"
    )
    port map (
      CI => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q_2109,
      CYINIT => '0',
      CO(3) => Transmitter_Cuenta,
      CO(2) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_Q,
      CO(1) => NLW_Transmitter_Mmux_Cuenta11_cy_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mmux_Cuenta11_cy_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi6_124,
      DI(1) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi5_128,
      DI(0) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi4_135,
      O(3) => NLW_Transmitter_Mmux_Cuenta11_cy_O_3_UNCONNECTED,
      O(2) => NLW_Transmitter_Mmux_Cuenta11_cy_O_2_UNCONNECTED,
      O(1) => NLW_Transmitter_Mmux_Cuenta11_cy_O_1_UNCONNECTED,
      O(0) => NLW_Transmitter_Mmux_Cuenta11_cy_O_0_UNCONNECTED,
      S(3) => Transmitter_Mmux_Cuenta11_lut_116,
      S(2) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_6_Q_123,
      S(1) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_5_Q_127,
      S(0) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_4_Q_134
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Pulse_width(30),
      ADR1 => Transmitter_Pulse_width(31),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_6_Q_123
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"CCCCFFFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Pulse_width(30),
      ADR1 => Transmitter_Pulse_width(31),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi6_124
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => Transmitter_Pulse_width(25),
      ADR0 => Transmitter_Pulse_width(26),
      ADR4 => Transmitter_Pulse_width(27),
      ADR1 => Transmitter_Pulse_width(28),
      ADR3 => Transmitter_Pulse_width(29),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_5_Q_127
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"00000001"
    )
    port map (
      ADR2 => Transmitter_Pulse_width(25),
      ADR0 => Transmitter_Pulse_width(26),
      ADR4 => Transmitter_Pulse_width(27),
      ADR1 => Transmitter_Pulse_width(28),
      ADR3 => Transmitter_Pulse_width(29),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi5_128
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => Transmitter_Pulse_width(20),
      ADR4 => Transmitter_Pulse_width(21),
      ADR3 => Transmitter_Pulse_width(22),
      ADR2 => Transmitter_Pulse_width(23),
      ADR0 => Transmitter_Pulse_width(24),
      ADR5 => '1',
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_4_Q_134
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y4",
      INIT => X"00000001"
    )
    port map (
      ADR1 => Transmitter_Pulse_width(20),
      ADR4 => Transmitter_Pulse_width(21),
      ADR3 => Transmitter_Pulse_width(22),
      ADR2 => Transmitter_Pulse_width(23),
      ADR0 => Transmitter_Pulse_width(24),
      O => Transmitter_Mcompar_Pulse_width_31_INV_6_o_lutdi4_135
    );
  Transmitter_Pulse_width_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_3_CLK,
      I => Transmitter_Mcount_Pulse_width3,
      O => Transmitter_Pulse_width(3),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"FC000000FC000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(3),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(3)
    );
  N0_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_29_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_2_CLK,
      I => Transmitter_Mcount_Pulse_width2,
      O => Transmitter_Pulse_width(2),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y5"
    )
    port map (
      CI => Transmitter_Cuenta,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_3_Q_2128,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width3,
      O(2) => Transmitter_Mcount_Pulse_width2,
      O(1) => Transmitter_Mcount_Pulse_width1,
      O(0) => Transmitter_Mcount_Pulse_width,
      S(3) => Transmitter_Mcount_Pulse_width_lut(3),
      S(2) => Transmitter_Mcount_Pulse_width_lut(2),
      S(1) => Transmitter_Mcount_Pulse_width_lut(1),
      S(0) => Transmitter_Mcount_Pulse_width_lut(0)
    );
  Transmitter_Mcount_Pulse_width_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"FC000000FC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(2),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(2)
    );
  N0_30_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_30_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_1_CLK,
      I => Transmitter_Mcount_Pulse_width1,
      O => Transmitter_Pulse_width(1),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"AA880000AA880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(1),
      ADR0 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(1)
    );
  N0_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_31_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_0_CLK,
      I => Transmitter_Mcount_Pulse_width,
      O => Transmitter_Pulse_width(0),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"E0E00000E0E00000"
    )
    port map (
      ADR3 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(0),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(0)
    );
  N0_32_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_32_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_7_CLK,
      I => Transmitter_Mcount_Pulse_width7,
      O => Transmitter_Pulse_width(7),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"E0E00000E0E00000"
    )
    port map (
      ADR3 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(7),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(7)
    );
  N0_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_25_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_6 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_6_CLK,
      I => Transmitter_Mcount_Pulse_width6,
      O => Transmitter_Pulse_width(6),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y6"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_3_Q_2128,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_7_Q_2129,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width7,
      O(2) => Transmitter_Mcount_Pulse_width6,
      O(1) => Transmitter_Mcount_Pulse_width5,
      O(0) => Transmitter_Mcount_Pulse_width4,
      S(3) => Transmitter_Mcount_Pulse_width_lut(7),
      S(2) => Transmitter_Mcount_Pulse_width_lut(6),
      S(1) => Transmitter_Mcount_Pulse_width_lut(5),
      S(0) => Transmitter_Mcount_Pulse_width_lut(4)
    );
  Transmitter_Mcount_Pulse_width_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"AAA00000AAA00000"
    )
    port map (
      ADR1 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(6),
      ADR0 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(6)
    );
  N0_26_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_26_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_5 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_5_CLK,
      I => Transmitter_Mcount_Pulse_width5,
      O => Transmitter_Pulse_width(5),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(5),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(5)
    );
  N0_27_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_27_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_4_CLK,
      I => Transmitter_Mcount_Pulse_width4,
      O => Transmitter_Pulse_width(4),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"CC880000CC880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(4),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(4)
    );
  N0_28_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_28_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_11 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_11_CLK,
      I => Transmitter_Mcount_Pulse_width11,
      O => Transmitter_Pulse_width(11),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(11),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(11)
    );
  N0_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_21_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_10 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_10_CLK,
      I => Transmitter_Mcount_Pulse_width10,
      O => Transmitter_Pulse_width(10),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y7"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_7_Q_2129,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_11_Q_2130,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width11,
      O(2) => Transmitter_Mcount_Pulse_width10,
      O(1) => Transmitter_Mcount_Pulse_width9,
      O(0) => Transmitter_Mcount_Pulse_width8,
      S(3) => Transmitter_Mcount_Pulse_width_lut(11),
      S(2) => Transmitter_Mcount_Pulse_width_lut(10),
      S(1) => Transmitter_Mcount_Pulse_width_lut(9),
      S(0) => Transmitter_Mcount_Pulse_width_lut(8)
    );
  Transmitter_Mcount_Pulse_width_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"AAA00000AAA00000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR0 => Transmitter_Pulse_width(10),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(10)
    );
  N0_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_22_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_9 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_9_CLK,
      I => Transmitter_Mcount_Pulse_width9,
      O => Transmitter_Pulse_width(9),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(9),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(9)
    );
  N0_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_23_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_8 : X_FF
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_8_CLK,
      I => Transmitter_Mcount_Pulse_width8,
      O => Transmitter_Pulse_width(8),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"EE000000EE000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(8),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(8)
    );
  N0_24_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_24_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_15 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_15_CLK,
      I => Transmitter_Mcount_Pulse_width15,
      O => Transmitter_Pulse_width(15),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(15),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(15)
    );
  N0_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_17_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_14 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_14_CLK,
      I => Transmitter_Mcount_Pulse_width14,
      O => Transmitter_Pulse_width(14),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y8"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_11_Q_2130,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_15_Q_2131,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width15,
      O(2) => Transmitter_Mcount_Pulse_width14,
      O(1) => Transmitter_Mcount_Pulse_width13,
      O(0) => Transmitter_Mcount_Pulse_width12,
      S(3) => Transmitter_Mcount_Pulse_width_lut(15),
      S(2) => Transmitter_Mcount_Pulse_width_lut(14),
      S(1) => Transmitter_Mcount_Pulse_width_lut(13),
      S(0) => Transmitter_Mcount_Pulse_width_lut(12)
    );
  Transmitter_Mcount_Pulse_width_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"CC880000CC880000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(14),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(14)
    );
  N0_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_18_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_13 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_13_CLK,
      I => Transmitter_Mcount_Pulse_width13,
      O => Transmitter_Pulse_width(13),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(13),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(13)
    );
  N0_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_19_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_12 : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_12_CLK,
      I => Transmitter_Mcount_Pulse_width12,
      O => Transmitter_Pulse_width(12),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(12),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(12)
    );
  N0_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_20_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_19 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_19_CLK,
      I => Transmitter_Mcount_Pulse_width19,
      O => Transmitter_Pulse_width(19),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(19),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(19)
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_18 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_18_CLK,
      I => Transmitter_Mcount_Pulse_width18,
      O => Transmitter_Pulse_width(18),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y9"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_15_Q_2131,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_19_Q_2132,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width19,
      O(2) => Transmitter_Mcount_Pulse_width18,
      O(1) => Transmitter_Mcount_Pulse_width17,
      O(0) => Transmitter_Mcount_Pulse_width16,
      S(3) => Transmitter_Mcount_Pulse_width_lut(19),
      S(2) => Transmitter_Mcount_Pulse_width_lut(18),
      S(1) => Transmitter_Mcount_Pulse_width_lut(17),
      S(0) => Transmitter_Mcount_Pulse_width_lut(16)
    );
  Transmitter_Mcount_Pulse_width_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"AAA00000AAA00000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR0 => Transmitter_Pulse_width(18),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(18)
    );
  N0_14_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_17 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_17_CLK,
      I => Transmitter_Mcount_Pulse_width17,
      O => Transmitter_Pulse_width(17),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(17),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(17)
    );
  N0_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_15_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_16 : X_FF
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_16_CLK,
      I => Transmitter_Mcount_Pulse_width16,
      O => Transmitter_Pulse_width(16),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"EE000000EE000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(16),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(16)
    );
  N0_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_16_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_23 : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_23_CLK,
      I => Transmitter_Mcount_Pulse_width23,
      O => Transmitter_Pulse_width(23),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(23),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(23)
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_22 : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_22_CLK,
      I => Transmitter_Mcount_Pulse_width22,
      O => Transmitter_Pulse_width(22),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y10"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_19_Q_2132,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_23_Q_2133,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width23,
      O(2) => Transmitter_Mcount_Pulse_width22,
      O(1) => Transmitter_Mcount_Pulse_width21,
      O(0) => Transmitter_Mcount_Pulse_width20,
      S(3) => Transmitter_Mcount_Pulse_width_lut(23),
      S(2) => Transmitter_Mcount_Pulse_width_lut(22),
      S(1) => Transmitter_Mcount_Pulse_width_lut(21),
      S(0) => Transmitter_Mcount_Pulse_width_lut(20)
    );
  Transmitter_Mcount_Pulse_width_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"CC880000CC880000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(22),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(22)
    );
  N0_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_21 : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_21_CLK,
      I => Transmitter_Mcount_Pulse_width21,
      O => Transmitter_Pulse_width(21),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(21),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(21)
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_20 : X_FF
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_20_CLK,
      I => Transmitter_Mcount_Pulse_width20,
      O => Transmitter_Pulse_width(20),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(20),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(20)
    );
  N0_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y10",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_27 : X_FF
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_27_CLK,
      I => Transmitter_Mcount_Pulse_width27,
      O => Transmitter_Pulse_width(27),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(27),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(27)
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_D5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_26 : X_FF
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_26_CLK,
      I => Transmitter_Mcount_Pulse_width26,
      O => Transmitter_Pulse_width(26),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y11"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_23_Q_2133,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_27_Q_2134,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width27,
      O(2) => Transmitter_Mcount_Pulse_width26,
      O(1) => Transmitter_Mcount_Pulse_width25,
      O(0) => Transmitter_Mcount_Pulse_width24,
      S(3) => Transmitter_Mcount_Pulse_width_lut(27),
      S(2) => Transmitter_Mcount_Pulse_width_lut(26),
      S(1) => Transmitter_Mcount_Pulse_width_lut(25),
      S(0) => Transmitter_Mcount_Pulse_width_lut(24)
    );
  Transmitter_Mcount_Pulse_width_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(26),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(26)
    );
  N0_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_25 : X_FF
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_25_CLK,
      I => Transmitter_Mcount_Pulse_width25,
      O => Transmitter_Pulse_width(25),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"A0A0A000A0A0A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR4 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR0 => Transmitter_Pulse_width(25),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(25)
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_24 : X_FF
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_24_CLK,
      I => Transmitter_Mcount_Pulse_width24,
      O => Transmitter_Pulse_width(24),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"EE000000EE000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(24),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(24)
    );
  N0_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_A5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_31 : X_FF
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_31_CLK,
      I => Transmitter_Mcount_Pulse_width31,
      O => Transmitter_Pulse_width(31),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"FFF0000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR4 => Transmitter_Pulse_width(31),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR2 => Transmitter_e_actual_FSM_FFd2_2056,
      O => Transmitter_Mcount_Pulse_width_lut(31)
    );
  Transmitter_Pulse_width_30 : X_FF
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_30_CLK,
      I => Transmitter_Mcount_Pulse_width30,
      O => Transmitter_Pulse_width(30),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y12"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_27_Q_2134,
      CYINIT => '0',
      CO(3) => NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Pulse_width_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_Transmitter_Mcount_Pulse_width_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Pulse_width31,
      O(2) => Transmitter_Mcount_Pulse_width30,
      O(1) => Transmitter_Mcount_Pulse_width29,
      O(0) => Transmitter_Mcount_Pulse_width28,
      S(3) => Transmitter_Mcount_Pulse_width_lut(31),
      S(2) => Transmitter_Mcount_Pulse_width_lut(30),
      S(1) => Transmitter_Mcount_Pulse_width_lut(29),
      S(0) => Transmitter_Mcount_Pulse_width_lut(28)
    );
  Transmitter_Mcount_Pulse_width_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"8888880088888800"
    )
    port map (
      ADR2 => '1',
      ADR4 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR0 => Transmitter_Pulse_width(30),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(30)
    );
  N0_2_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_2_C5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_29 : X_FF
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_29_CLK,
      I => Transmitter_Mcount_Pulse_width29,
      O => Transmitter_Pulse_width(29),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"A0A0A000A0A0A000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR4 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR0 => Transmitter_Pulse_width(29),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(29)
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_B5LUT_O_UNCONNECTED
    );
  Transmitter_Pulse_width_28 : X_FF
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_Pulse_width_28_CLK,
      I => Transmitter_Mcount_Pulse_width28,
      O => Transmitter_Pulse_width(28),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Pulse_width_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Pulse_width(28),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(28)
    );
  N0_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => Receiver_BitCounter(15),
      ADR2 => Receiver_BitCounter(16),
      ADR0 => Receiver_BitCounter(17),
      ADR4 => Receiver_BitCounter(18),
      ADR1 => Receiver_BitCounter(19),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_3_Q_462
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => Receiver_BitCounter(15),
      ADR2 => Receiver_BitCounter(16),
      ADR0 => Receiver_BitCounter(17),
      ADR4 => Receiver_BitCounter(18),
      ADR1 => Receiver_BitCounter(19),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi3_463
    );
  ProtoComp10_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      O => ProtoComp10_CYINITVCC_1
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp10_CYINITVCC_1,
      CO(3) => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q_2150,
      CO(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi3_463,
      DI(2) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi2_472,
      DI(1) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi1_479,
      DI(0) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi_486,
      O(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_O_0_UNCONNECTED,
      S(3) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_3_Q_462,
      S(2) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_2_Q_471,
      S(1) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_1_Q_478,
      S(0) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_0_Q_485
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => Receiver_BitCounter(10),
      ADR1 => Receiver_BitCounter(11),
      ADR3 => Receiver_BitCounter(12),
      ADR2 => Receiver_BitCounter(13),
      ADR0 => Receiver_BitCounter(14),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_2_Q_471
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => Receiver_BitCounter(10),
      ADR1 => Receiver_BitCounter(11),
      ADR3 => Receiver_BitCounter(12),
      ADR2 => Receiver_BitCounter(13),
      ADR0 => Receiver_BitCounter(14),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi2_472
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"0000004000000040"
    )
    port map (
      ADR1 => Receiver_BitCounter(5),
      ADR4 => Receiver_BitCounter(6),
      ADR2 => Receiver_BitCounter(7),
      ADR3 => Receiver_BitCounter(8),
      ADR0 => Receiver_BitCounter(9),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_1_Q_478
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"FFFAFFAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => Receiver_BitCounter(6),
      ADR2 => Receiver_BitCounter(7),
      ADR3 => Receiver_BitCounter(8),
      ADR0 => Receiver_BitCounter(9),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi1_479
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"0200000002000000"
    )
    port map (
      ADR3 => Receiver_BitCounter(3),
      ADR4 => Receiver_BitCounter(0),
      ADR0 => Receiver_BitCounter(2),
      ADR1 => Receiver_BitCounter(1),
      ADR2 => Receiver_BitCounter(4),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_0_Q_485
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"F8F0F8F0"
    )
    port map (
      ADR3 => Receiver_BitCounter(3),
      ADR4 => '1',
      ADR0 => Receiver_BitCounter(2),
      ADR1 => Receiver_BitCounter(1),
      ADR2 => Receiver_BitCounter(4),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi_486
    );
  Fifo_write_Fifo_write_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Fifo_write,
      O => Fifo_write_0
    );
  Fifo_write_Fifo_write_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_Q,
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0
    );
  Receiver_Mmux_Store_out11_lut : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"0C000C000C000C00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => LineRD_in_2169,
      ADR2 => Receiver_e_actual_FSM_FFd2_2170,
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mmux_Store_out11_lut_496
    );
  N0_129_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_129_D5LUT_O_UNCONNECTED
    );
  Receiver_Mmux_Store_out11_cy : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      CI => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q_2150,
      CYINIT => '0',
      CO(3) => Fifo_write,
      CO(2) => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_Q,
      CO(1) => NLW_Receiver_Mmux_Store_out11_cy_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mmux_Store_out11_cy_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi6_505,
      DI(1) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi5_509,
      DI(0) => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi4_516,
      O(3) => NLW_Receiver_Mmux_Store_out11_cy_O_3_UNCONNECTED,
      O(2) => NLW_Receiver_Mmux_Store_out11_cy_O_2_UNCONNECTED,
      O(1) => NLW_Receiver_Mmux_Store_out11_cy_O_1_UNCONNECTED,
      O(0) => NLW_Receiver_Mmux_Store_out11_cy_O_0_UNCONNECTED,
      S(3) => Receiver_Mmux_Store_out11_lut_496,
      S(2) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_6_Q_504,
      S(1) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_5_Q_508,
      S(0) => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_4_Q_515
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"0000555500005555"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(30),
      ADR0 => Receiver_BitCounter(31),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_6_Q_504
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"55550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(30),
      ADR0 => Receiver_BitCounter(31),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi6_505
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => Receiver_BitCounter(25),
      ADR2 => Receiver_BitCounter(26),
      ADR0 => Receiver_BitCounter(27),
      ADR1 => Receiver_BitCounter(28),
      ADR4 => Receiver_BitCounter(29),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_5_Q_508
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => Receiver_BitCounter(25),
      ADR2 => Receiver_BitCounter(26),
      ADR0 => Receiver_BitCounter(27),
      ADR1 => Receiver_BitCounter(28),
      ADR4 => Receiver_BitCounter(29),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi5_509
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => Receiver_BitCounter(20),
      ADR3 => Receiver_BitCounter(21),
      ADR0 => Receiver_BitCounter(22),
      ADR2 => Receiver_BitCounter(23),
      ADR4 => Receiver_BitCounter(24),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_4_Q_515
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => Receiver_BitCounter(20),
      ADR3 => Receiver_BitCounter(21),
      ADR0 => Receiver_BitCounter(22),
      ADR2 => Receiver_BitCounter(23),
      ADR4 => Receiver_BitCounter(24),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi4_516
    );
  Transmitter_Mcompar_n0017_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => Transmitter_Data_count(15),
      ADR3 => Transmitter_Data_count(16),
      ADR4 => Transmitter_Data_count(17),
      ADR1 => Transmitter_Data_count(18),
      ADR0 => Transmitter_Data_count(19),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(3)
    );
  Transmitter_Mcompar_n0017_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR2 => Transmitter_Data_count(15),
      ADR3 => Transmitter_Data_count(16),
      ADR4 => Transmitter_Data_count(17),
      ADR1 => Transmitter_Data_count(18),
      ADR0 => Transmitter_Data_count(19),
      O => Transmitter_Mcompar_n0017_lutdi3_527
    );
  ProtoComp12_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      O => ProtoComp12_CYINITVCC_1
    );
  Transmitter_Mcompar_n0017_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y3"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp12_CYINITVCC_1,
      CO(3) => Transmitter_Mcompar_n0017_cy_3_Q_2188,
      CO(2) => NLW_Transmitter_Mcompar_n0017_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcompar_n0017_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcompar_n0017_cy_3_CO_0_UNCONNECTED,
      DI(3) => Transmitter_Mcompar_n0017_lutdi3_527,
      DI(2) => Transmitter_Mcompar_n0017_lutdi2_536,
      DI(1) => Transmitter_Mcompar_n0017_lutdi1_543,
      DI(0) => Transmitter_Mcompar_n0017_lutdi_550,
      O(3) => NLW_Transmitter_Mcompar_n0017_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Transmitter_Mcompar_n0017_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Transmitter_Mcompar_n0017_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Transmitter_Mcompar_n0017_cy_3_O_0_UNCONNECTED,
      S(3) => Transmitter_Mcompar_n0017_lut(3),
      S(2) => Transmitter_Mcompar_n0017_lut(2),
      S(1) => Transmitter_Mcompar_n0017_lut(1),
      S(0) => Transmitter_Mcompar_n0017_lut(0)
    );
  Transmitter_Mcompar_n0017_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => Transmitter_Data_count(10),
      ADR1 => Transmitter_Data_count(11),
      ADR3 => Transmitter_Data_count(12),
      ADR2 => Transmitter_Data_count(13),
      ADR0 => Transmitter_Data_count(14),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(2)
    );
  Transmitter_Mcompar_n0017_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => Transmitter_Data_count(10),
      ADR1 => Transmitter_Data_count(11),
      ADR3 => Transmitter_Data_count(12),
      ADR2 => Transmitter_Data_count(13),
      ADR0 => Transmitter_Data_count(14),
      O => Transmitter_Mcompar_n0017_lutdi2_536
    );
  Transmitter_Mcompar_n0017_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => Transmitter_Data_count(5),
      ADR2 => Transmitter_Data_count(6),
      ADR3 => Transmitter_Data_count(7),
      ADR1 => Transmitter_Data_count(8),
      ADR4 => Transmitter_Data_count(9),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(1)
    );
  Transmitter_Mcompar_n0017_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => Transmitter_Data_count(5),
      ADR2 => Transmitter_Data_count(6),
      ADR3 => Transmitter_Data_count(7),
      ADR1 => Transmitter_Data_count(8),
      ADR4 => Transmitter_Data_count(9),
      O => Transmitter_Mcompar_n0017_lutdi1_543
    );
  Transmitter_Mcompar_n0017_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"0008000000080000"
    )
    port map (
      ADR1 => Transmitter_Data_count(0),
      ADR0 => Transmitter_Data_count(1),
      ADR4 => Transmitter_Data_count(2),
      ADR3 => Transmitter_Data_count(3),
      ADR2 => Transmitter_Data_count(4),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(0)
    );
  Transmitter_Mcompar_n0017_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X10Y3",
      INIT => X"FFF0FFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => Transmitter_Data_count(3),
      ADR2 => Transmitter_Data_count(4),
      O => Transmitter_Mcompar_n0017_lutdi_550
    );
  Transmitter_Mcompar_n0017_cy_6_Transmitter_Mcompar_n0017_cy_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Transmitter_Mcompar_n0017_cy_6_Q_561,
      O => Transmitter_Mcompar_n0017_cy_6_0
    );
  Transmitter_Mcompar_n0017_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X10Y4"
    )
    port map (
      CI => Transmitter_Mcompar_n0017_cy_3_Q_2188,
      CYINIT => '0',
      CO(3) => NLW_Transmitter_Mcompar_n0017_cy_6_CO_3_UNCONNECTED,
      CO(2) => Transmitter_Mcompar_n0017_cy_6_Q_561,
      CO(1) => NLW_Transmitter_Mcompar_n0017_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcompar_n0017_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_Transmitter_Mcompar_n0017_cy_6_DI_3_UNCONNECTED,
      DI(2) => Transmitter_Mcompar_n0017_lutdi6_563,
      DI(1) => Transmitter_Mcompar_n0017_lutdi5_567,
      DI(0) => Transmitter_Mcompar_n0017_lutdi4_574,
      O(3) => NLW_Transmitter_Mcompar_n0017_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_Transmitter_Mcompar_n0017_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_Transmitter_Mcompar_n0017_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_Transmitter_Mcompar_n0017_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_Transmitter_Mcompar_n0017_cy_6_S_3_UNCONNECTED,
      S(2) => Transmitter_Mcompar_n0017_lut(6),
      S(1) => Transmitter_Mcompar_n0017_lut(5),
      S(0) => Transmitter_Mcompar_n0017_lut(4)
    );
  Transmitter_Mcompar_n0017_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"1111111111111111"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => Transmitter_Data_count(30),
      ADR1 => Transmitter_Data_count(31),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(6)
    );
  Transmitter_Mcompar_n0017_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"22222222"
    )
    port map (
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR0 => Transmitter_Data_count(30),
      ADR1 => Transmitter_Data_count(31),
      O => Transmitter_Mcompar_n0017_lutdi6_563
    );
  Transmitter_Mcompar_n0017_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => Transmitter_Data_count(25),
      ADR2 => Transmitter_Data_count(26),
      ADR3 => Transmitter_Data_count(27),
      ADR1 => Transmitter_Data_count(28),
      ADR4 => Transmitter_Data_count(29),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(5)
    );
  Transmitter_Mcompar_n0017_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => Transmitter_Data_count(25),
      ADR2 => Transmitter_Data_count(26),
      ADR3 => Transmitter_Data_count(27),
      ADR1 => Transmitter_Data_count(28),
      ADR4 => Transmitter_Data_count(29),
      O => Transmitter_Mcompar_n0017_lutdi5_567
    );
  Transmitter_Mcompar_n0017_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => Transmitter_Data_count(20),
      ADR4 => Transmitter_Data_count(21),
      ADR3 => Transmitter_Data_count(22),
      ADR0 => Transmitter_Data_count(23),
      ADR2 => Transmitter_Data_count(24),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(4)
    );
  Transmitter_Mcompar_n0017_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y4",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => Transmitter_Data_count(20),
      ADR4 => Transmitter_Data_count(21),
      ADR3 => Transmitter_Data_count(22),
      ADR0 => Transmitter_Data_count(23),
      ADR2 => Transmitter_Data_count(24),
      O => Transmitter_Mcompar_n0017_lutdi4_574
    );
  Receiver_Mcount_BitCounter_cy_3_Receiver_Mcount_BitCounter_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(3),
      O => Receiver_Result_3_0
    );
  Receiver_Mcount_BitCounter_cy_3_Receiver_Mcount_BitCounter_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(2),
      O => Receiver_Result_2_0
    );
  Receiver_Mcount_BitCounter_cy_3_Receiver_Mcount_BitCounter_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(1),
      O => Receiver_Result_1_0
    );
  Receiver_Mcount_BitCounter_cy_3_Receiver_Mcount_BitCounter_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(0),
      O => Receiver_Result_0_0
    );
  Receiver_BitCounter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(3),
      ADR5 => '1',
      O => Receiver_BitCounter_3_rt_583
    );
  N0_92_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_92_D5LUT_O_UNCONNECTED
    );
  ProtoComp14_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X12Y13"
    )
    port map (
      O => ProtoComp14_CYINITGND_0
    );
  Receiver_Mcount_BitCounter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y13"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp14_CYINITGND_0,
      CO(3) => Receiver_Mcount_BitCounter_cy_3_Q_2209,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Receiver_Result(3),
      O(2) => Receiver_Result(2),
      O(1) => Receiver_Result(1),
      O(0) => Receiver_Result(0),
      S(3) => Receiver_BitCounter_3_rt_583,
      S(2) => Receiver_BitCounter_2_rt_592,
      S(1) => Receiver_BitCounter_1_rt_595,
      S(0) => Receiver_Mcount_BitCounter_lut(0)
    );
  Receiver_BitCounter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(2),
      ADR5 => '1',
      O => Receiver_BitCounter_2_rt_592
    );
  N0_93_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_93_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(1),
      ADR5 => '1',
      O => Receiver_BitCounter_1_rt_595
    );
  N0_94_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_94_B5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(0),
      ADR5 => '1',
      O => Receiver_Mcount_BitCounter_lut(0)
    );
  N1_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y13",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_4_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_7_Receiver_Mcount_BitCounter_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(7),
      O => Receiver_Result_7_0
    );
  Receiver_Mcount_BitCounter_cy_7_Receiver_Mcount_BitCounter_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(6),
      O => Receiver_Result_6_0
    );
  Receiver_Mcount_BitCounter_cy_7_Receiver_Mcount_BitCounter_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(5),
      O => Receiver_Result_5_0
    );
  Receiver_Mcount_BitCounter_cy_7_Receiver_Mcount_BitCounter_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(4),
      O => Receiver_Result_4_0
    );
  Receiver_BitCounter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(7),
      ADR5 => '1',
      O => Receiver_BitCounter_7_rt_605
    );
  N0_88_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_88_D5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y14"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_3_Q_2209,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_7_Q_2214,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(7),
      O(2) => Receiver_Result(6),
      O(1) => Receiver_Result(5),
      O(0) => Receiver_Result(4),
      S(3) => Receiver_BitCounter_7_rt_605,
      S(2) => Receiver_BitCounter_6_rt_614,
      S(1) => Receiver_BitCounter_5_rt_617,
      S(0) => Receiver_BitCounter_4_rt_620
    );
  Receiver_BitCounter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(6),
      ADR5 => '1',
      O => Receiver_BitCounter_6_rt_614
    );
  N0_89_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_89_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(5),
      ADR5 => '1',
      O => Receiver_BitCounter_5_rt_617
    );
  N0_90_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_90_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(4),
      ADR5 => '1',
      O => Receiver_BitCounter_4_rt_620
    );
  N0_91_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_91_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_11_Receiver_Mcount_BitCounter_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(11),
      O => Receiver_Result_11_0
    );
  Receiver_Mcount_BitCounter_cy_11_Receiver_Mcount_BitCounter_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(10),
      O => Receiver_Result_10_0
    );
  Receiver_Mcount_BitCounter_cy_11_Receiver_Mcount_BitCounter_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(9),
      O => Receiver_Result_9_0
    );
  Receiver_Mcount_BitCounter_cy_11_Receiver_Mcount_BitCounter_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(8),
      O => Receiver_Result_8_0
    );
  Receiver_BitCounter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(11),
      ADR5 => '1',
      O => Receiver_BitCounter_11_rt_627
    );
  N0_84_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_84_D5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y15"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_7_Q_2214,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_11_Q_2219,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(11),
      O(2) => Receiver_Result(10),
      O(1) => Receiver_Result(9),
      O(0) => Receiver_Result(8),
      S(3) => Receiver_BitCounter_11_rt_627,
      S(2) => Receiver_BitCounter_10_rt_636,
      S(1) => Receiver_BitCounter_9_rt_639,
      S(0) => Receiver_BitCounter_8_rt_642
    );
  Receiver_BitCounter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(10),
      ADR5 => '1',
      O => Receiver_BitCounter_10_rt_636
    );
  N0_85_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_85_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(9),
      ADR5 => '1',
      O => Receiver_BitCounter_9_rt_639
    );
  N0_86_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_86_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(8),
      ADR5 => '1',
      O => Receiver_BitCounter_8_rt_642
    );
  N0_87_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_87_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_15_Receiver_Mcount_BitCounter_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(15),
      O => Receiver_Result_15_0
    );
  Receiver_Mcount_BitCounter_cy_15_Receiver_Mcount_BitCounter_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(14),
      O => Receiver_Result_14_0
    );
  Receiver_Mcount_BitCounter_cy_15_Receiver_Mcount_BitCounter_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(13),
      O => Receiver_Result_13_0
    );
  Receiver_Mcount_BitCounter_cy_15_Receiver_Mcount_BitCounter_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(12),
      O => Receiver_Result_12_0
    );
  Receiver_BitCounter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(15),
      ADR5 => '1',
      O => Receiver_BitCounter_15_rt_649
    );
  N0_80_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_80_D5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y16"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_11_Q_2219,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_15_Q_2224,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(15),
      O(2) => Receiver_Result(14),
      O(1) => Receiver_Result(13),
      O(0) => Receiver_Result(12),
      S(3) => Receiver_BitCounter_15_rt_649,
      S(2) => Receiver_BitCounter_14_rt_658,
      S(1) => Receiver_BitCounter_13_rt_661,
      S(0) => Receiver_BitCounter_12_rt_664
    );
  Receiver_BitCounter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(14),
      ADR5 => '1',
      O => Receiver_BitCounter_14_rt_658
    );
  N0_81_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_81_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(13),
      ADR5 => '1',
      O => Receiver_BitCounter_13_rt_661
    );
  N0_82_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_82_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(12),
      ADR5 => '1',
      O => Receiver_BitCounter_12_rt_664
    );
  N0_83_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_83_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_19_Receiver_Mcount_BitCounter_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(19),
      O => Receiver_Result_19_0
    );
  Receiver_Mcount_BitCounter_cy_19_Receiver_Mcount_BitCounter_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(18),
      O => Receiver_Result_18_0
    );
  Receiver_Mcount_BitCounter_cy_19_Receiver_Mcount_BitCounter_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(17),
      O => Receiver_Result_17_0
    );
  Receiver_Mcount_BitCounter_cy_19_Receiver_Mcount_BitCounter_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(16),
      O => Receiver_Result_16_0
    );
  Receiver_BitCounter_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(19),
      ADR5 => '1',
      O => Receiver_BitCounter_19_rt_671
    );
  N0_76_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_76_D5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y17"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_15_Q_2224,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_19_Q_2229,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(19),
      O(2) => Receiver_Result(18),
      O(1) => Receiver_Result(17),
      O(0) => Receiver_Result(16),
      S(3) => Receiver_BitCounter_19_rt_671,
      S(2) => Receiver_BitCounter_18_rt_680,
      S(1) => Receiver_BitCounter_17_rt_683,
      S(0) => Receiver_BitCounter_16_rt_686
    );
  Receiver_BitCounter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(18),
      ADR5 => '1',
      O => Receiver_BitCounter_18_rt_680
    );
  N0_77_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_77_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(17),
      ADR5 => '1',
      O => Receiver_BitCounter_17_rt_683
    );
  N0_78_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_78_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(16),
      ADR5 => '1',
      O => Receiver_BitCounter_16_rt_686
    );
  N0_79_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_79_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_23_Receiver_Mcount_BitCounter_cy_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(23),
      O => Receiver_Result_23_0
    );
  Receiver_Mcount_BitCounter_cy_23_Receiver_Mcount_BitCounter_cy_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(22),
      O => Receiver_Result_22_0
    );
  Receiver_Mcount_BitCounter_cy_23_Receiver_Mcount_BitCounter_cy_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(21),
      O => Receiver_Result_21_0
    );
  Receiver_Mcount_BitCounter_cy_23_Receiver_Mcount_BitCounter_cy_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(20),
      O => Receiver_Result_20_0
    );
  Receiver_BitCounter_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(23),
      ADR5 => '1',
      O => Receiver_BitCounter_23_rt_693
    );
  N0_72_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_72_D5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y18"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_19_Q_2229,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_23_Q_2234,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(23),
      O(2) => Receiver_Result(22),
      O(1) => Receiver_Result(21),
      O(0) => Receiver_Result(20),
      S(3) => Receiver_BitCounter_23_rt_693,
      S(2) => Receiver_BitCounter_22_rt_702,
      S(1) => Receiver_BitCounter_21_rt_705,
      S(0) => Receiver_BitCounter_20_rt_708
    );
  Receiver_BitCounter_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(22),
      ADR5 => '1',
      O => Receiver_BitCounter_22_rt_702
    );
  N0_73_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_73_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(21),
      ADR5 => '1',
      O => Receiver_BitCounter_21_rt_705
    );
  N0_74_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_74_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(20),
      ADR5 => '1',
      O => Receiver_BitCounter_20_rt_708
    );
  N0_75_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_75_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_27_Receiver_Mcount_BitCounter_cy_27_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(27),
      O => Receiver_Result_27_0
    );
  Receiver_Mcount_BitCounter_cy_27_Receiver_Mcount_BitCounter_cy_27_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(26),
      O => Receiver_Result_26_0
    );
  Receiver_Mcount_BitCounter_cy_27_Receiver_Mcount_BitCounter_cy_27_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(25),
      O => Receiver_Result_25_0
    );
  Receiver_Mcount_BitCounter_cy_27_Receiver_Mcount_BitCounter_cy_27_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(24),
      O => Receiver_Result_24_0
    );
  Receiver_BitCounter_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(27),
      ADR5 => '1',
      O => Receiver_BitCounter_27_rt_715
    );
  N0_68_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_68_D5LUT_O_UNCONNECTED
    );
  Receiver_Mcount_BitCounter_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y19"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_23_Q_2234,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_27_Q_2239,
      CO(2) => NLW_Receiver_Mcount_BitCounter_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(27),
      O(2) => Receiver_Result(26),
      O(1) => Receiver_Result(25),
      O(0) => Receiver_Result(24),
      S(3) => Receiver_BitCounter_27_rt_715,
      S(2) => Receiver_BitCounter_26_rt_724,
      S(1) => Receiver_BitCounter_25_rt_727,
      S(0) => Receiver_BitCounter_24_rt_730
    );
  Receiver_BitCounter_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(26),
      ADR5 => '1',
      O => Receiver_BitCounter_26_rt_724
    );
  N0_69_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_69_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(25),
      ADR5 => '1',
      O => Receiver_BitCounter_25_rt_727
    );
  N0_70_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_70_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(24),
      ADR5 => '1',
      O => Receiver_BitCounter_24_rt_730
    );
  N0_71_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_71_A5LUT_O_UNCONNECTED
    );
  Receiver_Result_31_Receiver_Result_31_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(31),
      O => Receiver_Result_31_0
    );
  Receiver_Result_31_Receiver_Result_31_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(30),
      O => Receiver_Result_30_0
    );
  Receiver_Result_31_Receiver_Result_31_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(29),
      O => Receiver_Result_29_0
    );
  Receiver_Result_31_Receiver_Result_31_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Result(28),
      O => Receiver_Result_28_0
    );
  Receiver_BitCounter_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => Receiver_BitCounter(31),
      O => Receiver_BitCounter_31_rt_737
    );
  Receiver_Mcount_BitCounter_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y20"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_27_Q_2239,
      CYINIT => '0',
      CO(3) => NLW_Receiver_Mcount_BitCounter_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_Receiver_Mcount_BitCounter_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_BitCounter_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_BitCounter_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_Receiver_Mcount_BitCounter_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Result(31),
      O(2) => Receiver_Result(30),
      O(1) => Receiver_Result(29),
      O(0) => Receiver_Result(28),
      S(3) => Receiver_BitCounter_31_rt_737,
      S(2) => Receiver_BitCounter_30_rt_744,
      S(1) => Receiver_BitCounter_29_rt_747,
      S(0) => Receiver_BitCounter_28_rt_750
    );
  Receiver_BitCounter_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(30),
      ADR5 => '1',
      O => Receiver_BitCounter_30_rt_744
    );
  N0_65_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_65_C5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"AAAAAAAAAAAAAAAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR0 => Receiver_BitCounter(29),
      ADR5 => '1',
      O => Receiver_BitCounter_29_rt_747
    );
  N0_66_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_66_B5LUT_O_UNCONNECTED
    );
  Receiver_BitCounter_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(28),
      ADR5 => '1',
      O => Receiver_BitCounter_28_rt_750
    );
  N0_67_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_67_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_3_CLK,
      I => Transmitter_Mcount_Data_count3,
      O => Transmitter_Data_count(3),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(3),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(3)
    );
  N0_60_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_60_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_2_CLK,
      I => Transmitter_Mcount_Data_count2,
      O => Transmitter_Data_count(2),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y2"
    )
    port map (
      CI => '0',
      CYINIT => Transmitter_e_actual_FSM_FFd1_2055,
      CO(3) => Transmitter_Mcount_Data_count_cy_3_Q_2246,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count3,
      O(2) => Transmitter_Mcount_Data_count2,
      O(1) => Transmitter_Mcount_Data_count1,
      O(0) => Transmitter_Mcount_Data_count,
      S(3) => Transmitter_Mcount_Data_count_lut(3),
      S(2) => Transmitter_Mcount_Data_count_lut(2),
      S(1) => Transmitter_Mcount_Data_count_lut(1),
      S(0) => Transmitter_Mcount_Data_count_lut(0)
    );
  Transmitter_Mcount_Data_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(2),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(2)
    );
  N0_61_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_61_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_1_CLK,
      I => Transmitter_Mcount_Data_count1,
      O => Transmitter_Data_count(1),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(1),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(1)
    );
  N0_62_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_62_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_0_CLK,
      I => Transmitter_Mcount_Data_count,
      O => Transmitter_Data_count(0),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(0),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(0)
    );
  N0_63_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y2",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_63_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_7_CLK,
      I => Transmitter_Mcount_Data_count7,
      O => Transmitter_Data_count(7),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"F000F000F000F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => Transmitter_Data_count(7),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(7)
    );
  N0_56_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_56_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_6_CLK,
      I => Transmitter_Mcount_Data_count6,
      O => Transmitter_Data_count(6),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y3"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_3_Q_2246,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_7_Q_2247,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count7,
      O(2) => Transmitter_Mcount_Data_count6,
      O(1) => Transmitter_Mcount_Data_count5,
      O(0) => Transmitter_Mcount_Data_count4,
      S(3) => Transmitter_Mcount_Data_count_lut(7),
      S(2) => Transmitter_Mcount_Data_count_lut(6),
      S(1) => Transmitter_Mcount_Data_count_lut(5),
      S(0) => Transmitter_Mcount_Data_count_lut(4)
    );
  Transmitter_Mcount_Data_count_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(6),
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(6)
    );
  N0_57_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_57_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_5_CLK,
      I => Transmitter_Mcount_Data_count5,
      O => Transmitter_Data_count(5),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(5),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(5)
    );
  N0_58_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_58_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_4_CLK,
      I => Transmitter_Mcount_Data_count4,
      O => Transmitter_Data_count(4),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(4),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(4)
    );
  N0_59_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y3",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_59_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_11 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_11_CLK,
      I => Transmitter_Mcount_Data_count11,
      O => Transmitter_Data_count(11),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(11),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(11)
    );
  N0_52_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_52_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_10 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_10_CLK,
      I => Transmitter_Mcount_Data_count10,
      O => Transmitter_Data_count(10),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y4"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_7_Q_2247,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_11_Q_2248,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count11,
      O(2) => Transmitter_Mcount_Data_count10,
      O(1) => Transmitter_Mcount_Data_count9,
      O(0) => Transmitter_Mcount_Data_count8,
      S(3) => Transmitter_Mcount_Data_count_lut(11),
      S(2) => Transmitter_Mcount_Data_count_lut(10),
      S(1) => Transmitter_Mcount_Data_count_lut(9),
      S(0) => Transmitter_Mcount_Data_count_lut(8)
    );
  Transmitter_Mcount_Data_count_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(10),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(10)
    );
  N0_53_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_53_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_9 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_9_CLK,
      I => Transmitter_Mcount_Data_count9,
      O => Transmitter_Data_count(9),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(9),
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(9)
    );
  N0_54_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_54_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_8 : X_FF
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_8_CLK,
      I => Transmitter_Mcount_Data_count8,
      O => Transmitter_Data_count(8),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(8),
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(8)
    );
  N0_55_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y4",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_55_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_15 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_15_CLK,
      I => Transmitter_Mcount_Data_count15,
      O => Transmitter_Data_count(15),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(15),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(15)
    );
  N0_48_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_48_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_14 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_14_CLK,
      I => Transmitter_Mcount_Data_count14,
      O => Transmitter_Data_count(14),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y5"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_11_Q_2248,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_15_Q_2249,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count15,
      O(2) => Transmitter_Mcount_Data_count14,
      O(1) => Transmitter_Mcount_Data_count13,
      O(0) => Transmitter_Mcount_Data_count12,
      S(3) => Transmitter_Mcount_Data_count_lut(15),
      S(2) => Transmitter_Mcount_Data_count_lut(14),
      S(1) => Transmitter_Mcount_Data_count_lut(13),
      S(0) => Transmitter_Mcount_Data_count_lut(12)
    );
  Transmitter_Mcount_Data_count_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(14),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(14)
    );
  N0_49_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_49_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_13 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_13_CLK,
      I => Transmitter_Mcount_Data_count13,
      O => Transmitter_Data_count(13),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(13),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(13)
    );
  N0_50_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_50_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_12 : X_FF
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_12_CLK,
      I => Transmitter_Mcount_Data_count12,
      O => Transmitter_Data_count(12),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(12),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(12)
    );
  N0_51_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y5",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_51_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_19 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_19_CLK,
      I => Transmitter_Mcount_Data_count19,
      O => Transmitter_Data_count(19),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(19),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(19)
    );
  N0_44_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_44_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_18 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_18_CLK,
      I => Transmitter_Mcount_Data_count18,
      O => Transmitter_Data_count(18),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y6"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_15_Q_2249,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_19_Q_2250,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count19,
      O(2) => Transmitter_Mcount_Data_count18,
      O(1) => Transmitter_Mcount_Data_count17,
      O(0) => Transmitter_Mcount_Data_count16,
      S(3) => Transmitter_Mcount_Data_count_lut(19),
      S(2) => Transmitter_Mcount_Data_count_lut(18),
      S(1) => Transmitter_Mcount_Data_count_lut(17),
      S(0) => Transmitter_Mcount_Data_count_lut(16)
    );
  Transmitter_Mcount_Data_count_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(18),
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(18)
    );
  N0_45_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_45_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_17 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_17_CLK,
      I => Transmitter_Mcount_Data_count17,
      O => Transmitter_Data_count(17),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(17),
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(17)
    );
  N0_46_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_46_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_16 : X_FF
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_16_CLK,
      I => Transmitter_Mcount_Data_count16,
      O => Transmitter_Data_count(16),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(16),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(16)
    );
  N0_47_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y6",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_47_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_23 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_23_CLK,
      I => Transmitter_Mcount_Data_count23,
      O => Transmitter_Data_count(23),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(23),
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(23)
    );
  N0_40_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_40_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_22 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_22_CLK,
      I => Transmitter_Mcount_Data_count22,
      O => Transmitter_Data_count(22),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y7"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_19_Q_2250,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_23_Q_2251,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count23,
      O(2) => Transmitter_Mcount_Data_count22,
      O(1) => Transmitter_Mcount_Data_count21,
      O(0) => Transmitter_Mcount_Data_count20,
      S(3) => Transmitter_Mcount_Data_count_lut(23),
      S(2) => Transmitter_Mcount_Data_count_lut(22),
      S(1) => Transmitter_Mcount_Data_count_lut(21),
      S(0) => Transmitter_Mcount_Data_count_lut(20)
    );
  Transmitter_Mcount_Data_count_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(22),
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(22)
    );
  N0_41_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_41_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_21 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_21_CLK,
      I => Transmitter_Mcount_Data_count21,
      O => Transmitter_Data_count(21),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(21),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(21)
    );
  N0_42_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_42_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_20 : X_FF
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_20_CLK,
      I => Transmitter_Mcount_Data_count20,
      O => Transmitter_Data_count(20),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(20),
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(20)
    );
  N0_43_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y7",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_43_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_27 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_27_CLK,
      I => Transmitter_Mcount_Data_count27,
      O => Transmitter_Data_count(27),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(27),
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(27)
    );
  N0_36_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_36_D5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_26 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_26_CLK,
      I => Transmitter_Mcount_Data_count26,
      O => Transmitter_Data_count(26),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y8"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_23_Q_2251,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_27_Q_2252,
      CO(2) => NLW_Transmitter_Mcount_Data_count_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count27,
      O(2) => Transmitter_Mcount_Data_count26,
      O(1) => Transmitter_Mcount_Data_count25,
      O(0) => Transmitter_Mcount_Data_count24,
      S(3) => Transmitter_Mcount_Data_count_lut(27),
      S(2) => Transmitter_Mcount_Data_count_lut(26),
      S(1) => Transmitter_Mcount_Data_count_lut(25),
      S(0) => Transmitter_Mcount_Data_count_lut(24)
    );
  Transmitter_Mcount_Data_count_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Transmitter_Data_count(26),
      ADR4 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(26)
    );
  N0_37_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_37_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_25 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_25_CLK,
      I => Transmitter_Mcount_Data_count25,
      O => Transmitter_Data_count(25),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(25),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(25)
    );
  N0_38_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_38_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_24 : X_FF
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_24_CLK,
      I => Transmitter_Mcount_Data_count24,
      O => Transmitter_Data_count(24),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(24),
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(24)
    );
  N0_39_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y8",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_39_A5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_31 : X_FF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_31_CLK,
      I => Transmitter_Mcount_Data_count31,
      O => Transmitter_Data_count(31),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"FFFF000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Transmitter_Data_count(31),
      ADR3 => '1',
      ADR4 => Transmitter_e_actual_FSM_FFd1_2055,
      O => Transmitter_Mcount_Data_count_lut(31)
    );
  Transmitter_Data_count_30 : X_FF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_30_CLK,
      I => Transmitter_Mcount_Data_count30,
      O => Transmitter_Data_count(30),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X12Y9"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_27_Q_2252,
      CYINIT => '0',
      CO(3) => NLW_Transmitter_Mcount_Data_count_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_Transmitter_Mcount_Data_count_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_Transmitter_Mcount_Data_count_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_Transmitter_Mcount_Data_count_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_Transmitter_Mcount_Data_count_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Transmitter_Mcount_Data_count31,
      O(2) => Transmitter_Mcount_Data_count30,
      O(1) => Transmitter_Mcount_Data_count29,
      O(0) => Transmitter_Mcount_Data_count28,
      S(3) => Transmitter_Mcount_Data_count_lut(31),
      S(2) => Transmitter_Mcount_Data_count_lut(30),
      S(1) => Transmitter_Mcount_Data_count_lut(29),
      S(0) => Transmitter_Mcount_Data_count_lut(28)
    );
  Transmitter_Mcount_Data_count_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Transmitter_Data_count(30),
      ADR4 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(30)
    );
  N0_33_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_33_C5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_29 : X_FF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_29_CLK,
      I => Transmitter_Mcount_Data_count29,
      O => Transmitter_Data_count(29),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(29),
      ADR3 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(29)
    );
  N0_34_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_34_B5LUT_O_UNCONNECTED
    );
  Transmitter_Data_count_28 : X_FF
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => '0'
    )
    port map (
      CE => Transmitter_n0077_inv,
      CLK => NlwBufferSignal_Transmitter_Data_count_28_CLK,
      I => Transmitter_Mcount_Data_count28,
      O => Transmitter_Data_count(28),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_Mcount_Data_count_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(28),
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(28)
    );
  N0_35_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X12Y9",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_35_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_3_CLK,
      I => Receiver_Mcount_Data_count3,
      O => Receiver_Data_count(3),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(3),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(3)
    );
  N0_124_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_124_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_2 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_2_CLK,
      I => Receiver_Mcount_Data_count2,
      O => Receiver_Data_count(2),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y11"
    )
    port map (
      CI => '0',
      CYINIT => Receiver_e_actual_FSM_FFd1_2171,
      CO(3) => Receiver_Mcount_Data_count_cy_3_Q_2257,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count3,
      O(2) => Receiver_Mcount_Data_count2,
      O(1) => Receiver_Mcount_Data_count1,
      O(0) => Receiver_Mcount_Data_count,
      S(3) => Receiver_Mcount_Data_count_lut(3),
      S(2) => Receiver_Mcount_Data_count_lut(2),
      S(1) => Receiver_Mcount_Data_count_lut(1),
      S(0) => Receiver_Mcount_Data_count_lut(0)
    );
  Receiver_Mcount_Data_count_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(2),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(2)
    );
  N0_125_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_125_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_1 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_1_CLK,
      I => Receiver_Mcount_Data_count1,
      O => Receiver_Data_count(1),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(1),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(1)
    );
  N0_126_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_126_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_0 : X_FF
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_0_CLK,
      I => Receiver_Mcount_Data_count,
      O => Receiver_Data_count(0),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Receiver_Data_count(0),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(0)
    );
  N0_127_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y11",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_127_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_7_CLK,
      I => Receiver_Mcount_Data_count7,
      O => Receiver_Data_count(7),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Receiver_Data_count(7),
      ADR4 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(7)
    );
  N0_120_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_120_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_6_CLK,
      I => Receiver_Mcount_Data_count6,
      O => Receiver_Data_count(6),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y12"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_3_Q_2257,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_7_Q_2262,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count7,
      O(2) => Receiver_Mcount_Data_count6,
      O(1) => Receiver_Mcount_Data_count5,
      O(0) => Receiver_Mcount_Data_count4,
      S(3) => Receiver_Mcount_Data_count_lut(7),
      S(2) => Receiver_Mcount_Data_count_lut(6),
      S(1) => Receiver_Mcount_Data_count_lut(5),
      S(0) => Receiver_Mcount_Data_count_lut(4)
    );
  Receiver_Mcount_Data_count_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(6),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(6)
    );
  N0_121_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_121_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_5_CLK,
      I => Receiver_Mcount_Data_count5,
      O => Receiver_Data_count(5),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(5),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(5)
    );
  N0_122_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_122_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_4_CLK,
      I => Receiver_Mcount_Data_count4,
      O => Receiver_Data_count(4),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(4),
      ADR4 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(4)
    );
  N0_123_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y12",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_123_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_11 : X_FF
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_11_CLK,
      I => Receiver_Mcount_Data_count11,
      O => Receiver_Data_count(11),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_11_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(11),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(11)
    );
  N0_116_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_116_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_10 : X_FF
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_10_CLK,
      I => Receiver_Mcount_Data_count10,
      O => Receiver_Data_count(10),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y13"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_7_Q_2262,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_11_Q_2267,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count11,
      O(2) => Receiver_Mcount_Data_count10,
      O(1) => Receiver_Mcount_Data_count9,
      O(0) => Receiver_Mcount_Data_count8,
      S(3) => Receiver_Mcount_Data_count_lut(11),
      S(2) => Receiver_Mcount_Data_count_lut(10),
      S(1) => Receiver_Mcount_Data_count_lut(9),
      S(0) => Receiver_Mcount_Data_count_lut(8)
    );
  Receiver_Mcount_Data_count_lut_10_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(10),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(10)
    );
  N0_117_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_117_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_9 : X_FF
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_9_CLK,
      I => Receiver_Mcount_Data_count9,
      O => Receiver_Data_count(9),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_9_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(9),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(9)
    );
  N0_118_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_118_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_8 : X_FF
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_8_CLK,
      I => Receiver_Mcount_Data_count8,
      O => Receiver_Data_count(8),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_8_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(8),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(8)
    );
  N0_119_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_119_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_15 : X_FF
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_15_CLK,
      I => Receiver_Mcount_Data_count15,
      O => Receiver_Data_count(15),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_15_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(15),
      ADR4 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(15)
    );
  N0_112_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_112_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_14 : X_FF
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_14_CLK,
      I => Receiver_Mcount_Data_count14,
      O => Receiver_Data_count(14),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y14"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_11_Q_2267,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_15_Q_2272,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count15,
      O(2) => Receiver_Mcount_Data_count14,
      O(1) => Receiver_Mcount_Data_count13,
      O(0) => Receiver_Mcount_Data_count12,
      S(3) => Receiver_Mcount_Data_count_lut(15),
      S(2) => Receiver_Mcount_Data_count_lut(14),
      S(1) => Receiver_Mcount_Data_count_lut(13),
      S(0) => Receiver_Mcount_Data_count_lut(12)
    );
  Receiver_Mcount_Data_count_lut_14_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(14),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(14)
    );
  N0_113_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_113_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_13 : X_FF
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_13_CLK,
      I => Receiver_Mcount_Data_count13,
      O => Receiver_Data_count(13),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_13_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(13),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(13)
    );
  N0_114_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_114_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_12 : X_FF
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_12_CLK,
      I => Receiver_Mcount_Data_count12,
      O => Receiver_Data_count(12),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_12_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Receiver_Data_count(12),
      ADR4 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(12)
    );
  N0_115_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y14",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_115_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_19 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_19_CLK,
      I => Receiver_Mcount_Data_count19,
      O => Receiver_Data_count(19),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_19_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(19),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(19)
    );
  N0_108_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_108_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_18 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_18_CLK,
      I => Receiver_Mcount_Data_count18,
      O => Receiver_Data_count(18),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y15"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_15_Q_2272,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_19_Q_2277,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count19,
      O(2) => Receiver_Mcount_Data_count18,
      O(1) => Receiver_Mcount_Data_count17,
      O(0) => Receiver_Mcount_Data_count16,
      S(3) => Receiver_Mcount_Data_count_lut(19),
      S(2) => Receiver_Mcount_Data_count_lut(18),
      S(1) => Receiver_Mcount_Data_count_lut(17),
      S(0) => Receiver_Mcount_Data_count_lut(16)
    );
  Receiver_Mcount_Data_count_lut_18_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(18),
      ADR0 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(18)
    );
  N0_109_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_109_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_17 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_17_CLK,
      I => Receiver_Mcount_Data_count17,
      O => Receiver_Data_count(17),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_17_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(17),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(17)
    );
  N0_110_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_110_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_16 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_16_CLK,
      I => Receiver_Mcount_Data_count16,
      O => Receiver_Data_count(16),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_16_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(16),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(16)
    );
  N0_111_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_111_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_23 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_23_CLK,
      I => Receiver_Mcount_Data_count23,
      O => Receiver_Data_count(23),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_23_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(23),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(23)
    );
  N0_104_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_104_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_22 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_22_CLK,
      I => Receiver_Mcount_Data_count22,
      O => Receiver_Data_count(22),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y16"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_19_Q_2277,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_23_Q_2282,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_23_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_23_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_23_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count23,
      O(2) => Receiver_Mcount_Data_count22,
      O(1) => Receiver_Mcount_Data_count21,
      O(0) => Receiver_Mcount_Data_count20,
      S(3) => Receiver_Mcount_Data_count_lut(23),
      S(2) => Receiver_Mcount_Data_count_lut(22),
      S(1) => Receiver_Mcount_Data_count_lut(21),
      S(0) => Receiver_Mcount_Data_count_lut(20)
    );
  Receiver_Mcount_Data_count_lut_22_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(22),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(22)
    );
  N0_105_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_105_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_21 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_21_CLK,
      I => Receiver_Mcount_Data_count21,
      O => Receiver_Data_count(21),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_21_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(21),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(21)
    );
  N0_106_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_106_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_20 : X_FF
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_20_CLK,
      I => Receiver_Mcount_Data_count20,
      O => Receiver_Data_count(20),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_20_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(20),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(20)
    );
  N0_107_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_107_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_27 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_27_CLK,
      I => Receiver_Mcount_Data_count27,
      O => Receiver_Data_count(27),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_27_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(27),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(27)
    );
  N0_100_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_100_D5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_26 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_26_CLK,
      I => Receiver_Mcount_Data_count26,
      O => Receiver_Data_count(26),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y17"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_23_Q_2282,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_27_Q_2287,
      CO(2) => NLW_Receiver_Mcount_Data_count_cy_27_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_cy_27_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_cy_27_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count27,
      O(2) => Receiver_Mcount_Data_count26,
      O(1) => Receiver_Mcount_Data_count25,
      O(0) => Receiver_Mcount_Data_count24,
      S(3) => Receiver_Mcount_Data_count_lut(27),
      S(2) => Receiver_Mcount_Data_count_lut(26),
      S(1) => Receiver_Mcount_Data_count_lut(25),
      S(0) => Receiver_Mcount_Data_count_lut(24)
    );
  Receiver_Mcount_Data_count_lut_26_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(26),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(26)
    );
  N0_101_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_101_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_25 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_25_CLK,
      I => Receiver_Mcount_Data_count25,
      O => Receiver_Data_count(25),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_25_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(25),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(25)
    );
  N0_102_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_102_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_24 : X_FF
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_24_CLK,
      I => Receiver_Mcount_Data_count24,
      O => Receiver_Data_count(24),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_24_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(24),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(24)
    );
  N0_103_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_103_A5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_31 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_31_CLK,
      I => Receiver_Mcount_Data_count31,
      O => Receiver_Data_count(31),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_31_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"CCCCCCCC00000000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => Receiver_Data_count(31),
      ADR4 => '1',
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      O => Receiver_Mcount_Data_count_lut(31)
    );
  Receiver_Data_count_30 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_30_CLK,
      I => Receiver_Mcount_Data_count30,
      O => Receiver_Data_count(30),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y18"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_27_Q_2287,
      CYINIT => '0',
      CO(3) => NLW_Receiver_Mcount_Data_count_xor_31_CO_3_UNCONNECTED,
      CO(2) => NLW_Receiver_Mcount_Data_count_xor_31_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcount_Data_count_xor_31_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcount_Data_count_xor_31_CO_0_UNCONNECTED,
      DI(3) => NLW_Receiver_Mcount_Data_count_xor_31_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Receiver_Mcount_Data_count31,
      O(2) => Receiver_Mcount_Data_count30,
      O(1) => Receiver_Mcount_Data_count29,
      O(0) => Receiver_Mcount_Data_count28,
      S(3) => Receiver_Mcount_Data_count_lut(31),
      S(2) => Receiver_Mcount_Data_count_lut(30),
      S(1) => Receiver_Mcount_Data_count_lut(29),
      S(0) => Receiver_Mcount_Data_count_lut(28)
    );
  Receiver_Mcount_Data_count_lut_30_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(30),
      ADR1 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(30)
    );
  N0_97_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_97_C5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_29 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_29_CLK,
      I => Receiver_Mcount_Data_count29,
      O => Receiver_Data_count(29),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_29_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Receiver_Data_count(29),
      ADR2 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(29)
    );
  N0_98_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_98_B5LUT_O_UNCONNECTED
    );
  Receiver_Data_count_28 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      CE => Receiver_n0078_inv,
      CLK => NlwBufferSignal_Receiver_Data_count_28_CLK,
      I => Receiver_Mcount_Data_count28,
      O => Receiver_Data_count(28),
      RST => GND,
      SET => GND
    );
  Receiver_Mcount_Data_count_lut_28_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(28),
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(28)
    );
  N0_99_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_99_A5LUT_O_UNCONNECTED
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => Receiver_BitCounter(16),
      ADR0 => Receiver_BitCounter(17),
      ADR1 => Receiver_BitCounter(18),
      ADR2 => Receiver_BitCounter(19),
      ADR4 => Receiver_BitCounter(20),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q_1270
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => Receiver_BitCounter(16),
      ADR0 => Receiver_BitCounter(17),
      ADR1 => Receiver_BitCounter(18),
      ADR2 => Receiver_BitCounter(19),
      ADR4 => Receiver_BitCounter(20),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3_1271
    );
  ProtoComp23_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      O => ProtoComp23_CYINITVCC_1
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y14"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp23_CYINITVCC_1,
      CO(3) => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q_2293,
      CO(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3_1271,
      DI(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2_1280,
      DI(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1_1287,
      DI(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi_1294,
      O(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_0_UNCONNECTED,
      S(3) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q_1270,
      S(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q_1279,
      S(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q_1286,
      S(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q_1293
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => Receiver_BitCounter(11),
      ADR2 => Receiver_BitCounter(12),
      ADR0 => Receiver_BitCounter(13),
      ADR4 => Receiver_BitCounter(14),
      ADR3 => Receiver_BitCounter(15),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q_1279
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => Receiver_BitCounter(11),
      ADR2 => Receiver_BitCounter(12),
      ADR0 => Receiver_BitCounter(13),
      ADR4 => Receiver_BitCounter(14),
      ADR3 => Receiver_BitCounter(15),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2_1280
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"0000001000000010"
    )
    port map (
      ADR2 => Receiver_BitCounter(6),
      ADR1 => Receiver_BitCounter(7),
      ADR0 => Receiver_BitCounter(8),
      ADR4 => Receiver_BitCounter(9),
      ADR3 => Receiver_BitCounter(10),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q_1286
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FFFFFFEE"
    )
    port map (
      ADR2 => '1',
      ADR1 => Receiver_BitCounter(7),
      ADR0 => Receiver_BitCounter(8),
      ADR4 => Receiver_BitCounter(9),
      ADR3 => Receiver_BitCounter(10),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1_1287
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"0040000000400000"
    )
    port map (
      ADR2 => Receiver_BitCounter(4),
      ADR4 => Receiver_BitCounter(2),
      ADR1 => Receiver_BitCounter(1),
      ADR0 => Receiver_BitCounter(3),
      ADR3 => Receiver_BitCounter(5),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q_1293
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X14Y14",
      INIT => X"FFA0FFA0"
    )
    port map (
      ADR2 => Receiver_BitCounter(4),
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => Receiver_BitCounter(3),
      ADR3 => Receiver_BitCounter(5),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi_1294
    );
  Data_read_IBUF : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_read_IBUF_1305,
      I => Data_read
    );
  ProtoComp25_IMUX : X_BUF
    generic map(
      LOC => "PAD199",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_read_IBUF_1305,
      O => Data_read_IBUF_0
    );
  RD_IBUF : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD_IBUF_1308,
      I => RD
    );
  ProtoComp25_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD180",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_1308,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD201"
    )
    port map (
      I => NlwBufferSignal_TD_OBUF_I,
      O => TD
    );
  Full_OBUF : X_OBUF
    generic map(
      LOC => "PAD200"
    )
    port map (
      I => NlwBufferSignal_Full_OBUF_I,
      O => Full
    );
  TX_RDY_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
    )
    port map (
      I => NlwBufferSignal_TX_RDY_OBUF_I,
      O => TX_RDY
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 202 ps
    )
    port map (
      O => Clk_BUFGP_IBUFG_1317,
      I => Clk
    );
  ProtoComp25_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_1317,
      O => Clk_BUFGP_IBUFG_0
    );
  Ack_in_OBUF : X_OBUF
    generic map(
      LOC => "PAD196"
    )
    port map (
      I => NlwBufferSignal_Ack_in_OBUF_I,
      O => Ack_in
    );
  Data_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD202"
    )
    port map (
      I => NlwBufferSignal_Data_out_0_OBUF_I,
      O => Data_out(0)
    );
  Data_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD203"
    )
    port map (
      I => NlwBufferSignal_Data_out_1_OBUF_I,
      O => Data_out(1)
    );
  Data_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD204"
    )
    port map (
      I => NlwBufferSignal_Data_out_2_OBUF_I,
      O => Data_out(2)
    );
  Data_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD214"
    )
    port map (
      I => NlwBufferSignal_Data_out_3_OBUF_I,
      O => Data_out(3)
    );
  Data_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD206"
    )
    port map (
      I => NlwBufferSignal_Data_out_4_OBUF_I,
      O => Data_out(4)
    );
  Data_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD213"
    )
    port map (
      I => NlwBufferSignal_Data_out_5_OBUF_I,
      O => Data_out(5)
    );
  Data_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD216"
    )
    port map (
      I => NlwBufferSignal_Data_out_6_OBUF_I,
      O => Data_out(6)
    );
  Data_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD215"
    )
    port map (
      I => NlwBufferSignal_Data_out_7_OBUF_I,
      O => Data_out(7)
    );
  Valid_D_IBUF : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      O => Valid_D_IBUF_1338,
      I => Valid_D
    );
  ProtoComp25_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD197",
      PATHPULSE => 202 ps
    )
    port map (
      I => Valid_D_IBUF_1338,
      O => Valid_D_IBUF_0
    );
  Empty_OBUF : X_OBUF
    generic map(
      LOC => "PAD157"
    )
    port map (
      I => NlwBufferSignal_Empty_OBUF_I,
      O => Empty
    );
  Reset_IBUF : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      O => Receiver_Reset_inv_non_inverted,
      I => Reset
    );
  ProtoComp27_IMUX : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp27_IINV_OUT,
      O => Receiver_Reset_inv
    );
  ProtoComp27_IINV : X_INV
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Reset_inv_non_inverted,
      O => ProtoComp27_IINV_OUT
    );
  Data_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_0_IBUF_1347,
      I => Data_in(0)
    );
  ProtoComp25_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_0_IBUF_1347,
      O => Data_in_0_IBUF_0
    );
  Data_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_1_IBUF_1350,
      I => Data_in(1)
    );
  ProtoComp25_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_1_IBUF_1350,
      O => Data_in_1_IBUF_0
    );
  Data_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_2_IBUF_1353,
      I => Data_in(2)
    );
  ProtoComp25_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_2_IBUF_1353,
      O => Data_in_2_IBUF_0
    );
  Data_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_3_IBUF_1356,
      I => Data_in(3)
    );
  ProtoComp25_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_3_IBUF_1356,
      O => Data_in_3_IBUF_0
    );
  Data_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_4_IBUF_1359,
      I => Data_in(4)
    );
  ProtoComp25_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_4_IBUF_1359,
      O => Data_in_4_IBUF_0
    );
  Data_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_5_IBUF_1362,
      I => Data_in(5)
    );
  ProtoComp25_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_5_IBUF_1362,
      O => Data_in_5_IBUF_0
    );
  Data_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_6_IBUF_1365,
      I => Data_in(6)
    );
  ProtoComp25_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_6_IBUF_1365,
      O => Data_in_6_IBUF_0
    );
  Data_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_7_IBUF_1368,
      I => Data_in(7)
    );
  ProtoComp25_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_7_IBUF_1368,
      O => Data_in_7_IBUF_0
    );
  Clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_Clk_BUFGP_BUFG_IN,
      O => Clk_BUFGP
    );
  TX_RDY_OBUF_TX_RDY_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Ack_in_OBUF_1376,
      O => Ack_in_OBUF_0
    );
  Transmitter_e_actual_EOT1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"0055005500550055"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR5 => '1',
      O => TX_RDY_OBUF_2057
    );
  Valid_D_INV_15_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"FFFAFFFA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => Valid_D_IBUF_0,
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR0 => Transmitter_e_actual_FSM_FFd1_2055,
      O => Valid_D_INV_15_o
    );
  Ack_in_583 : X_FF
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Ack_in_CLK,
      I => Valid_D_INV_15_o,
      O => Ack_in_OBUF_1376,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Shift_Q_AUX_3_Shift_Q_AUX_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX_7_pack_7,
      O => Shift_Q_AUX(7)
    );
  Shift_Q_AUX_3_Shift_Q_AUX_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX_6_pack_5,
      O => Shift_Q_AUX(6)
    );
  Shift_Q_AUX_3_Shift_Q_AUX_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX_5_pack_3,
      O => Shift_Q_AUX(5)
    );
  Shift_Q_AUX_3_Shift_Q_AUX_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX_4_pack_1,
      O => Shift_Q_AUX(4)
    );
  Shift_Q_AUX_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_3_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_3_IN,
      O => Shift_Q_AUX(3),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  LineRD_in_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => LineRD_in_2169,
      O => LineRD_in_rt_1384
    );
  Shift_Q_AUX_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_7_CLK,
      I => LineRD_in_rt_1384,
      O => Shift_Q_AUX_7_pack_7,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_2_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_2_IN,
      O => Shift_Q_AUX(2),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_7_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Shift_Q_AUX(7),
      O => Shift_Q_AUX_7_rt_1392
    );
  Shift_Q_AUX_6 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_6_CLK,
      I => Shift_Q_AUX_7_rt_1392,
      O => Shift_Q_AUX_6_pack_5,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_1_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_1_IN,
      O => Shift_Q_AUX(1),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_6_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Shift_Q_AUX(6),
      O => Shift_Q_AUX_6_rt_1397
    );
  Shift_Q_AUX_5 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_5_CLK,
      I => Shift_Q_AUX_6_rt_1397,
      O => Shift_Q_AUX_5_pack_3,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_0_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_0_IN,
      O => Shift_Q_AUX(0),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Receiver_Mmux_Valid_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"C000C000C000C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => Receiver_e_actual_FSM_FFd2_2170,
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      ADR5 => '1',
      O => Valid_out
    );
  Shift_Q_AUX_5_rt : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Shift_Q_AUX(5),
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => '1',
      O => Shift_Q_AUX_5_rt_1401
    );
  Shift_Q_AUX_4 : X_FF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_4_CLK,
      I => Shift_Q_AUX_5_rt_1401,
      O => Shift_Q_AUX_4_pack_1,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y11",
      INIT => X"DDFFCCFFFDFFFCFF"
    )
    port map (
      ADR3 => Fifo_write_0,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310,
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14_2316
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_6,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2)
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_ram_wr_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Fifo_write_0,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310,
      O => Internal_memory_BU2_U0_grf_rf_ram_wr_en
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_3_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_3_GND_51_o_mux_2_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => X"7F7F80807F7F8080"
    )
    port map (
      ADR3 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_3_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_3_GND_51_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => X"6C6C6C6C"
    )
    port map (
      ADR4 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => '1',
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_2_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_2_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_6,
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_1_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_3_GND_51_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => X"5555AAAA5555AAAA"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => '1',
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_1_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '1'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_0_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_3_GND_51_o_mux_2_OUT11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_0_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y13",
      INIT => X"00F000F000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => Data_read_IBUF_0,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      O => Internal_memory_BU2_U0_grf_rf_ram_rd_en
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK,
      I => '0',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK,
      I => '0',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_mem_gbm_tmp_ram_rd_en1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y14",
      INIT => X"FFFFFFFF00F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      ADR2 => Data_read_IBUF_0,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      O => Internal_memory_BU2_U0_grf_rf_mem_gbm_tmp_ram_rd_en
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i : X_FF
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o,
      O => Full_OBUF_2298,
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"EEEEAAAAEEECAAA0"
    )
    port map (
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310,
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12_2337,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o11,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o14,
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2317,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => X"8421000000008421"
    )
    port map (
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o11
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => X"0C00030004000100"
    )
    port map (
      ADR0 => Data_read_IBUF_0,
      ADR3 => Fifo_write_0,
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12_2337
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_9,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2)
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => X"8008200240041001"
    )
    port map (
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11_2314
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_3_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(3),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_3_GND_45_o_mux_2_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => X"5FFFA0005FFFA000"
    )
    port map (
      ADR1 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_3_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_3_GND_45_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => X"5AAA5AAA"
    )
    port map (
      ADR4 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR1 => '1',
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_2_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_2_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_9,
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_1_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_3_GND_45_o_mux_2_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => '1',
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_1_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => '1'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_0_Q,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_3_GND_45_o_mux_2_OUT11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y13",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_0_Q
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK,
      I => '0',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => X"0000FF000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_0,
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_2049,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y14",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0_CLK,
      I => '0',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_1519,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_0
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_pack_1,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_2050
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X6Y15",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_IN,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_2343,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt : X_LUT5
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X6Y15",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_2050,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt_1520
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X6Y15",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt_1520,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_1519,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X6Y15",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_IN,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_2047,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt : X_LUT5
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X6Y15",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_2049,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt_1523
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X6Y15",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt_1523,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_pack_1,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"2030000000002030"
    )
    port map (
      ADR3 => Fifo_write_0,
      ADR2 => Data_read_IBUF_0,
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12_2315
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2310,
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => X"0F00AFAACFCCEFEE"
    )
    port map (
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2317
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o,
      O => Empty_OBUF_2300,
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y11",
      INIT => X"EAEAEAEAEAEAEAC0"
    )
    port map (
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12_2315,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11_2314,
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14_2316,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1,
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2317,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"F7F7FFF7F3F3FFF3"
    )
    port map (
      ADR1 => Data_read_IBUF_0,
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2311,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o14
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_wr_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(1),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"0AFFCEFF0A0ACECE"
    )
    port map (
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X7Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2 : X_FF
    generic map(
      LOC => "SLICE_X7Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1 : X_FF
    generic map(
      LOC => "SLICE_X7Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0 : X_FF
    generic map(
      LOC => "SLICE_X7Y13",
      INIT => '0'
    )
    port map (
      CE => Internal_memory_BU2_U0_grf_rf_ram_rd_en,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y14",
      INIT => X"0F000F000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_2343,
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_2048,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_pack_1,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_2048
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X7Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot_1592,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_2049,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X7Y15",
      INIT => X"00FF000000FF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_2049,
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_2050,
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot_1592
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X7Y15",
      INIT => X"44444444"
    )
    port map (
      ADR2 => '1',
      ADR0 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_2047,
      ADR1 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_2048,
      ADR3 => '1',
      ADR4 => '1',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot_1596
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X7Y15",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot_1596,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_pack_1,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Transmitter_TX1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y3",
      INIT => X"0000000100000000"
    )
    port map (
      ADR5 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_Data_count(9),
      ADR0 => Transmitter_Data_count(8),
      ADR1 => Transmitter_Data_count(7),
      ADR2 => Transmitter_Data_count(6),
      ADR3 => Transmitter_Data_count(5),
      O => Transmitter_TX
    );
  Transmitter_TX2 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => Transmitter_Data_count(3),
      ADR0 => Transmitter_Data_count(4),
      ADR2 => Transmitter_Data_count(31),
      ADR3 => Transmitter_Data_count(30),
      ADR4 => Transmitter_Data_count(29),
      ADR5 => Transmitter_Data_count(28),
      O => Transmitter_TX1_2323
    );
  Transmitter_TX4 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Transmitter_Data_count(20),
      ADR0 => Transmitter_Data_count(21),
      ADR4 => Transmitter_Data_count(19),
      ADR1 => Transmitter_Data_count(18),
      ADR2 => Transmitter_Data_count(17),
      ADR3 => Transmitter_Data_count(16),
      O => Transmitter_TX3_2325
    );
  Transmitter_n0077_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"00000C0CF0F00C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR4 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => StartTX_2053,
      ADR5 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      O => Transmitter_n0077_inv
    );
  Transmitter_TX5 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => Transmitter_Data_count(14),
      ADR4 => Transmitter_Data_count(15),
      ADR0 => Transmitter_Data_count(13),
      ADR5 => Transmitter_Data_count(12),
      ADR2 => Transmitter_Data_count(11),
      ADR1 => Transmitter_Data_count(10),
      O => Transmitter_TX4_2326
    );
  Transmitter_TX3 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y5",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Transmitter_Data_count(26),
      ADR4 => Transmitter_Data_count(27),
      ADR1 => Transmitter_Data_count(25),
      ADR0 => Transmitter_Data_count(24),
      ADR2 => Transmitter_Data_count(23),
      ADR3 => Transmitter_Data_count(22),
      O => Transmitter_TX2_2324
    );
  Receiver_BitCounter_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_3_CLK,
      I => Receiver_BitCounter_3_rstpot_1651,
      O => Receiver_BitCounter(3),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_3_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(3),
      ADR3 => Receiver_Result_3_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_3_rstpot_1651
    );
  Receiver_BitCounter_2 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_2_CLK,
      I => Receiver_BitCounter_2_rstpot_1645,
      O => Receiver_BitCounter(2),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_2_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"00000000FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(2),
      ADR2 => Receiver_Result_2_0,
      ADR5 => Receiver_n0063,
      O => Receiver_BitCounter_2_rstpot_1645
    );
  Receiver_BitCounter_1 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_1_CLK,
      I => Receiver_BitCounter_1_rstpot_1658,
      O => Receiver_BitCounter(1),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_1_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"00FF000000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(1),
      ADR2 => Receiver_Result_1_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_1_rstpot_1658
    );
  Receiver_BitCounter_0 : X_FF
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_0_CLK,
      I => Receiver_BitCounter_0_rstpot_1660,
      O => Receiver_BitCounter(0),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_0_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y13",
      INIT => X"0F0F0F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(0),
      ADR3 => Receiver_Result_0_0,
      ADR2 => Receiver_n0063,
      O => Receiver_BitCounter_0_rstpot_1660
    );
  Receiver_BitCounter_7 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_7_CLK,
      I => Receiver_BitCounter_7_rstpot_1676,
      O => Receiver_BitCounter(7),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_7_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"00FF003300CC0000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(7),
      ADR5 => Receiver_Result_7_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_7_rstpot_1676
    );
  Receiver_BitCounter_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_6_CLK,
      I => Receiver_BitCounter_6_rstpot_1670,
      O => Receiver_BitCounter(6),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_6_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0000FF000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR3 => Receiver_BitCounter(6),
      ADR2 => Receiver_Result_6_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_6_rstpot_1670
    );
  Receiver_BitCounter_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_5_CLK,
      I => Receiver_BitCounter_5_rstpot_1683,
      O => Receiver_BitCounter(5),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_5_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0000FA500000FA50"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR0 => Receiver_Reset_inv,
      ADR3 => Receiver_BitCounter(5),
      ADR2 => Receiver_Result_5_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_5_rstpot_1683
    );
  Receiver_BitCounter_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_4_CLK,
      I => Receiver_BitCounter_4_rstpot_1685,
      O => Receiver_BitCounter(4),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_4_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y14",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(4),
      ADR3 => Receiver_Result_4_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_4_rstpot_1685
    );
  Receiver_BitCounter_11 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_11_CLK,
      I => Receiver_BitCounter_11_rstpot_1701,
      O => Receiver_BitCounter(11),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_11_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(11),
      ADR3 => Receiver_Result_11_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_11_rstpot_1701
    );
  Receiver_BitCounter_10 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_10_CLK,
      I => Receiver_BitCounter_10_rstpot_1695,
      O => Receiver_BitCounter(10),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_10_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"00000000FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(10),
      ADR2 => Receiver_Result_10_0,
      ADR5 => Receiver_n0063,
      O => Receiver_BitCounter_10_rstpot_1695
    );
  Receiver_BitCounter_9 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_9_CLK,
      I => Receiver_BitCounter_9_rstpot_1708,
      O => Receiver_BitCounter(9),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_9_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"00FF000000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(9),
      ADR2 => Receiver_Result_9_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_9_rstpot_1708
    );
  Receiver_BitCounter_8 : X_FF
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_8_CLK,
      I => Receiver_BitCounter_8_rstpot_1710,
      O => Receiver_BitCounter(8),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_8_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"0F0F0F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(8),
      ADR3 => Receiver_Result_8_0,
      ADR2 => Receiver_n0063,
      O => Receiver_BitCounter_8_rstpot_1710
    );
  Receiver_BitCounter_15 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_15_CLK,
      I => Receiver_BitCounter_15_rstpot_1726,
      O => Receiver_BitCounter(15),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_15_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"00FF000F00F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(15),
      ADR5 => Receiver_Result_15_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_15_rstpot_1726
    );
  Receiver_BitCounter_14 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_14_CLK,
      I => Receiver_BitCounter_14_rstpot_1720,
      O => Receiver_BitCounter(14),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_14_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"0000FC300000FC30"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR3 => Receiver_BitCounter(14),
      ADR2 => Receiver_Result_14_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_14_rstpot_1720
    );
  Receiver_BitCounter_13 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_13_CLK,
      I => Receiver_BitCounter_13_rstpot_1733,
      O => Receiver_BitCounter(13),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_13_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"0000FF000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR3 => Receiver_BitCounter(13),
      ADR2 => Receiver_Result_13_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_13_rstpot_1733
    );
  Receiver_BitCounter_12 : X_FF
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_12_CLK,
      I => Receiver_BitCounter_12_rstpot_1735,
      O => Receiver_BitCounter(12),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_12_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(12),
      ADR3 => Receiver_Result_12_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_12_rstpot_1735
    );
  Receiver_BitCounter_19 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_19_CLK,
      I => Receiver_BitCounter_19_rstpot_1751,
      O => Receiver_BitCounter(19),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_19_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(19),
      ADR3 => Receiver_Result_19_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_19_rstpot_1751
    );
  Receiver_BitCounter_18 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_18_CLK,
      I => Receiver_BitCounter_18_rstpot_1745,
      O => Receiver_BitCounter(18),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_18_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"0000FC300000FC30"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR3 => Receiver_BitCounter(18),
      ADR2 => Receiver_Result_18_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_18_rstpot_1745
    );
  Receiver_BitCounter_17 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_17_CLK,
      I => Receiver_BitCounter_17_rstpot_1758,
      O => Receiver_BitCounter(17),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_17_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"0000FF000000F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR3 => Receiver_BitCounter(17),
      ADR2 => Receiver_Result_17_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_17_rstpot_1758
    );
  Receiver_BitCounter_16 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_16_CLK,
      I => Receiver_BitCounter_16_rstpot_1760,
      O => Receiver_BitCounter(16),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_16_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"00FF000F00F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(16),
      ADR5 => Receiver_Result_16_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_16_rstpot_1760
    );
  Receiver_BitCounter_23 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_23_CLK,
      I => Receiver_BitCounter_23_rstpot_1776,
      O => Receiver_BitCounter(23),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_23_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"0F0F00000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(23),
      ADR3 => Receiver_Result_23_0,
      ADR2 => Receiver_n0063,
      O => Receiver_BitCounter_23_rstpot_1776
    );
  Receiver_BitCounter_22 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_22_CLK,
      I => Receiver_BitCounter_22_rstpot_1770,
      O => Receiver_BitCounter(22),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_22_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"00FC003000FC0030"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(22),
      ADR2 => Receiver_Result_22_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_22_rstpot_1770
    );
  Receiver_BitCounter_21 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_21_CLK,
      I => Receiver_BitCounter_21_rstpot_1783,
      O => Receiver_BitCounter(21),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_21_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"00000000FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(21),
      ADR2 => Receiver_Result_21_0,
      ADR5 => Receiver_n0063,
      O => Receiver_BitCounter_21_rstpot_1783
    );
  Receiver_BitCounter_20 : X_FF
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_20_CLK,
      I => Receiver_BitCounter_20_rstpot_1785,
      O => Receiver_BitCounter(20),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_20_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(20),
      ADR3 => Receiver_Result_20_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_20_rstpot_1785
    );
  Receiver_BitCounter_27 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_27_CLK,
      I => Receiver_BitCounter_27_rstpot_1801,
      O => Receiver_BitCounter(27),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_27_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"0000FFAA00005500"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(27),
      ADR3 => Receiver_Result_27_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_27_rstpot_1801
    );
  Receiver_BitCounter_26 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_26_CLK,
      I => Receiver_BitCounter_26_rstpot_1795,
      O => Receiver_BitCounter(26),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_26_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"0F0F00000F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(26),
      ADR3 => Receiver_Result_26_0,
      ADR2 => Receiver_n0063,
      O => Receiver_BitCounter_26_rstpot_1795
    );
  Receiver_BitCounter_25 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_25_CLK,
      I => Receiver_BitCounter_25_rstpot_1808,
      O => Receiver_BitCounter(25),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_25_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"5550005055500050"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(25),
      ADR2 => Receiver_Result_25_0,
      ADR0 => Receiver_n0063,
      O => Receiver_BitCounter_25_rstpot_1808
    );
  Receiver_BitCounter_24 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_24_CLK,
      I => Receiver_BitCounter_24_rstpot_1810,
      O => Receiver_BitCounter(24),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_24_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"00000000FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(24),
      ADR3 => Receiver_Result_24_0,
      ADR5 => Receiver_n0063,
      O => Receiver_BitCounter_24_rstpot_1810
    );
  Receiver_BitCounter_30 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_30_CLK,
      I => Receiver_BitCounter_30_rstpot_1824,
      O => Receiver_BitCounter(30),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_30_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"00FF000000F000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(30),
      ADR2 => Receiver_Result_30_0,
      ADR3 => Receiver_n0063,
      O => Receiver_BitCounter_30_rstpot_1824
    );
  Receiver_BitCounter_29 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_29_CLK,
      I => Receiver_BitCounter_29_rstpot_1832,
      O => Receiver_BitCounter(29),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_29_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"00000000FCFC3030"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR4 => Receiver_BitCounter(29),
      ADR2 => Receiver_Result_29_0,
      ADR5 => Receiver_n0063,
      O => Receiver_BitCounter_29_rstpot_1832
    );
  Receiver_BitCounter_28 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_28_CLK,
      I => Receiver_BitCounter_28_rstpot_1821,
      O => Receiver_BitCounter(28),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_28_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"0000FFF000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(28),
      ADR3 => Receiver_Result_28_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_28_rstpot_1821
    );
  Valid_D_TX_RDY_i_AND_9_o_Valid_D_TX_RDY_i_AND_9_o_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => StartTX_pack_1,
      O => StartTX_2053
    );
  Valid_D_TX_RDY_i_AND_9_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"0003000300030003"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR2 => Valid_D_IBUF_0,
      ADR5 => '1',
      O => Valid_D_TX_RDY_i_AND_9_o
    );
  StartTX_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => X"AAAA0003"
    )
    port map (
      ADR4 => Receiver_Reset_inv,
      ADR0 => StartTX_2053,
      ADR3 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR1 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR2 => Valid_D_IBUF_0,
      O => StartTX_rstpot_1839
    );
  StartTX : X_FF
    generic map(
      LOC => "SLICE_X14Y2",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_StartTX_CLK,
      I => StartTX_rstpot_1839,
      O => StartTX_pack_1,
      RST => GND,
      SET => GND
    );
  Receiver_e_actual_FSM_FFd2_In2_Receiver_e_actual_FSM_FFd2_In2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q_1862,
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0
    );
  Receiver_e_actual_FSM_FFd2_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => Receiver_Data_count(4),
      ADR3 => Receiver_Data_count(5),
      ADR5 => Receiver_Data_count(31),
      ADR0 => Receiver_Data_count(3),
      ADR4 => Receiver_Data_count(29),
      ADR1 => Receiver_Data_count(30),
      O => Receiver_e_actual_FSM_FFd2_In2_2318
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      CI => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q_2293,
      CYINIT => '0',
      CO(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_3_UNCONNECTED,
      CO(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q_1862,
      CO(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5_1867,
      DI(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4_1851,
      O(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_S_3_UNCONNECTED,
      S(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_Q,
      S(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q_1868,
      S(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q_1852
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Receiver_BitCounter(31),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_Q
    );
  N0_64_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_64_C5LUT_O_UNCONNECTED
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => Receiver_BitCounter(26),
      ADR1 => Receiver_BitCounter(27),
      ADR3 => Receiver_BitCounter(28),
      ADR4 => Receiver_BitCounter(29),
      ADR0 => Receiver_BitCounter(30),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q_1868
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR2 => Receiver_BitCounter(26),
      ADR1 => Receiver_BitCounter(27),
      ADR3 => Receiver_BitCounter(28),
      ADR4 => Receiver_BitCounter(29),
      ADR0 => Receiver_BitCounter(30),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5_1867
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => Receiver_BitCounter(21),
      ADR1 => Receiver_BitCounter(22),
      ADR2 => Receiver_BitCounter(23),
      ADR0 => Receiver_BitCounter(24),
      ADR3 => Receiver_BitCounter(25),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q_1852
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => Receiver_BitCounter(21),
      ADR1 => Receiver_BitCounter(22),
      ADR2 => Receiver_BitCounter(23),
      ADR0 => Receiver_BitCounter(24),
      ADR3 => Receiver_BitCounter(25),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4_1851
    );
  Transmitter_TX6 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => Transmitter_TX,
      ADR1 => Transmitter_TX1_2323,
      ADR4 => Transmitter_TX2_2324,
      ADR2 => Transmitter_TX3_2325,
      ADR3 => Transmitter_TX4_2326,
      O => Transmitter_TX5_2345
    );
  Transmitter_TX9 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y2",
      INIT => X"FA500000FFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => Transmitter_TX5_2345,
      ADR0 => Transmitter_Data_count(0),
      ADR2 => Transmitter_TX7_2327,
      ADR3 => Transmitter_TX6_2328,
      ADR5 => Transmitter_e_actual_FSM_FFd2_2056,
      O => TD_OBUF_2297
    );
  Transmitter_e_actual_FSM_FFd1_Transmitter_e_actual_FSM_FFd1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Transmitter_e_actual_FSM_FFd2_pack_1,
      O => Transmitter_e_actual_FSM_FFd2_2056
    );
  Transmitter_e_actual_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_e_actual_FSM_FFd1_CLK,
      I => Transmitter_e_actual_FSM_FFd1_In,
      O => Transmitter_e_actual_FSM_FFd1_2055,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_e_actual_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => X"F0F0CCCCF0F0CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      ADR5 => '1',
      O => Transmitter_e_actual_FSM_FFd1_In
    );
  Transmitter_e_actual_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => X"CECE0ECE"
    )
    port map (
      ADR3 => Transmitter_Mcompar_n0017_cy_6_0,
      ADR0 => StartTX_2053,
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR2 => Transmitter_e_actual_FSM_FFd1_2055,
      ADR1 => Transmitter_e_actual_FSM_FFd2_2056,
      O => Transmitter_e_actual_FSM_FFd2_In
    );
  Transmitter_e_actual_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X15Y4",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_e_actual_FSM_FFd2_CLK,
      I => Transmitter_e_actual_FSM_FFd2_In,
      O => Transmitter_e_actual_FSM_FFd2_pack_1,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Receiver_n006311 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"00CC00FF00F000FF"
    )
    port map (
      ADR0 => '1',
      ADR3 => Receiver_Reset_inv,
      ADR4 => Receiver_e_actual_FSM_FFd2_2170,
      ADR5 => Receiver_e_actual_FSM_FFd1_2171,
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0,
      ADR1 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      O => Receiver_n0063
    );
  Receiver_BitCounter_31 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_BitCounter_31_CLK,
      I => Receiver_BitCounter_31_rstpot_1910,
      O => Receiver_BitCounter(31),
      RST => GND,
      SET => GND
    );
  Receiver_BitCounter_31_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"0000FAFA00000A0A"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => Receiver_Reset_inv,
      ADR5 => Receiver_BitCounter(31),
      ADR0 => Receiver_Result_31_0,
      ADR4 => Receiver_n0063,
      O => Receiver_BitCounter_31_rstpot_1910
    );
  Data_FF_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_7_CLK,
      I => NlwBufferSignal_Data_FF_7_IN,
      O => Data_FF(7),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Data_FF_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_6_CLK,
      I => NlwBufferSignal_Data_FF_6_IN,
      O => Data_FF(6),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Data_FF_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_5_CLK,
      I => NlwBufferSignal_Data_FF_5_IN,
      O => Data_FF(5),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Data_FF_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_4_CLK,
      I => NlwBufferSignal_Data_FF_4_IN,
      O => Data_FF(4),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_TX8 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y2",
      INIT => X"EE44FAFAEE445050"
    )
    port map (
      ADR4 => Transmitter_Data_count(1),
      ADR0 => Transmitter_Data_count(2),
      ADR1 => Data_FF(2),
      ADR5 => Data_FF(4),
      ADR3 => Data_FF(6),
      ADR2 => Data_FF(0),
      O => Transmitter_TX7_2327
    );
  Transmitter_TX7 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y2",
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      ADR0 => Transmitter_Data_count(1),
      ADR1 => Transmitter_Data_count(2),
      ADR5 => Data_FF(3),
      ADR2 => Data_FF(7),
      ADR4 => Data_FF(5),
      ADR3 => Data_FF(1),
      O => Transmitter_TX6_2328
    );
  Receiver_e_actual_FSM_FFd2_In6 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y12",
      INIT => X"FFFFFFFFFEFFFFFF"
    )
    port map (
      ADR2 => Receiver_Data_count(9),
      ADR3 => Receiver_Data_count(2),
      ADR0 => Receiver_Data_count(6),
      ADR5 => Receiver_Data_count(8),
      ADR1 => Receiver_Data_count(7),
      ADR4 => Receiver_e_actual_FSM_FFd1_2171,
      O => Receiver_e_actual_FSM_FFd2_In6_2348
    );
  Receiver_e_actual_FSM_FFd2_In7 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y12",
      INIT => X"FFFF5555FFFFFFFF"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Receiver_Data_count(0),
      ADR0 => Receiver_Data_count(1),
      ADR4 => Receiver_e_actual_FSM_FFd2_In6_2348,
      O => Receiver_e_actual_FSM_FFd2_In7_2321
    );
  Receiver_e_actual_FSM_FFd2_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y14",
      INIT => X"FFFFFFFFFFFFFFFC"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_Data_count(13),
      ADR3 => Receiver_Data_count(14),
      ADR4 => Receiver_Data_count(10),
      ADR2 => Receiver_Data_count(11),
      ADR5 => Receiver_Data_count(12),
      O => Receiver_e_actual_FSM_FFd2_In4_2320
    );
  Receiver_n0078_inv21 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y14",
      INIT => X"3030300000300000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Receiver_Reset_inv,
      ADR2 => Receiver_e_actual_FSM_FFd2_2170,
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR4 => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0,
      ADR5 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      O => Receiver_n0078_inv
    );
  Receiver_e_actual_FSM_FFd2_Receiver_e_actual_FSM_FFd2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => LineRD_in_pack_4,
      O => LineRD_in_2169
    );
  Receiver_e_actual_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => Receiver_Data_count(27),
      ADR0 => Receiver_Data_count(28),
      ADR3 => Receiver_Data_count(25),
      ADR4 => Receiver_Data_count(26),
      ADR1 => Receiver_Data_count(23),
      ADR2 => Receiver_Data_count(24),
      O => Receiver_e_actual_FSM_FFd2_In1_2350
    );
  Receiver_e_actual_FSM_FFd2_In5 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => Receiver_e_actual_FSM_FFd2_In1_2350,
      ADR3 => Receiver_e_actual_FSM_FFd2_In2_2318,
      ADR2 => Receiver_e_actual_FSM_FFd2_In3_2319,
      ADR0 => Receiver_Data_count(15),
      ADR1 => Receiver_Data_count(16),
      ADR4 => Receiver_e_actual_FSM_FFd2_In4_2320,
      O => Receiver_e_actual_FSM_FFd2_In5_2349
    );
  Receiver_e_actual_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_e_actual_FSM_FFd2_CLK,
      I => Receiver_e_actual_FSM_FFd2_In,
      O => Receiver_e_actual_FSM_FFd2_2170,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Receiver_e_actual_FSM_FFd2_In8 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"FFCF0000FFDF5555"
    )
    port map (
      ADR5 => LineRD_in_2169,
      ADR0 => Receiver_e_actual_FSM_FFd1_2171,
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      ADR4 => Receiver_e_actual_FSM_FFd2_2170,
      ADR3 => Receiver_e_actual_FSM_FFd2_In5_2349,
      ADR1 => Receiver_e_actual_FSM_FFd2_In7_2321,
      O => Receiver_e_actual_FSM_FFd2_In
    );
  Receiver_e_actual_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_e_actual_FSM_FFd1_CLK,
      I => Receiver_e_actual_FSM_FFd1_In,
      O => Receiver_e_actual_FSM_FFd1_2171,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Receiver_e_actual_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"AFAAAF00AFAAAF00"
    )
    port map (
      ADR1 => '1',
      ADR0 => Receiver_e_actual_FSM_FFd2_2170,
      ADR4 => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0,
      ADR3 => Receiver_e_actual_FSM_FFd1_2171,
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      ADR5 => '1',
      O => Receiver_e_actual_FSM_FFd1_In
    );
  RD_IBUF_rt : X_LUT5
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"CCCCCCCC"
    )
    port map (
      ADR1 => RD_IBUF_0,
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => RD_IBUF_rt_1984
    );
  LineRD_in : X_FF
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LineRD_in_CLK,
      I => RD_IBUF_rt_1984,
      O => LineRD_in_pack_4,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Receiver_e_actual_FSM_FFd2_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y16",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => Receiver_Data_count(21),
      ADR5 => Receiver_Data_count(22),
      ADR2 => Receiver_Data_count(19),
      ADR1 => Receiver_Data_count(20),
      ADR0 => Receiver_Data_count(17),
      ADR3 => Receiver_Data_count(18),
      O => Receiver_e_actual_FSM_FFd2_In3_2319
    );
  Data_FF_3 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_3_CLK,
      I => NlwBufferSignal_Data_FF_3_IN,
      O => Data_FF(3),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Data_FF_2 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_2_CLK,
      I => NlwBufferSignal_Data_FF_2_IN,
      O => Data_FF(2),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Data_FF_1 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_1_CLK,
      I => NlwBufferSignal_Data_FF_1_IN,
      O => Data_FF(1),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Data_FF_0 : X_FF
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => '0'
    )
    port map (
      CE => Valid_D_TX_RDY_i_AND_9_o,
      CLK => NlwBufferSignal_Data_FF_0_CLK,
      I => NlwBufferSignal_Data_FF_0_IN,
      O => Data_FF(0),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_7_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_6_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_5_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRAWRADDR_4_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_11_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(7),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_11_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_10_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(6),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_10_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_9_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(5),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_9_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_8_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(4),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_8_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(3),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_3_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(2),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_2_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(1),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_1_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(0),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DIADI_0_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_7_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_6_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_5_Q

    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q : 
X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      O => 
NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_ADDRBRDADDR_4_Q

    );
  NlwBufferBlock_Transmitter_Pulse_width_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_3_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_2_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_1_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_0_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_7_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_6_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_5_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_4_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_11_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_10_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_9_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_8_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_15_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_14_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_13_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_12_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_19_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_18_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_17_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_16_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_23_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_22_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_21_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_20_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_27_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_26_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_25_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_24_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_31_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_30_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_29_CLK
    );
  NlwBufferBlock_Transmitter_Pulse_width_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Pulse_width_28_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_3_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_2_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_1_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_0_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_7_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_6_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_5_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_4_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_11_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_10_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_9_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_8_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_15_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_14_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_13_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_12_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_19_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_18_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_17_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_16_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_23_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_22_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_21_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_20_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_27_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_26_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_25_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_24_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_31_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_30_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_29_CLK
    );
  NlwBufferBlock_Transmitter_Data_count_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_Data_count_28_CLK
    );
  NlwBufferBlock_Receiver_Data_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_3_CLK
    );
  NlwBufferBlock_Receiver_Data_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_2_CLK
    );
  NlwBufferBlock_Receiver_Data_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_1_CLK
    );
  NlwBufferBlock_Receiver_Data_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_0_CLK
    );
  NlwBufferBlock_Receiver_Data_count_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_7_CLK
    );
  NlwBufferBlock_Receiver_Data_count_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_6_CLK
    );
  NlwBufferBlock_Receiver_Data_count_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_5_CLK
    );
  NlwBufferBlock_Receiver_Data_count_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_4_CLK
    );
  NlwBufferBlock_Receiver_Data_count_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_11_CLK
    );
  NlwBufferBlock_Receiver_Data_count_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_10_CLK
    );
  NlwBufferBlock_Receiver_Data_count_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_9_CLK
    );
  NlwBufferBlock_Receiver_Data_count_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_8_CLK
    );
  NlwBufferBlock_Receiver_Data_count_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_15_CLK
    );
  NlwBufferBlock_Receiver_Data_count_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_14_CLK
    );
  NlwBufferBlock_Receiver_Data_count_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_13_CLK
    );
  NlwBufferBlock_Receiver_Data_count_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_12_CLK
    );
  NlwBufferBlock_Receiver_Data_count_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_19_CLK
    );
  NlwBufferBlock_Receiver_Data_count_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_18_CLK
    );
  NlwBufferBlock_Receiver_Data_count_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_17_CLK
    );
  NlwBufferBlock_Receiver_Data_count_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_16_CLK
    );
  NlwBufferBlock_Receiver_Data_count_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_23_CLK
    );
  NlwBufferBlock_Receiver_Data_count_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_22_CLK
    );
  NlwBufferBlock_Receiver_Data_count_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_21_CLK
    );
  NlwBufferBlock_Receiver_Data_count_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_20_CLK
    );
  NlwBufferBlock_Receiver_Data_count_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_27_CLK
    );
  NlwBufferBlock_Receiver_Data_count_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_26_CLK
    );
  NlwBufferBlock_Receiver_Data_count_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_25_CLK
    );
  NlwBufferBlock_Receiver_Data_count_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_24_CLK
    );
  NlwBufferBlock_Receiver_Data_count_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_31_CLK
    );
  NlwBufferBlock_Receiver_Data_count_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_30_CLK
    );
  NlwBufferBlock_Receiver_Data_count_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_29_CLK
    );
  NlwBufferBlock_Receiver_Data_count_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_Data_count_28_CLK
    );
  NlwBufferBlock_TD_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TD_OBUF_2297,
      O => NlwBufferSignal_TD_OBUF_I
    );
  NlwBufferBlock_Full_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Full_OBUF_2298,
      O => NlwBufferSignal_Full_OBUF_I
    );
  NlwBufferBlock_TX_RDY_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_RDY_OBUF_2057,
      O => NlwBufferSignal_TX_RDY_OBUF_I
    );
  NlwBufferBlock_Ack_in_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Ack_in_OBUF_0,
      O => NlwBufferSignal_Ack_in_OBUF_I
    );
  NlwBufferBlock_Data_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_0_OBUF_2093,
      O => NlwBufferSignal_Data_out_0_OBUF_I
    );
  NlwBufferBlock_Data_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_1_OBUF_2092,
      O => NlwBufferSignal_Data_out_1_OBUF_I
    );
  NlwBufferBlock_Data_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_2_OBUF_2091,
      O => NlwBufferSignal_Data_out_2_OBUF_I
    );
  NlwBufferBlock_Data_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_3_OBUF_2090,
      O => NlwBufferSignal_Data_out_3_OBUF_I
    );
  NlwBufferBlock_Data_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_4_OBUF_2089,
      O => NlwBufferSignal_Data_out_4_OBUF_I
    );
  NlwBufferBlock_Data_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_5_OBUF_2088,
      O => NlwBufferSignal_Data_out_5_OBUF_I
    );
  NlwBufferBlock_Data_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_6_OBUF_2087,
      O => NlwBufferSignal_Data_out_6_OBUF_I
    );
  NlwBufferBlock_Data_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_7_OBUF_2086,
      O => NlwBufferSignal_Data_out_7_OBUF_I
    );
  NlwBufferBlock_Empty_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Empty_OBUF_2300,
      O => NlwBufferSignal_Empty_OBUF_I
    );
  NlwBufferBlock_Clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_Clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_Ack_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Ack_in_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_3_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(4),
      O => NlwBufferSignal_Shift_Q_AUX_3_IN
    );
  NlwBufferBlock_Shift_Q_AUX_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_7_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_2_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(3),
      O => NlwBufferSignal_Shift_Q_AUX_2_IN
    );
  NlwBufferBlock_Shift_Q_AUX_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_6_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_1_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(2),
      O => NlwBufferSignal_Shift_Q_AUX_1_IN
    );
  NlwBufferBlock_Shift_Q_AUX_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_5_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_0_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(1),
      O => NlwBufferSignal_Shift_Q_AUX_0_IN
    );
  NlwBufferBlock_Shift_Q_AUX_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_4_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_2047,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_2048,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(3),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_IN
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_CLK
    );
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_3_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_2_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_1_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_0_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_7_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_6_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_5_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_4_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_11_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_11_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_10_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_10_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_9_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_9_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_8_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_8_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_15_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_15_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_14_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_14_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_13_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_13_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_12_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_12_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_19_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_19_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_18_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_18_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_17_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_17_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_16_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_16_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_23_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_23_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_22_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_22_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_21_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_21_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_20_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_20_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_27_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_27_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_26_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_26_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_25_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_25_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_24_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_24_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_30_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_30_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_29_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_29_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_28_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_28_CLK
    );
  NlwBufferBlock_StartTX_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_StartTX_CLK
    );
  NlwBufferBlock_Transmitter_e_actual_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_e_actual_FSM_FFd1_CLK
    );
  NlwBufferBlock_Transmitter_e_actual_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Transmitter_e_actual_FSM_FFd2_CLK
    );
  NlwBufferBlock_Receiver_BitCounter_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_31_CLK
    );
  NlwBufferBlock_Data_FF_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_7_CLK
    );
  NlwBufferBlock_Data_FF_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_7_IBUF_0,
      O => NlwBufferSignal_Data_FF_7_IN
    );
  NlwBufferBlock_Data_FF_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_6_CLK
    );
  NlwBufferBlock_Data_FF_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_6_IBUF_0,
      O => NlwBufferSignal_Data_FF_6_IN
    );
  NlwBufferBlock_Data_FF_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_5_CLK
    );
  NlwBufferBlock_Data_FF_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_5_IBUF_0,
      O => NlwBufferSignal_Data_FF_5_IN
    );
  NlwBufferBlock_Data_FF_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_4_CLK
    );
  NlwBufferBlock_Data_FF_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_4_IBUF_0,
      O => NlwBufferSignal_Data_FF_4_IN
    );
  NlwBufferBlock_Receiver_e_actual_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_e_actual_FSM_FFd2_CLK
    );
  NlwBufferBlock_Receiver_e_actual_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_e_actual_FSM_FFd1_CLK
    );
  NlwBufferBlock_LineRD_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_LineRD_in_CLK
    );
  NlwBufferBlock_Data_FF_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_3_CLK
    );
  NlwBufferBlock_Data_FF_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_3_IBUF_0,
      O => NlwBufferSignal_Data_FF_3_IN
    );
  NlwBufferBlock_Data_FF_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_2_CLK
    );
  NlwBufferBlock_Data_FF_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_2_IBUF_0,
      O => NlwBufferSignal_Data_FF_2_IN
    );
  NlwBufferBlock_Data_FF_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_1_CLK
    );
  NlwBufferBlock_Data_FF_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_1_IBUF_0,
      O => NlwBufferSignal_Data_FF_1_IN
    );
  NlwBufferBlock_Data_FF_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Data_FF_0_CLK
    );
  NlwBufferBlock_Data_FF_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_0_IBUF_0,
      O => NlwBufferSignal_Data_FF_0_IN
    );
  NlwBlock_RS232top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_RS232top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

