--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: RS232top_timesim.vhd
-- /___/   /\     Timestamp: Thu Nov 06 22:59:07 2014
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
  signal Clk_BUFGP : STD_LOGIC; 
  signal TX_RDY_OBUF_1894 : STD_LOGIC; 
  signal Valid_D_IBUF_0 : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd2_1896 : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd1_1897 : STD_LOGIC; 
  signal Ack_in_OBUF_0 : STD_LOGIC; 
  signal Receiver_Reset_inv : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_ram_wr_en : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_1907 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_1908 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_1909 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_1910 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_cy_6_0 : STD_LOGIC; 
  signal StartTX_1912 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_ram_rd_en : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q : STD_LOGIC; 
  signal Valid_out : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd1_1922 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_1923 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0 : STD_LOGIC; 
  signal Valid_D_TX_RDY_i_AND_9_o : STD_LOGIC; 
  signal Reset_IBUF_0 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_mem_gbm_tmp_ram_rd_en : STD_LOGIC; 
  signal Data_out_7_OBUF_1946 : STD_LOGIC; 
  signal Data_out_6_OBUF_1947 : STD_LOGIC; 
  signal Data_out_5_OBUF_1948 : STD_LOGIC; 
  signal Data_out_4_OBUF_1949 : STD_LOGIC; 
  signal Data_out_3_OBUF_1950 : STD_LOGIC; 
  signal Data_out_2_OBUF_1951 : STD_LOGIC; 
  signal Data_out_1_OBUF_1952 : STD_LOGIC; 
  signal Data_out_0_OBUF_1953 : STD_LOGIC; 
  signal Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q_1969 : STD_LOGIC; 
  signal Transmitter_Cuenta : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_3_Q_1988 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_7_Q_1989 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_11_Q_1990 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_15_Q_1991 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_19_Q_1992 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_23_Q_1993 : STD_LOGIC; 
  signal Transmitter_Mcount_Pulse_width_cy_27_Q_1994 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q_2010 : STD_LOGIC; 
  signal LineRD_in_2028 : STD_LOGIC; 
  signal Fifo_write_0 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_cy_3_Q_2045 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_3_Q_2063 : STD_LOGIC; 
  signal Receiver_n0063 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_7_Q_2065 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_11_Q_2066 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_15_Q_2067 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_19_Q_2068 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_23_Q_2069 : STD_LOGIC; 
  signal Receiver_Mcount_BitCounter_cy_27_Q_2070 : STD_LOGIC; 
  signal Transmitter_n0077_inv : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_3_Q_2072 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_7_Q_2073 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_11_Q_2074 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_15_Q_2075 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_19_Q_2076 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_23_Q_2077 : STD_LOGIC; 
  signal Transmitter_Mcount_Data_count_cy_27_Q_2078 : STD_LOGIC; 
  signal Receiver_n0078_inv : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_3_Q_2083 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_7_Q_2088 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_11_Q_2093 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_15_Q_2098 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_19_Q_2103 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_23_Q_2108 : STD_LOGIC; 
  signal Receiver_Mcount_Data_count_cy_27_Q_2113 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q_2119 : STD_LOGIC; 
  signal Data_read_IBUF_0 : STD_LOGIC; 
  signal RD_IBUF_0 : STD_LOGIC; 
  signal TD_OBUF_2122 : STD_LOGIC; 
  signal Full_OBUF_2123 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal Empty_OBUF_2125 : STD_LOGIC; 
  signal Data_in_0_IBUF_0 : STD_LOGIC; 
  signal Data_in_1_IBUF_0 : STD_LOGIC; 
  signal Data_in_2_IBUF_0 : STD_LOGIC; 
  signal Data_in_3_IBUF_0 : STD_LOGIC; 
  signal Data_in_4_IBUF_0 : STD_LOGIC; 
  signal Data_in_5_IBUF_0 : STD_LOGIC; 
  signal Data_in_6_IBUF_0 : STD_LOGIC; 
  signal Data_in_7_IBUF_0 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11_2138 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12_2139 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14_2140 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2141 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In1_2142 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In2_2143 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In3_2144 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In4_2145 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In7_2146 : STD_LOGIC; 
  signal Transmitter_TX : STD_LOGIC; 
  signal Transmitter_TX1_2148 : STD_LOGIC; 
  signal Transmitter_TX2_2149 : STD_LOGIC; 
  signal Transmitter_TX3_2150 : STD_LOGIC; 
  signal Transmitter_TX4_2151 : STD_LOGIC; 
  signal Transmitter_TX6_2152 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o11 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o14 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_0 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_2168 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12_2169 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In6_2170 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In5_2171 : STD_LOGIC; 
  signal Transmitter_TX7_2172 : STD_LOGIC; 
  signal Transmitter_TX5_2173 : STD_LOGIC; 
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
  signal ProtoComp7_CYINITGND_0 : STD_LOGIC; 
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
  signal ProtoComp11_CYINITVCC_1 : STD_LOGIC; 
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
  signal ProtoComp13_CYINITVCC_1 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi3_527 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi4_574 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi5_567 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_lutdi6_563 : STD_LOGIC; 
  signal Transmitter_Mcompar_n0017_cy_6_Q_561 : STD_LOGIC; 
  signal Receiver_BitCounter_1_rt_601 : STD_LOGIC; 
  signal Receiver_BitCounter_2_rt_597 : STD_LOGIC; 
  signal ProtoComp15_CYINITGND_0 : STD_LOGIC; 
  signal Receiver_BitCounter_3_rt_585 : STD_LOGIC; 
  signal Receiver_BitCounter_4_rt_634 : STD_LOGIC; 
  signal Receiver_BitCounter_5_rt_630 : STD_LOGIC; 
  signal Receiver_BitCounter_6_rt_626 : STD_LOGIC; 
  signal Receiver_BitCounter_7_rt_614 : STD_LOGIC; 
  signal Receiver_BitCounter_8_rt_663 : STD_LOGIC; 
  signal Receiver_BitCounter_9_rt_659 : STD_LOGIC; 
  signal Receiver_BitCounter_10_rt_655 : STD_LOGIC; 
  signal Receiver_BitCounter_11_rt_643 : STD_LOGIC; 
  signal Receiver_BitCounter_12_rt_692 : STD_LOGIC; 
  signal Receiver_BitCounter_13_rt_688 : STD_LOGIC; 
  signal Receiver_BitCounter_14_rt_684 : STD_LOGIC; 
  signal Receiver_BitCounter_15_rt_672 : STD_LOGIC; 
  signal Receiver_BitCounter_16_rt_721 : STD_LOGIC; 
  signal Receiver_BitCounter_17_rt_717 : STD_LOGIC; 
  signal Receiver_BitCounter_18_rt_713 : STD_LOGIC; 
  signal Receiver_BitCounter_19_rt_701 : STD_LOGIC; 
  signal Receiver_BitCounter_20_rt_750 : STD_LOGIC; 
  signal Receiver_BitCounter_21_rt_746 : STD_LOGIC; 
  signal Receiver_BitCounter_22_rt_742 : STD_LOGIC; 
  signal Receiver_BitCounter_23_rt_730 : STD_LOGIC; 
  signal Receiver_BitCounter_24_rt_779 : STD_LOGIC; 
  signal Receiver_BitCounter_25_rt_775 : STD_LOGIC; 
  signal Receiver_BitCounter_26_rt_771 : STD_LOGIC; 
  signal Receiver_BitCounter_27_rt_759 : STD_LOGIC; 
  signal Receiver_BitCounter_28_rt_806 : STD_LOGIC; 
  signal Receiver_BitCounter_29_rt_802 : STD_LOGIC; 
  signal Receiver_BitCounter_30_rt_798 : STD_LOGIC; 
  signal Receiver_BitCounter_31_rt_791 : STD_LOGIC; 
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
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi_1350 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q_1349 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1_1343 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q_1342 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2_1336 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q_1335 : STD_LOGIC; 
  signal ProtoComp24_CYINITVCC_1 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3_1327 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q_1326 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4_1373 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q_1372 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5_1366 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q_1365 : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_Q : STD_LOGIC; 
  signal Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q_1361 : STD_LOGIC; 
  signal Data_read_IBUF_1383 : STD_LOGIC; 
  signal RD_IBUF_1386 : STD_LOGIC; 
  signal Clk_BUFGP_IBUFG_1395 : STD_LOGIC; 
  signal Valid_D_IBUF_1416 : STD_LOGIC; 
  signal Reset_IBUF_1421 : STD_LOGIC; 
  signal Data_in_0_IBUF_1424 : STD_LOGIC; 
  signal Data_in_1_IBUF_1427 : STD_LOGIC; 
  signal Data_in_2_IBUF_1430 : STD_LOGIC; 
  signal Data_in_3_IBUF_1433 : STD_LOGIC; 
  signal Data_in_4_IBUF_1436 : STD_LOGIC; 
  signal Data_in_5_IBUF_1439 : STD_LOGIC; 
  signal Data_in_6_IBUF_1442 : STD_LOGIC; 
  signal Data_in_7_IBUF_1445 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_pack_9 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_3_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_2_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_pack_6 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_1_Q : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_0_Q : STD_LOGIC; 
  signal Valid_D_INV_15_o : STD_LOGIC; 
  signal Ack_in_OBUF_1624 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_pack_1 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt_1648 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_1646 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt_1643 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_pack_1 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot_1666 : STD_LOGIC; 
  signal Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot_1665 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd1_pack_1 : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd1_In : STD_LOGIC; 
  signal Receiver_e_actual_FSM_FFd2_In : STD_LOGIC; 
  signal StartTX_rstpot_1774 : STD_LOGIC; 
  signal StartTX_pack_1 : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd1_In : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd2_In : STD_LOGIC; 
  signal Transmitter_e_actual_FSM_FFd2_pack_1 : STD_LOGIC; 
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
  signal NlwBufferSignal_Receiver_BitCounter_31_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_30_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_29_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_BitCounter_28_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Ack_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Shift_Q_AUX_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_e_actual_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Receiver_e_actual_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LineRD_in_CLK : STD_LOGIC; 
  signal NlwBufferSignal_LineRD_in_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Data_FF_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_StartTX_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_e_actual_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_Transmitter_e_actual_FSM_FFd2_CLK : STD_LOGIC; 
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6",
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
      LOC => "RAMB8_X0Y6"
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
      DOBDO(11) => Data_out_7_OBUF_1946,
      DOBDO(10) => Data_out_6_OBUF_1947,
      DOBDO(9) => Data_out_5_OBUF_1948,
      DOBDO(8) => Data_out_4_OBUF_1949,
      DOBDO(7) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO7,
      DOBDO(6) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO6,
      DOBDO(5) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO5,
      DOBDO(4) => 
Internal_memory_BU2_U0_grf_rf_mem_gbm_gbmg_gbmga_ngecc_bmg_blk_mem_generator_valid_cstr_ramloop_0_ram_r_s6_noinit_ram_SDP_SIMPLE_PRIM9_ram_DOBDO4,
      DOBDO(3) => Data_out_3_OBUF_1950,
      DOBDO(2) => Data_out_2_OBUF_1951,
      DOBDO(1) => Data_out_1_OBUF_1952,
      DOBDO(0) => Data_out_0_OBUF_1953
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y3",
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
  ProtoComp7_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X22Y3"
    )
    port map (
      O => ProtoComp7_CYINITGND_0
    );
  Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X22Y3"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp7_CYINITGND_0,
      CO(3) => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q_1969,
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
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y3",
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
      LOC => "SLICE_X22Y4",
      INIT => X"FCFCFCFCFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR2 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR5 => '1',
      O => Transmitter_Mmux_Cuenta11_lut_116
    );
  N0_128_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y4"
    )
    port map (
      CI => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_3_Q_1969,
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
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y4",
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
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5",
      INIT => X"CC880000CC880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR0 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(3),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(3)
    );
  N0_29_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5"
    )
    port map (
      CI => Transmitter_Cuenta,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_3_Q_1988,
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
      LOC => "SLICE_X22Y5",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR2 => Transmitter_Pulse_width(2),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(2)
    );
  N0_30_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5",
      INIT => X"E0E00000E0E00000"
    )
    port map (
      ADR3 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(1),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(1)
    );
  N0_31_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y5",
      INIT => X"FA000000FA000000"
    )
    port map (
      ADR1 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR0 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(0),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(0)
    );
  N0_32_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y5",
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
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6",
      INIT => X"CC880000CC880000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(7),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(7)
    );
  N0_25_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_3_Q_1988,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_7_Q_1989,
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
      LOC => "SLICE_X22Y6",
      INIT => X"AA880000AA880000"
    )
    port map (
      ADR2 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR0 => Transmitter_Pulse_width(6),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(6)
    );
  N0_26_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(5),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(5)
    );
  N0_27_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y6",
      INIT => X"EE000000EE000000"
    )
    port map (
      ADR2 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(4),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(4)
    );
  N0_28_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y6",
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
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7",
      INIT => X"EE000000EE000000"
    )
    port map (
      ADR2 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR0 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Transmitter_Pulse_width(11),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(11)
    );
  N0_21_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_7_Q_1989,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_11_Q_1990,
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
      LOC => "SLICE_X22Y7",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(10),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(10)
    );
  N0_22_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(9),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(9)
    );
  N0_23_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y7",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(8),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(8)
    );
  N0_24_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y7",
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
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8",
      INIT => X"FA000000FA000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Transmitter_Pulse_width(15),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(15)
    );
  N0_17_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_11_Q_1990,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_15_Q_1991,
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
      LOC => "SLICE_X22Y8",
      INIT => X"C8C80000C8C80000"
    )
    port map (
      ADR3 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(14),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(14)
    );
  N0_18_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(13),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(13)
    );
  N0_19_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y8",
      INIT => X"E0E00000E0E00000"
    )
    port map (
      ADR3 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(12),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(12)
    );
  N0_20_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y8",
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
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9",
      INIT => X"CC00C000CC00C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Transmitter_Pulse_width(19),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(19)
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_15_Q_1991,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_19_Q_1992,
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
      LOC => "SLICE_X22Y9",
      INIT => X"AA880000AA880000"
    )
    port map (
      ADR2 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR0 => Transmitter_Pulse_width(18),
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(18)
    );
  N0_14_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9",
      INIT => X"F0A00000F0A00000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR0 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(17),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(17)
    );
  N0_15_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y9",
      INIT => X"FA000000FA000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(16),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(16)
    );
  N0_16_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y9",
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
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10",
      INIT => X"F0A00000F0A00000"
    )
    port map (
      ADR1 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(23),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(23)
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_19_Q_1992,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_23_Q_1993,
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
      LOC => "SLICE_X22Y10",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(22),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(22)
    );
  N0_10_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(21),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(21)
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y10",
      INIT => X"E0E00000E0E00000"
    )
    port map (
      ADR3 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(20),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(20)
    );
  N0_12_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y10",
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
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11",
      INIT => X"CC00C000CC00C000"
    )
    port map (
      ADR0 => '1',
      ADR4 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Transmitter_Pulse_width(27),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(27)
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_23_Q_1993,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Pulse_width_cy_27_Q_1994,
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
      LOC => "SLICE_X22Y11",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(26),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(26)
    );
  N0_6_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(25),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(25)
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y11",
      INIT => X"FA000000FA000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(24),
      ADR3 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(24)
    );
  N0_8_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y11",
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
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X22Y12",
      INIT => X"AAAAA0A000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => Transmitter_Pulse_width(31),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_e_actual_FSM_FFd2_1896,
      O => Transmitter_Mcount_Pulse_width_lut(31)
    );
  Transmitter_Pulse_width_30 : X_FF
    generic map(
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X22Y12"
    )
    port map (
      CI => Transmitter_Mcount_Pulse_width_cy_27_Q_1994,
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
      LOC => "SLICE_X22Y12",
      INIT => X"CCC00000CCC00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(30),
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(30)
    );
  N0_2_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X22Y12",
      INIT => X"F0C00000F0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(29),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(29)
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X22Y12",
      INIT => X"F0A00000F0A00000"
    )
    port map (
      ADR1 => '1',
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR4 => Transmitter_Pulse_width(28),
      ADR2 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR5 => '1',
      O => Transmitter_Mcount_Pulse_width_lut(28)
    );
  N0_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X22Y12",
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
      LOC => "SLICE_X6Y10",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => Receiver_BitCounter(15),
      ADR2 => Receiver_BitCounter(16),
      ADR3 => Receiver_BitCounter(17),
      ADR1 => Receiver_BitCounter(18),
      ADR4 => Receiver_BitCounter(19),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_3_Q_462
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => Receiver_BitCounter(15),
      ADR2 => Receiver_BitCounter(16),
      ADR3 => Receiver_BitCounter(17),
      ADR1 => Receiver_BitCounter(18),
      ADR4 => Receiver_BitCounter(19),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi3_463
    );
  ProtoComp11_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      O => ProtoComp11_CYINITVCC_1
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y10"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp11_CYINITVCC_1,
      CO(3) => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q_2010,
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
      LOC => "SLICE_X6Y10",
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
      LOC => "SLICE_X6Y10",
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
      LOC => "SLICE_X6Y10",
      INIT => X"0000004000000040"
    )
    port map (
      ADR1 => Receiver_BitCounter(5),
      ADR4 => Receiver_BitCounter(6),
      ADR2 => Receiver_BitCounter(7),
      ADR0 => Receiver_BitCounter(8),
      ADR3 => Receiver_BitCounter(9),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_1_Q_478
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y10",
      INIT => X"FFFAFFAA"
    )
    port map (
      ADR1 => '1',
      ADR4 => Receiver_BitCounter(6),
      ADR2 => Receiver_BitCounter(7),
      ADR0 => Receiver_BitCounter(8),
      ADR3 => Receiver_BitCounter(9),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi1_479
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y10",
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
      LOC => "SLICE_X6Y10",
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
      LOC => "SLICE_X6Y11",
      INIT => X"3000300030003000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => LineRD_in_2028,
      ADR1 => Receiver_e_actual_FSM_FFd2_1923,
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mmux_Store_out11_lut_496
    );
  N0_129_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y11",
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
      LOC => "SLICE_X6Y11"
    )
    port map (
      CI => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_3_Q_2010,
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
      LOC => "SLICE_X6Y11",
      INIT => X"0000333300003333"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(30),
      ADR1 => Receiver_BitCounter(31),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_6_Q_504
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => X"33330000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(30),
      ADR1 => Receiver_BitCounter(31),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi6_505
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y11",
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
      LOC => "SLICE_X6Y11",
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
      LOC => "SLICE_X6Y11",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => Receiver_BitCounter(20),
      ADR3 => Receiver_BitCounter(21),
      ADR4 => Receiver_BitCounter(22),
      ADR2 => Receiver_BitCounter(23),
      ADR0 => Receiver_BitCounter(24),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lut_4_Q_515
    );
  Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y11",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => Receiver_BitCounter(20),
      ADR3 => Receiver_BitCounter(21),
      ADR4 => Receiver_BitCounter(22),
      ADR2 => Receiver_BitCounter(23),
      ADR0 => Receiver_BitCounter(24),
      O => Receiver_Mcompar_BitCounter_31_INV_10_o_lutdi4_516
    );
  Transmitter_Mcompar_n0017_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => Transmitter_Data_count(15),
      ADR0 => Transmitter_Data_count(16),
      ADR3 => Transmitter_Data_count(17),
      ADR1 => Transmitter_Data_count(18),
      ADR2 => Transmitter_Data_count(19),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(3)
    );
  Transmitter_Mcompar_n0017_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => Transmitter_Data_count(15),
      ADR0 => Transmitter_Data_count(16),
      ADR3 => Transmitter_Data_count(17),
      ADR1 => Transmitter_Data_count(18),
      ADR2 => Transmitter_Data_count(19),
      O => Transmitter_Mcompar_n0017_lutdi3_527
    );
  ProtoComp13_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      O => ProtoComp13_CYINITVCC_1
    );
  Transmitter_Mcompar_n0017_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp13_CYINITVCC_1,
      CO(3) => Transmitter_Mcompar_n0017_cy_3_Q_2045,
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
      LOC => "SLICE_X20Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR1 => Transmitter_Data_count(10),
      ADR2 => Transmitter_Data_count(11),
      ADR0 => Transmitter_Data_count(12),
      ADR3 => Transmitter_Data_count(13),
      ADR4 => Transmitter_Data_count(14),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(2)
    );
  Transmitter_Mcompar_n0017_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR1 => Transmitter_Data_count(10),
      ADR2 => Transmitter_Data_count(11),
      ADR0 => Transmitter_Data_count(12),
      ADR3 => Transmitter_Data_count(13),
      ADR4 => Transmitter_Data_count(14),
      O => Transmitter_Mcompar_n0017_lutdi2_536
    );
  Transmitter_Mcompar_n0017_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => Transmitter_Data_count(5),
      ADR4 => Transmitter_Data_count(6),
      ADR0 => Transmitter_Data_count(7),
      ADR2 => Transmitter_Data_count(8),
      ADR1 => Transmitter_Data_count(9),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(1)
    );
  Transmitter_Mcompar_n0017_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => Transmitter_Data_count(5),
      ADR4 => Transmitter_Data_count(6),
      ADR0 => Transmitter_Data_count(7),
      ADR2 => Transmitter_Data_count(8),
      ADR1 => Transmitter_Data_count(9),
      O => Transmitter_Mcompar_n0017_lutdi1_543
    );
  Transmitter_Mcompar_n0017_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"0040000000400000"
    )
    port map (
      ADR2 => Transmitter_Data_count(0),
      ADR1 => Transmitter_Data_count(1),
      ADR4 => Transmitter_Data_count(2),
      ADR0 => Transmitter_Data_count(3),
      ADR3 => Transmitter_Data_count(4),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(0)
    );
  Transmitter_Mcompar_n0017_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => X"FFAAFFAA"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => Transmitter_Data_count(3),
      ADR3 => Transmitter_Data_count(4),
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
      LOC => "SLICE_X20Y4"
    )
    port map (
      CI => Transmitter_Mcompar_n0017_cy_3_Q_2045,
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
      LOC => "SLICE_X20Y4",
      INIT => X"000000FF000000FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_Data_count(30),
      ADR4 => Transmitter_Data_count(31),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(6)
    );
  Transmitter_Mcompar_n0017_lutdi6 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"0000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_Data_count(30),
      ADR4 => Transmitter_Data_count(31),
      O => Transmitter_Mcompar_n0017_lutdi6_563
    );
  Transmitter_Mcompar_n0017_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"0000000100000001"
    )
    port map (
      ADR0 => Transmitter_Data_count(25),
      ADR3 => Transmitter_Data_count(26),
      ADR2 => Transmitter_Data_count(27),
      ADR1 => Transmitter_Data_count(28),
      ADR4 => Transmitter_Data_count(29),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(5)
    );
  Transmitter_Mcompar_n0017_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR0 => Transmitter_Data_count(25),
      ADR3 => Transmitter_Data_count(26),
      ADR2 => Transmitter_Data_count(27),
      ADR1 => Transmitter_Data_count(28),
      ADR4 => Transmitter_Data_count(29),
      O => Transmitter_Mcompar_n0017_lutdi5_567
    );
  Transmitter_Mcompar_n0017_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"0000000100000001"
    )
    port map (
      ADR4 => Transmitter_Data_count(20),
      ADR3 => Transmitter_Data_count(21),
      ADR2 => Transmitter_Data_count(22),
      ADR0 => Transmitter_Data_count(23),
      ADR1 => Transmitter_Data_count(24),
      ADR5 => '1',
      O => Transmitter_Mcompar_n0017_lut(4)
    );
  Transmitter_Mcompar_n0017_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR4 => Transmitter_Data_count(20),
      ADR3 => Transmitter_Data_count(21),
      ADR2 => Transmitter_Data_count(22),
      ADR0 => Transmitter_Data_count(23),
      ADR1 => Transmitter_Data_count(24),
      O => Transmitter_Mcompar_n0017_lutdi4_574
    );
  Receiver_BitCounter_3 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_3_CLK,
      I => Receiver_Result(3),
      O => Receiver_BitCounter(3),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(3),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_3_rt_585
    );
  N0_92_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y7",
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
  ProtoComp15_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X4Y7"
    )
    port map (
      O => ProtoComp15_CYINITGND_0
    );
  Receiver_BitCounter_2 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_2_CLK,
      I => Receiver_Result(2),
      O => Receiver_BitCounter(2),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y7"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp15_CYINITGND_0,
      CO(3) => Receiver_Mcount_BitCounter_cy_3_Q_2063,
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
      S(3) => Receiver_BitCounter_3_rt_585,
      S(2) => Receiver_BitCounter_2_rt_597,
      S(1) => Receiver_BitCounter_1_rt_601,
      S(0) => Receiver_Mcount_BitCounter_lut(0)
    );
  Receiver_BitCounter_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(2),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_2_rt_597
    );
  N0_93_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y7",
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
  Receiver_BitCounter_1 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_1_CLK,
      I => Receiver_Result(1),
      O => Receiver_BitCounter(1),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(1),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_1_rt_601
    );
  N0_94_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y7",
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
  Receiver_BitCounter_0 : X_SFF
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_0_CLK,
      I => Receiver_Result(0),
      O => Receiver_BitCounter(0),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y7",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(0),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_Mcount_BitCounter_lut(0)
    );
  N1_4_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y7",
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
  Receiver_BitCounter_7 : X_SFF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_7_CLK,
      I => Receiver_Result(7),
      O => Receiver_BitCounter(7),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(7),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_7_rt_614
    );
  N0_88_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
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
  Receiver_BitCounter_6 : X_SFF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_6_CLK,
      I => Receiver_Result(6),
      O => Receiver_BitCounter(6),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y8"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_3_Q_2063,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_7_Q_2065,
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
      S(3) => Receiver_BitCounter_7_rt_614,
      S(2) => Receiver_BitCounter_6_rt_626,
      S(1) => Receiver_BitCounter_5_rt_630,
      S(0) => Receiver_BitCounter_4_rt_634
    );
  Receiver_BitCounter_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(6),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_6_rt_626
    );
  N0_89_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
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
  Receiver_BitCounter_5 : X_SFF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_5_CLK,
      I => Receiver_Result(5),
      O => Receiver_BitCounter(5),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(5),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_5_rt_630
    );
  N0_90_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
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
  Receiver_BitCounter_4 : X_SFF
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_4_CLK,
      I => Receiver_Result(4),
      O => Receiver_BitCounter(4),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y8",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(4),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_4_rt_634
    );
  N0_91_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y8",
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
  Receiver_BitCounter_11 : X_SFF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_11_CLK,
      I => Receiver_Result(11),
      O => Receiver_BitCounter(11),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(11),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_11_rt_643
    );
  N0_84_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y9",
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
  Receiver_BitCounter_10 : X_SFF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_10_CLK,
      I => Receiver_Result(10),
      O => Receiver_BitCounter(10),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y9"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_7_Q_2065,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_11_Q_2066,
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
      S(3) => Receiver_BitCounter_11_rt_643,
      S(2) => Receiver_BitCounter_10_rt_655,
      S(1) => Receiver_BitCounter_9_rt_659,
      S(0) => Receiver_BitCounter_8_rt_663
    );
  Receiver_BitCounter_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(10),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_10_rt_655
    );
  N0_85_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y9",
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
  Receiver_BitCounter_9 : X_SFF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_9_CLK,
      I => Receiver_Result(9),
      O => Receiver_BitCounter(9),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(9),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_9_rt_659
    );
  N0_86_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y9",
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
  Receiver_BitCounter_8 : X_SFF
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_8_CLK,
      I => Receiver_Result(8),
      O => Receiver_BitCounter(8),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y9",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(8),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_8_rt_663
    );
  N0_87_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y9",
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
  Receiver_BitCounter_15 : X_SFF
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_15_CLK,
      I => Receiver_Result(15),
      O => Receiver_BitCounter(15),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(15),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_15_rt_672
    );
  N0_80_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y10",
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
  Receiver_BitCounter_14 : X_SFF
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_14_CLK,
      I => Receiver_Result(14),
      O => Receiver_BitCounter(14),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y10"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_11_Q_2066,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_15_Q_2067,
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
      S(3) => Receiver_BitCounter_15_rt_672,
      S(2) => Receiver_BitCounter_14_rt_684,
      S(1) => Receiver_BitCounter_13_rt_688,
      S(0) => Receiver_BitCounter_12_rt_692
    );
  Receiver_BitCounter_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(14),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_14_rt_684
    );
  N0_81_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y10",
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
  Receiver_BitCounter_13 : X_SFF
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_13_CLK,
      I => Receiver_Result(13),
      O => Receiver_BitCounter(13),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(13),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_13_rt_688
    );
  N0_82_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y10",
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
  Receiver_BitCounter_12 : X_SFF
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_12_CLK,
      I => Receiver_Result(12),
      O => Receiver_BitCounter(12),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y10",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(12),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_12_rt_692
    );
  N0_83_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y10",
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
  Receiver_BitCounter_19 : X_SFF
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_19_CLK,
      I => Receiver_Result(19),
      O => Receiver_BitCounter(19),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(19),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_19_rt_701
    );
  N0_76_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y11",
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
  Receiver_BitCounter_18 : X_SFF
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_18_CLK,
      I => Receiver_Result(18),
      O => Receiver_BitCounter(18),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y11"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_15_Q_2067,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_19_Q_2068,
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
      S(3) => Receiver_BitCounter_19_rt_701,
      S(2) => Receiver_BitCounter_18_rt_713,
      S(1) => Receiver_BitCounter_17_rt_717,
      S(0) => Receiver_BitCounter_16_rt_721
    );
  Receiver_BitCounter_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(18),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_18_rt_713
    );
  N0_77_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y11",
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
  Receiver_BitCounter_17 : X_SFF
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_17_CLK,
      I => Receiver_Result(17),
      O => Receiver_BitCounter(17),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(17),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_17_rt_717
    );
  N0_78_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y11",
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
  Receiver_BitCounter_16 : X_SFF
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_16_CLK,
      I => Receiver_Result(16),
      O => Receiver_BitCounter(16),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y11",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(16),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_16_rt_721
    );
  N0_79_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y11",
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
  Receiver_BitCounter_23 : X_SFF
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_23_CLK,
      I => Receiver_Result(23),
      O => Receiver_BitCounter(23),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(23),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_23_rt_730
    );
  N0_72_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y12",
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
  Receiver_BitCounter_22 : X_SFF
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_22_CLK,
      I => Receiver_Result(22),
      O => Receiver_BitCounter(22),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y12"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_19_Q_2068,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_23_Q_2069,
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
      S(3) => Receiver_BitCounter_23_rt_730,
      S(2) => Receiver_BitCounter_22_rt_742,
      S(1) => Receiver_BitCounter_21_rt_746,
      S(0) => Receiver_BitCounter_20_rt_750
    );
  Receiver_BitCounter_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(22),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_22_rt_742
    );
  N0_73_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y12",
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
  Receiver_BitCounter_21 : X_SFF
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_21_CLK,
      I => Receiver_Result(21),
      O => Receiver_BitCounter(21),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(21),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_21_rt_746
    );
  N0_74_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y12",
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
  Receiver_BitCounter_20 : X_SFF
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_20_CLK,
      I => Receiver_Result(20),
      O => Receiver_BitCounter(20),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y12",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(20),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_20_rt_750
    );
  N0_75_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y12",
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
  Receiver_BitCounter_27 : X_SFF
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_27_CLK,
      I => Receiver_Result(27),
      O => Receiver_BitCounter(27),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_27_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(27),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_27_rt_759
    );
  N0_68_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y13",
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
  Receiver_BitCounter_26 : X_SFF
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_26_CLK,
      I => Receiver_Result(26),
      O => Receiver_BitCounter(26),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_cy_27_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y13"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_23_Q_2069,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_BitCounter_cy_27_Q_2070,
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
      S(3) => Receiver_BitCounter_27_rt_759,
      S(2) => Receiver_BitCounter_26_rt_771,
      S(1) => Receiver_BitCounter_25_rt_775,
      S(0) => Receiver_BitCounter_24_rt_779
    );
  Receiver_BitCounter_26_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(26),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_26_rt_771
    );
  N0_69_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y13",
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
  Receiver_BitCounter_25 : X_SFF
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_25_CLK,
      I => Receiver_Result(25),
      O => Receiver_BitCounter(25),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_25_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(25),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_25_rt_775
    );
  N0_70_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y13",
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
  Receiver_BitCounter_24 : X_SFF
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_24_CLK,
      I => Receiver_Result(24),
      O => Receiver_BitCounter(24),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_24_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y13",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(24),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_24_rt_779
    );
  N0_71_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y13",
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
  Receiver_BitCounter_31 : X_SFF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_31_CLK,
      I => Receiver_Result(31),
      O => Receiver_BitCounter(31),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_31_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Receiver_BitCounter(31),
      ADR4 => '1',
      ADR3 => '1',
      O => Receiver_BitCounter_31_rt_791
    );
  Receiver_BitCounter_30 : X_SFF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_30_CLK,
      I => Receiver_Result(30),
      O => Receiver_BitCounter(30),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_Mcount_BitCounter_xor_31_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X4Y14"
    )
    port map (
      CI => Receiver_Mcount_BitCounter_cy_27_Q_2070,
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
      S(3) => Receiver_BitCounter_31_rt_791,
      S(2) => Receiver_BitCounter_30_rt_798,
      S(1) => Receiver_BitCounter_29_rt_802,
      S(0) => Receiver_BitCounter_28_rt_806
    );
  Receiver_BitCounter_30_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(30),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_30_rt_798
    );
  N0_65_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
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
  Receiver_BitCounter_29 : X_SFF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_29_CLK,
      I => Receiver_Result(29),
      O => Receiver_BitCounter(29),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_29_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(29),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_29_rt_802
    );
  N0_66_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
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
  Receiver_BitCounter_28 : X_SFF
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => '0'
    )
    port map (
      CE => Reset_IBUF_0,
      CLK => NlwBufferSignal_Receiver_BitCounter_28_CLK,
      I => Receiver_Result(28),
      O => Receiver_BitCounter(28),
      SRST => Receiver_n0063,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Receiver_BitCounter_28_rt : X_LUT6
    generic map(
      LOC => "SLICE_X4Y14",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_BitCounter(28),
      ADR3 => '1',
      ADR5 => '1',
      O => Receiver_BitCounter_28_rt_806
    );
  N0_67_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X4Y14",
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
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(3),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(3)
    );
  N0_60_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2"
    )
    port map (
      CI => '0',
      CYINIT => Transmitter_e_actual_FSM_FFd1_1897,
      CO(3) => Transmitter_Mcount_Data_count_cy_3_Q_2072,
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
      LOC => "SLICE_X24Y2",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(2),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(2)
    );
  N0_61_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(1),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(1)
    );
  N0_62_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y2",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(0),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(0)
    );
  N0_63_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y2",
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
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(7),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(7)
    );
  N0_56_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_3_Q_2072,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_7_Q_2073,
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
      LOC => "SLICE_X24Y3",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(6),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(6)
    );
  N0_57_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_Data_count(5),
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(5)
    );
  N0_58_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y3",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_Data_count(4),
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(4)
    );
  N0_59_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y3",
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
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(11),
      ADR0 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(11)
    );
  N0_52_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_7_Q_2073,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_11_Q_2074,
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
      LOC => "SLICE_X24Y4",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(10),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(10)
    );
  N0_53_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Transmitter_Data_count(9),
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(9)
    );
  N0_54_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y4",
      INIT => X"AAAA0000AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(8),
      ADR0 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(8)
    );
  N0_55_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y4",
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
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(15),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(15)
    );
  N0_48_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_11_Q_2074,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_15_Q_2075,
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
      LOC => "SLICE_X24Y5",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(14),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(14)
    );
  N0_49_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(13),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(13)
    );
  N0_50_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y5",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(12),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(12)
    );
  N0_51_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y5",
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
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(19),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(19)
    );
  N0_44_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_15_Q_2075,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_19_Q_2076,
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
      LOC => "SLICE_X24Y6",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(18),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(18)
    );
  N0_45_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(17),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(17)
    );
  N0_46_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y6",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(16),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(16)
    );
  N0_47_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y6",
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
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(23),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(23)
    );
  N0_40_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_19_Q_2076,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_23_Q_2077,
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
      LOC => "SLICE_X24Y7",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(22),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(22)
    );
  N0_41_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(21),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(21)
    );
  N0_42_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y7",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(20),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(20)
    );
  N0_43_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y7",
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
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(27),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(27)
    );
  N0_36_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_23_Q_2077,
      CYINIT => '0',
      CO(3) => Transmitter_Mcount_Data_count_cy_27_Q_2078,
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
      LOC => "SLICE_X24Y8",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(26),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(26)
    );
  N0_37_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(25),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(25)
    );
  N0_38_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y8",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(24),
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(24)
    );
  N0_39_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y8",
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
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X24Y9",
      INIT => X"FF00FF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Transmitter_Data_count(31),
      ADR4 => '1',
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      O => Transmitter_Mcount_Data_count_lut(31)
    );
  Transmitter_Data_count_30 : X_FF
    generic map(
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X24Y9"
    )
    port map (
      CI => Transmitter_Mcount_Data_count_cy_27_Q_2078,
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
      LOC => "SLICE_X24Y9",
      INIT => X"F0F00000F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => Transmitter_Data_count(30),
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(30)
    );
  N0_33_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X24Y9",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(29),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(29)
    );
  N0_34_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X24Y9",
      INIT => X"CCCC0000CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => Transmitter_Data_count(28),
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => Transmitter_Mcount_Data_count_lut(28)
    );
  N0_35_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X24Y9",
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
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(3),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(3)
    );
  N0_124_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10"
    )
    port map (
      CI => '0',
      CYINIT => Receiver_e_actual_FSM_FFd1_1922,
      CO(3) => Receiver_Mcount_Data_count_cy_3_Q_2083,
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
      LOC => "SLICE_X8Y10",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(2),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(2)
    );
  N0_125_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(1),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(1)
    );
  N0_126_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y10",
      INIT => X"C0C0C0C0C0C0C0C0"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Receiver_Data_count(0),
      ADR1 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(0)
    );
  N0_127_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y10",
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
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(7),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(7)
    );
  N0_120_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_3_Q_2083,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_7_Q_2088,
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
      LOC => "SLICE_X8Y11",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(6),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(6)
    );
  N0_121_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(5),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(5)
    );
  N0_122_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y11",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(4),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(4)
    );
  N0_123_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y11",
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
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(11),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(11)
    );
  N0_116_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_7_Q_2088,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_11_Q_2093,
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
      LOC => "SLICE_X8Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(10),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(10)
    );
  N0_117_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(9),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(9)
    );
  N0_118_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y12",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(8),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(8)
    );
  N0_119_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y12",
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
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(15),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(15)
    );
  N0_112_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_11_Q_2093,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_15_Q_2098,
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
      LOC => "SLICE_X8Y13",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(14),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(14)
    );
  N0_113_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(13),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(13)
    );
  N0_114_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y13",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(12),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(12)
    );
  N0_115_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y13",
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
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(19),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(19)
    );
  N0_108_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_15_Q_2098,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_19_Q_2103,
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
      LOC => "SLICE_X8Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(18),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(18)
    );
  N0_109_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(17),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(17)
    );
  N0_110_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y14",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(16),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(16)
    );
  N0_111_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y14",
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
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(23),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(23)
    );
  N0_104_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_19_Q_2103,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_23_Q_2108,
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
      LOC => "SLICE_X8Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(22),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(22)
    );
  N0_105_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(21),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(21)
    );
  N0_106_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y15",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(20),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(20)
    );
  N0_107_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y15",
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
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(27),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(27)
    );
  N0_100_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_23_Q_2108,
      CYINIT => '0',
      CO(3) => Receiver_Mcount_Data_count_cy_27_Q_2113,
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
      LOC => "SLICE_X8Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(26),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(26)
    );
  N0_101_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(25),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(25)
    );
  N0_102_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y16",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(24),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(24)
    );
  N0_103_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y16",
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
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X8Y17",
      INIT => X"FF00FF0000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Receiver_Data_count(31),
      ADR4 => '1',
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      O => Receiver_Mcount_Data_count_lut(31)
    );
  Receiver_Data_count_30 : X_FF
    generic map(
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X8Y17"
    )
    port map (
      CI => Receiver_Mcount_Data_count_cy_27_Q_2113,
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
      LOC => "SLICE_X8Y17",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Receiver_Data_count(30),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(30)
    );
  N0_97_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X8Y17",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(29),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(29)
    );
  N0_98_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X8Y17",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => Receiver_Data_count(28),
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => '1',
      O => Receiver_Mcount_Data_count_lut(28)
    );
  N0_99_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X8Y17",
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
      LOC => "SLICE_X6Y8",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => Receiver_BitCounter(16),
      ADR0 => Receiver_BitCounter(17),
      ADR1 => Receiver_BitCounter(18),
      ADR2 => Receiver_BitCounter(19),
      ADR4 => Receiver_BitCounter(20),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q_1326
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => Receiver_BitCounter(16),
      ADR0 => Receiver_BitCounter(17),
      ADR1 => Receiver_BitCounter(18),
      ADR2 => Receiver_BitCounter(19),
      ADR4 => Receiver_BitCounter(20),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3_1327
    );
  ProtoComp24_CYINITVCC : X_ONE
    generic map(
      LOC => "SLICE_X6Y8"
    )
    port map (
      O => ProtoComp24_CYINITVCC_1
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y8"
    )
    port map (
      CI => '0',
      CYINIT => ProtoComp24_CYINITVCC_1,
      CO(3) => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q_2119,
      CO(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_CO_0_UNCONNECTED,
      DI(3) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi3_1327,
      DI(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2_1336,
      DI(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1_1343,
      DI(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi_1350,
      O(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_O_0_UNCONNECTED,
      S(3) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_3_Q_1326,
      S(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q_1335,
      S(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q_1342,
      S(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q_1349
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0000000100000001"
    )
    port map (
      ADR3 => Receiver_BitCounter(11),
      ADR2 => Receiver_BitCounter(12),
      ADR0 => Receiver_BitCounter(13),
      ADR4 => Receiver_BitCounter(14),
      ADR1 => Receiver_BitCounter(15),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_2_Q_1335
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR3 => Receiver_BitCounter(11),
      ADR2 => Receiver_BitCounter(12),
      ADR0 => Receiver_BitCounter(13),
      ADR4 => Receiver_BitCounter(14),
      ADR1 => Receiver_BitCounter(15),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi2_1336
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0000001000000010"
    )
    port map (
      ADR2 => Receiver_BitCounter(6),
      ADR1 => Receiver_BitCounter(7),
      ADR0 => Receiver_BitCounter(8),
      ADR4 => Receiver_BitCounter(9),
      ADR3 => Receiver_BitCounter(10),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_1_Q_1342
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"FFFFFFEE"
    )
    port map (
      ADR2 => '1',
      ADR1 => Receiver_BitCounter(7),
      ADR0 => Receiver_BitCounter(8),
      ADR4 => Receiver_BitCounter(9),
      ADR3 => Receiver_BitCounter(10),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi1_1343
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"0040000000400000"
    )
    port map (
      ADR2 => Receiver_BitCounter(4),
      ADR4 => Receiver_BitCounter(2),
      ADR1 => Receiver_BitCounter(1),
      ADR0 => Receiver_BitCounter(3),
      ADR3 => Receiver_BitCounter(5),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_0_Q_1349
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi : X_LUT5
    generic map(
      LOC => "SLICE_X6Y8",
      INIT => X"FFA0FFA0"
    )
    port map (
      ADR2 => Receiver_BitCounter(4),
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => Receiver_BitCounter(3),
      ADR3 => Receiver_BitCounter(5),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi_1350
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q_1361,
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X6Y9"
    )
    port map (
      CI => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_3_Q_2119,
      CYINIT => '0',
      CO(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_3_UNCONNECTED,
      CO(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_Q_1361,
      CO(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_1_UNCONNECTED,
      CO(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_CO_0_UNCONNECTED,
      DI(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5_1366,
      DI(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4_1373,
      O(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_3_UNCONNECTED,
      O(2) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_2_UNCONNECTED,
      O(1) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_1_UNCONNECTED,
      O(0) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_O_0_UNCONNECTED,
      S(3) => NLW_Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_S_3_UNCONNECTED,
      S(2) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_Q,
      S(1) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q_1365,
      S(0) => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q_1372
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR1 => Receiver_BitCounter(31),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_6_Q
    );
  N0_64_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X6Y9",
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
      LOC => "SLICE_X6Y9",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => Receiver_BitCounter(26),
      ADR0 => Receiver_BitCounter(27),
      ADR1 => Receiver_BitCounter(28),
      ADR4 => Receiver_BitCounter(29),
      ADR3 => Receiver_BitCounter(30),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_5_Q_1365
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR2 => Receiver_BitCounter(26),
      ADR0 => Receiver_BitCounter(27),
      ADR1 => Receiver_BitCounter(28),
      ADR4 => Receiver_BitCounter(29),
      ADR3 => Receiver_BitCounter(30),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi5_1366
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"0000000100000001"
    )
    port map (
      ADR2 => Receiver_BitCounter(21),
      ADR3 => Receiver_BitCounter(22),
      ADR1 => Receiver_BitCounter(23),
      ADR0 => Receiver_BitCounter(24),
      ADR4 => Receiver_BitCounter(25),
      ADR5 => '1',
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lut_4_Q_1372
    );
  Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y9",
      INIT => X"FFFFFFFE"
    )
    port map (
      ADR2 => Receiver_BitCounter(21),
      ADR3 => Receiver_BitCounter(22),
      ADR1 => Receiver_BitCounter(23),
      ADR0 => Receiver_BitCounter(24),
      ADR4 => Receiver_BitCounter(25),
      O => Receiver_Mcompar_BitCounter_31_INV_9_o_lutdi4_1373
    );
  Data_read_IBUF : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_read_IBUF_1383,
      I => Data_read
    );
  ProtoComp26_IMUX : X_BUF
    generic map(
      LOC => "PAD201",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_read_IBUF_1383,
      O => Data_read_IBUF_0
    );
  RD_IBUF : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      O => RD_IBUF_1386,
      I => RD
    );
  ProtoComp26_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD157",
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_1386,
      O => RD_IBUF_0
    );
  TD_OBUF : X_OBUF
    generic map(
      LOC => "PAD180"
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
      LOC => "PAD199"
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
      O => Clk_BUFGP_IBUFG_1395,
      I => Clk
    );
  ProtoComp26_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD234",
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP_IBUFG_1395,
      O => Clk_BUFGP_IBUFG_0
    );
  Ack_in_OBUF : X_OBUF
    generic map(
      LOC => "PAD195"
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
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      O => Valid_D_IBUF_1416,
      I => Valid_D
    );
  ProtoComp26_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD196",
      PATHPULSE => 202 ps
    )
    port map (
      I => Valid_D_IBUF_1416,
      O => Valid_D_IBUF_0
    );
  Empty_OBUF : X_OBUF
    generic map(
      LOC => "PAD197"
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
      O => Reset_IBUF_1421,
      I => Reset
    );
  ProtoComp26_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD198",
      PATHPULSE => 202 ps
    )
    port map (
      I => Reset_IBUF_1421,
      O => Reset_IBUF_0
    );
  Data_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_0_IBUF_1424,
      I => Data_in(0)
    );
  ProtoComp26_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD158",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_0_IBUF_1424,
      O => Data_in_0_IBUF_0
    );
  Data_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_1_IBUF_1427,
      I => Data_in(1)
    );
  ProtoComp26_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD159",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_1_IBUF_1427,
      O => Data_in_1_IBUF_0
    );
  Data_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_2_IBUF_1430,
      I => Data_in(2)
    );
  ProtoComp26_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_2_IBUF_1430,
      O => Data_in_2_IBUF_0
    );
  Data_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_3_IBUF_1433,
      I => Data_in(3)
    );
  ProtoComp26_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD175",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_3_IBUF_1433,
      O => Data_in_3_IBUF_0
    );
  Data_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_4_IBUF_1436,
      I => Data_in(4)
    );
  ProtoComp26_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD176",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_4_IBUF_1436,
      O => Data_in_4_IBUF_0
    );
  Data_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_5_IBUF_1439,
      I => Data_in(5)
    );
  ProtoComp26_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD177",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_5_IBUF_1439,
      O => Data_in_5_IBUF_0
    );
  Data_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_6_IBUF_1442,
      I => Data_in(6)
    );
  ProtoComp26_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD178",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_6_IBUF_1442,
      O => Data_in_6_IBUF_0
    );
  Data_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      O => Data_in_7_IBUF_1445,
      I => Data_in(7)
    );
  ProtoComp26_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD179",
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_in_7_IBUF_1445,
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
      LOC => "SLICE_X0Y12",
      INIT => X"8241000000008241"
    )
    port map (
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11_2138
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
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
      LOC => "SLICE_X0Y12",
      INIT => X"7F7F80807F7F8080"
    )
    port map (
      ADR3 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_3_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_Mmux_gc0_count_3_GND_45_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y12",
      INIT => X"6A6A6A6A"
    )
    port map (
      ADR4 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(1),
      ADR3 => '1',
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_2_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X0Y12",
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
      LOC => "SLICE_X0Y12",
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
      LOC => "SLICE_X0Y12",
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
      LOC => "SLICE_X0Y12",
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
      LOC => "SLICE_X0Y12",
      INIT => X"00000000FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(0),
      ADR4 => '1',
      ADR3 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_3_GND_45_o_mux_2_OUT_0_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i : X_FF
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_ram_rd_en_i1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y12",
      INIT => X"3333333300000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => Data_read_IBUF_0,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      O => Internal_memory_BU2_U0_grf_rf_ram_rd_en
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i : X_FF
    generic map(
      LOC => "SLICE_X2Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_IN,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134,
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y11",
      INIT => X"4000100044001100"
    )
    port map (
      ADR5 => Fifo_write_0,
      ADR3 => Data_read_IBUF_0,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count(2),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134,
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12_2139
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y12",
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
      LOC => "SLICE_X2Y12",
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
      LOC => "SLICE_X2Y12",
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
      LOC => "SLICE_X2Y12",
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
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y12",
      INIT => X"8040080420100201"
    )
    port map (
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o11
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
      LOC => "SLICE_X2Y13",
      INIT => X"0F0F00000F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => Fifo_write_0,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134,
      O => Internal_memory_BU2_U0_grf_rf_ram_wr_en
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
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
      LOC => "SLICE_X2Y13",
      INIT => X"7F7F80807F7F8080"
    )
    port map (
      ADR3 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_3_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_Mmux_gcc0_gc0_count_3_GND_51_o_mux_2_OUT31 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y13",
      INIT => X"6A6A6A6A"
    )
    port map (
      ADR4 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => '1',
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_2_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_2 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
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
      LOC => "SLICE_X2Y13",
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
      LOC => "SLICE_X2Y13",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(1),
      ADR3 => '1',
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_3_GND_51_o_mux_2_OUT_1_Q
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_0 : X_FF
    generic map(
      LOC => "SLICE_X2Y13",
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
      LOC => "SLICE_X2Y13",
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
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o13 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"080004000A000500"
    )
    port map (
      ADR5 => Data_read_IBUF_0,
      ADR3 => Fifo_write_0,
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count(2),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12_2169
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i : X_FF
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o,
      O => Full_OBUF_2123,
      RST => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg(0),
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y10",
      INIT => X"FFFFF000FEEEF000"
    )
    port map (
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o12_2169,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o11,
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o14,
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2141,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_comb_GND_53_o_MUX_10_o
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => X"0AFF0A0ACEFFCECE"
    )
    port map (
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2141
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i : X_FF
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_i_CLK,
      I => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o,
      O => Empty_OBUF_2125,
      SET => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2_Q,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o16 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y11",
      INIT => X"EEEEEEEACCCCCCC0"
    )
    port map (
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o12_2139,
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o11_2138,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14_2140,
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1,
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o13_2141,
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_going_empty_PWR_31_o_MUX_8_o
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_3 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
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
      LOC => "SLICE_X3Y12",
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
      LOC => "SLICE_X3Y12",
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
      LOC => "SLICE_X3Y12",
      INIT => X"DDFFFDFFCCFFFCFF"
    )
    port map (
      ADR3 => Data_read_IBUF_0,
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      O => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_Mmux_ram_full_comb_GND_53_o_MUX_10_o14
    );
  Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y12",
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
      LOC => "SLICE_X3Y12",
      INIT => X"0C0CAEAEFF0CFFAE"
    )
    port map (
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(2),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(2),
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(3),
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(3),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR4 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o1
    );
  Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o15 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y13",
      INIT => X"F5F0FFFFFDFCFFFF"
    )
    port map (
      ADR4 => Fifo_write_0,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_fb_i_2134,
      ADR1 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(1),
      ADR5 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(1),
      ADR3 => Internal_memory_BU2_U0_grf_rf_gl0_rd_rpntr_gc0_count_d1(0),
      ADR0 => Internal_memory_BU2_U0_grf_rf_gl0_wr_wpntr_gcc0_gc0_count_d1(0),
      O => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_Mmux_going_empty_PWR_31_o_MUX_8_o14_2140
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y14",
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
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_wr_rst_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y14",
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
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y15",
      INIT => X"00CC00CC00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_2168,
      ADR1 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_1908,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_comb
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X3Y15",
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
      LOC => "SLICE_X3Y15",
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
      LOC => "SLICE_X3Y15",
      INIT => X"FFFFFFFF0C0C0C0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => Internal_memory_BU2_U0_grf_rf_rstblk_ngwrdrst_grst_rd_rst_reg_0_Q,
      ADR1 => Data_read_IBUF_0,
      ADR2 => Internal_memory_BU2_U0_grf_rf_gl0_rd_grss_rsts_ram_empty_fb_i_2135,
      O => Internal_memory_BU2_U0_grf_rf_mem_gbm_tmp_ram_rd_en
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y17",
      INIT => X"0000FFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_0,
      ADR5 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_1909,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_comb
    );
  TX_RDY_OBUF_TX_RDY_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Ack_in_OBUF_1624,
      O => Ack_in_OBUF_0
    );
  Transmitter_e_actual_EOT1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"00000F0F00000F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR5 => '1',
      O => TX_RDY_OBUF_1894
    );
  Valid_D_INV_15_o1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => X"FFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => Valid_D_IBUF_0,
      ADR2 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      O => Valid_D_INV_15_o
    );
  Ack_in_682 : X_FF
    generic map(
      LOC => "SLICE_X4Y2",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Ack_in_CLK,
      I => Valid_D_INV_15_o,
      O => Ack_in_OBUF_1624,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Shift_Q_AUX_3 : X_FF
    generic map(
      LOC => "SLICE_X4Y15",
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
  Shift_Q_AUX_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y15",
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
  Shift_Q_AUX_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y15",
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
  Shift_Q_AUX_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y15",
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
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_1646,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_0
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_pack_1,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_1910
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X4Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_IN,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d2_2168,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt : X_LUT5
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X4Y17",
      INIT => X"FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_1910,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt_1643
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X4Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_rt_1643,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d2_1646,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X4Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_CLK,
      I => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_IN,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_1907,
      RST => GND,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt : X_LUT5
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X4Y17",
      INIT => X"F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => '1',
      ADR2 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_1909,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt_1648
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1 : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X4Y17",
      XON => FALSE,
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rt_1648,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_pack_1,
      RST => GND,
      SET => GND
    );
  Shift_Q_AUX_7 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_7_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_7_IN,
      O => Shift_Q_AUX(7),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_6_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_6_IN,
      O => Shift_Q_AUX(6),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_5_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_5_IN,
      O => Shift_Q_AUX(5),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Shift_Q_AUX_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y12",
      INIT => '0'
    )
    port map (
      CE => Valid_out,
      CLK => NlwBufferSignal_Shift_Q_AUX_4_CLK,
      I => NlwBufferSignal_Shift_Q_AUX_4_IN,
      O => Shift_Q_AUX(4),
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_pack_1,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_1908
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X5Y17",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot_1665,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_1909,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot : X_LUT6
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => X"5555000055550000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_1909,
      ADR0 => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_d1_1910,
      ADR5 => '1',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_rd_rst_asreg_rstpot_1665
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X5Y17",
      INIT => X"00CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR3 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_1907,
      ADR1 => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_1908,
      ADR2 => '1',
      ADR4 => '1',
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot_1666
    );
  Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg : X_FF
    generic map(
      MSGON => TRUE,
      LOC => "SLICE_X5Y17",
      XON => FALSE,
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_CLK,
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_rstpot_1666,
      O => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_pack_1,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Valid_out_Valid_out_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Receiver_e_actual_FSM_FFd1_pack_1,
      O => Receiver_e_actual_FSM_FFd1_1922
    );
  Receiver_Valid_out1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"CC000000CC000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => Receiver_e_actual_FSM_FFd1_1922,
      ADR4 => Receiver_e_actual_FSM_FFd2_1923,
      ADR3 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      ADR5 => '1',
      O => Valid_out
    );
  Receiver_e_actual_FSM_FFd1_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => X"FCFC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0,
      ADR1 => Receiver_e_actual_FSM_FFd1_1922,
      ADR4 => Receiver_e_actual_FSM_FFd2_1923,
      ADR3 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      O => Receiver_e_actual_FSM_FFd1_In
    );
  Receiver_e_actual_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X7Y10",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_e_actual_FSM_FFd1_CLK,
      I => Receiver_e_actual_FSM_FFd1_In,
      O => Receiver_e_actual_FSM_FFd1_pack_1,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Receiver_n0078_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y12",
      INIT => X"A000AA00A0000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => Receiver_e_actual_FSM_FFd2_1923,
      ADR0 => Reset_IBUF_0,
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0,
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      O => Receiver_n0078_inv
    );
  Receiver_e_actual_FSM_FFd2_In6 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      ADR1 => Receiver_Data_count(9),
      ADR5 => Receiver_Data_count(2),
      ADR4 => Receiver_Data_count(6),
      ADR2 => Receiver_Data_count(8),
      ADR0 => Receiver_Data_count(7),
      ADR3 => Receiver_e_actual_FSM_FFd1_1922,
      O => Receiver_e_actual_FSM_FFd2_In6_2170
    );
  Receiver_e_actual_FSM_FFd2_In7 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => X"FFFFFFFF0F0FFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => Receiver_Data_count(0),
      ADR4 => Receiver_Data_count(1),
      ADR5 => Receiver_e_actual_FSM_FFd2_In6_2170,
      O => Receiver_e_actual_FSM_FFd2_In7_2146
    );
  Receiver_n006311 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"A000AAAAA00000AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => Reset_IBUF_0,
      ADR4 => Receiver_e_actual_FSM_FFd1_1922,
      ADR3 => Receiver_e_actual_FSM_FFd2_1923,
      ADR5 => Receiver_Mcompar_BitCounter_31_INV_9_o_cy_6_0,
      ADR2 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      O => Receiver_n0063
    );
  Receiver_e_actual_FSM_FFd2_In5 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR5 => Receiver_e_actual_FSM_FFd2_In1_2142,
      ADR4 => Receiver_e_actual_FSM_FFd2_In2_2143,
      ADR2 => Receiver_e_actual_FSM_FFd2_In3_2144,
      ADR1 => Receiver_Data_count(15),
      ADR3 => Receiver_Data_count(16),
      ADR0 => Receiver_e_actual_FSM_FFd2_In4_2145,
      O => Receiver_e_actual_FSM_FFd2_In5_2171
    );
  Receiver_e_actual_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Receiver_e_actual_FSM_FFd2_CLK,
      I => Receiver_e_actual_FSM_FFd2_In,
      O => Receiver_e_actual_FSM_FFd2_1923,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Receiver_e_actual_FSM_FFd2_In8 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y13",
      INIT => X"FF05CD05FF05FF05"
    )
    port map (
      ADR2 => LineRD_in_2028,
      ADR0 => Receiver_e_actual_FSM_FFd1_1922,
      ADR5 => Receiver_Mcompar_BitCounter_31_INV_10_o_cy_6_0,
      ADR3 => Receiver_e_actual_FSM_FFd2_1923,
      ADR4 => Receiver_e_actual_FSM_FFd2_In5_2171,
      ADR1 => Receiver_e_actual_FSM_FFd2_In7_2146,
      O => Receiver_e_actual_FSM_FFd2_In
    );
  Receiver_e_actual_FSM_FFd2_In3 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR4 => Receiver_Data_count(21),
      ADR5 => Receiver_Data_count(22),
      ADR1 => Receiver_Data_count(19),
      ADR3 => Receiver_Data_count(20),
      ADR0 => Receiver_Data_count(17),
      ADR2 => Receiver_Data_count(18),
      O => Receiver_e_actual_FSM_FFd2_In3_2144
    );
  Receiver_e_actual_FSM_FFd2_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y14",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR1 => Receiver_Data_count(4),
      ADR5 => Receiver_Data_count(5),
      ADR4 => Receiver_Data_count(31),
      ADR2 => Receiver_Data_count(3),
      ADR0 => Receiver_Data_count(29),
      ADR3 => Receiver_Data_count(30),
      O => Receiver_e_actual_FSM_FFd2_In2_2143
    );
  Receiver_e_actual_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y16",
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      ADR2 => Receiver_Data_count(27),
      ADR5 => Receiver_Data_count(28),
      ADR4 => Receiver_Data_count(25),
      ADR1 => Receiver_Data_count(26),
      ADR3 => Receiver_Data_count(23),
      ADR0 => Receiver_Data_count(24),
      O => Receiver_e_actual_FSM_FFd2_In1_2142
    );
  Receiver_e_actual_FSM_FFd2_In4 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y13",
      INIT => X"FFFFFFFFFFFFFFEE"
    )
    port map (
      ADR2 => '1',
      ADR1 => Receiver_Data_count(13),
      ADR5 => Receiver_Data_count(14),
      ADR0 => Receiver_Data_count(10),
      ADR3 => Receiver_Data_count(11),
      ADR4 => Receiver_Data_count(12),
      O => Receiver_e_actual_FSM_FFd2_In4_2145
    );
  LineRD_in : X_FF
    generic map(
      LOC => "SLICE_X14Y8",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_LineRD_in_CLK,
      I => NlwBufferSignal_LineRD_in_IN,
      O => LineRD_in_2028,
      SET => Receiver_Reset_inv,
      RST => GND
    );
  Reset_inv1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y7",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => Reset_IBUF_0,
      O => Receiver_Reset_inv
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
  Valid_D_TX_RDY_i_AND_9_o_Valid_D_TX_RDY_i_AND_9_o_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => StartTX_pack_1,
      O => StartTX_1912
    );
  Valid_D_TX_RDY_i_AND_9_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"0000000F0000000F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Valid_D_IBUF_0,
      ADR5 => '1',
      O => Valid_D_TX_RDY_i_AND_9_o
    );
  StartTX_rstpot : X_LUT5
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => X"2222222E"
    )
    port map (
      ADR1 => Reset_IBUF_0,
      ADR0 => StartTX_1912,
      ADR4 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR2 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Valid_D_IBUF_0,
      O => StartTX_rstpot_1774
    );
  StartTX : X_FF
    generic map(
      LOC => "SLICE_X16Y3",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_StartTX_CLK,
      I => StartTX_rstpot_1774,
      O => StartTX_pack_1,
      RST => GND,
      SET => GND
    );
  Transmitter_TX7 : X_LUT6
    generic map(
      LOC => "SLICE_X19Y2",
      INIT => X"E4FFE455E4AAE400"
    )
    port map (
      ADR3 => Transmitter_Data_count(1),
      ADR0 => Transmitter_Data_count(2),
      ADR1 => Data_FF(3),
      ADR2 => Data_FF(7),
      ADR4 => Data_FF(5),
      ADR5 => Data_FF(1),
      O => Transmitter_TX6_2152
    );
  Transmitter_TX6 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"C000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => Transmitter_TX,
      ADR3 => Transmitter_TX1_2148,
      ADR5 => Transmitter_TX2_2149,
      ADR4 => Transmitter_TX3_2150,
      ADR2 => Transmitter_TX4_2151,
      O => Transmitter_TX5_2173
    );
  Transmitter_TX9 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"F000AA00FFFFFFFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => Transmitter_TX5_2173,
      ADR4 => Transmitter_Data_count(0),
      ADR0 => Transmitter_TX7_2172,
      ADR2 => Transmitter_TX6_2152,
      ADR5 => Transmitter_e_actual_FSM_FFd2_1896,
      O => TD_OBUF_2122
    );
  Transmitter_TX8 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => X"FFAAF0CC00AAF0CC"
    )
    port map (
      ADR4 => Transmitter_Data_count(1),
      ADR3 => Transmitter_Data_count(2),
      ADR0 => Data_FF(2),
      ADR5 => Data_FF(6),
      ADR2 => Data_FF(4),
      ADR1 => Data_FF(0),
      O => Transmitter_TX7_2172
    );
  Transmitter_e_actual_FSM_FFd1_Transmitter_e_actual_FSM_FFd1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Transmitter_e_actual_FSM_FFd2_pack_1,
      O => Transmitter_e_actual_FSM_FFd2_1896
    );
  Transmitter_e_actual_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_Transmitter_e_actual_FSM_FFd1_CLK,
      I => Transmitter_e_actual_FSM_FFd1_In,
      O => Transmitter_e_actual_FSM_FFd1_1897,
      RST => Receiver_Reset_inv,
      SET => GND
    );
  Transmitter_e_actual_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => X"EEEE2222EEEE2222"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR5 => '1',
      O => Transmitter_e_actual_FSM_FFd1_In
    );
  Transmitter_e_actual_FSM_FFd2_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => X"88AAFAFA"
    )
    port map (
      ADR3 => Transmitter_Mcompar_n0017_cy_6_0,
      ADR2 => StartTX_1912,
      ADR1 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      ADR4 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR0 => Transmitter_e_actual_FSM_FFd2_1896,
      O => Transmitter_e_actual_FSM_FFd2_In
    );
  Transmitter_e_actual_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X20Y5",
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
  Transmitter_TX3 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Transmitter_Data_count(26),
      ADR2 => Transmitter_Data_count(27),
      ADR4 => Transmitter_Data_count(25),
      ADR3 => Transmitter_Data_count(24),
      ADR1 => Transmitter_Data_count(23),
      ADR0 => Transmitter_Data_count(22),
      O => Transmitter_TX2_2149
    );
  Data_FF_3 : X_FF
    generic map(
      LOC => "SLICE_X21Y2",
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
      LOC => "SLICE_X21Y2",
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
      LOC => "SLICE_X21Y2",
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
      LOC => "SLICE_X21Y2",
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
  Transmitter_TX1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y2",
      INIT => X"0000000000000100"
    )
    port map (
      ADR3 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR0 => Transmitter_Data_count(9),
      ADR5 => Transmitter_Data_count(8),
      ADR4 => Transmitter_Data_count(7),
      ADR1 => Transmitter_Data_count(6),
      ADR2 => Transmitter_Data_count(5),
      O => Transmitter_TX
    );
  Transmitter_TX5 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y3",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => Transmitter_Data_count(14),
      ADR3 => Transmitter_Data_count(15),
      ADR0 => Transmitter_Data_count(13),
      ADR5 => Transmitter_Data_count(12),
      ADR4 => Transmitter_Data_count(11),
      ADR2 => Transmitter_Data_count(10),
      O => Transmitter_TX4_2151
    );
  Transmitter_TX2 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y4",
      INIT => X"0000000000000001"
    )
    port map (
      ADR2 => Transmitter_Data_count(3),
      ADR0 => Transmitter_Data_count(4),
      ADR1 => Transmitter_Data_count(31),
      ADR3 => Transmitter_Data_count(30),
      ADR4 => Transmitter_Data_count(29),
      ADR5 => Transmitter_Data_count(28),
      O => Transmitter_TX1_2148
    );
  Transmitter_TX4 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y5",
      INIT => X"0000000000000001"
    )
    port map (
      ADR5 => Transmitter_Data_count(20),
      ADR4 => Transmitter_Data_count(21),
      ADR0 => Transmitter_Data_count(19),
      ADR3 => Transmitter_Data_count(18),
      ADR1 => Transmitter_Data_count(17),
      ADR2 => Transmitter_Data_count(16),
      O => Transmitter_TX3_2150
    );
  Transmitter_n0077_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y5",
      INIT => X"0022CC220022CC22"
    )
    port map (
      ADR5 => '1',
      ADR2 => '1',
      ADR1 => Transmitter_e_actual_FSM_FFd1_1897,
      ADR3 => Transmitter_e_actual_FSM_FFd2_1896,
      ADR0 => StartTX_1912,
      ADR4 => Transmitter_Mcompar_Pulse_width_31_INV_6_o_cy_6_0,
      O => Transmitter_n0077_inv
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
  NlwBufferBlock_Receiver_BitCounter_31_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_BitCounter_31_CLK
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
      I => TD_OBUF_2122,
      O => NlwBufferSignal_TD_OBUF_I
    );
  NlwBufferBlock_Full_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Full_OBUF_2123,
      O => NlwBufferSignal_Full_OBUF_I
    );
  NlwBufferBlock_TX_RDY_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => TX_RDY_OBUF_1894,
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
      I => Data_out_0_OBUF_1953,
      O => NlwBufferSignal_Data_out_0_OBUF_I
    );
  NlwBufferBlock_Data_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_1_OBUF_1952,
      O => NlwBufferSignal_Data_out_1_OBUF_I
    );
  NlwBufferBlock_Data_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_2_OBUF_1951,
      O => NlwBufferSignal_Data_out_2_OBUF_I
    );
  NlwBufferBlock_Data_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_3_OBUF_1950,
      O => NlwBufferSignal_Data_out_3_OBUF_I
    );
  NlwBufferBlock_Data_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_4_OBUF_1949,
      O => NlwBufferSignal_Data_out_4_OBUF_I
    );
  NlwBufferBlock_Data_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_5_OBUF_1948,
      O => NlwBufferSignal_Data_out_5_OBUF_I
    );
  NlwBufferBlock_Data_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_6_OBUF_1947,
      O => NlwBufferSignal_Data_out_6_OBUF_I
    );
  NlwBufferBlock_Data_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Data_out_7_OBUF_1946,
      O => NlwBufferSignal_Data_out_7_OBUF_I
    );
  NlwBufferBlock_Empty_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Empty_OBUF_2125,
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
  NlwBufferBlock_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Internal_memory_BU2_U0_grf_rf_gl0_wr_gwss_wsts_ram_full_i_CLK
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
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_d1_1907,
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
      I => Internal_memory_BU2_U0_grf_rf_rstblk_wr_rst_asreg_1908,
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
  NlwBufferBlock_Shift_Q_AUX_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_7_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => LineRD_in_2028,
      O => NlwBufferSignal_Shift_Q_AUX_7_IN
    );
  NlwBufferBlock_Shift_Q_AUX_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_6_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(7),
      O => NlwBufferSignal_Shift_Q_AUX_6_IN
    );
  NlwBufferBlock_Shift_Q_AUX_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_5_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(6),
      O => NlwBufferSignal_Shift_Q_AUX_5_IN
    );
  NlwBufferBlock_Shift_Q_AUX_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Shift_Q_AUX_4_CLK
    );
  NlwBufferBlock_Shift_Q_AUX_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Shift_Q_AUX(5),
      O => NlwBufferSignal_Shift_Q_AUX_4_IN
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
  NlwBufferBlock_Receiver_e_actual_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_e_actual_FSM_FFd1_CLK
    );
  NlwBufferBlock_Receiver_e_actual_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_Receiver_e_actual_FSM_FFd2_CLK
    );
  NlwBufferBlock_LineRD_in_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Clk_BUFGP,
      O => NlwBufferSignal_LineRD_in_CLK
    );
  NlwBufferBlock_LineRD_in_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => RD_IBUF_0,
      O => NlwBufferSignal_LineRD_in_IN
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

