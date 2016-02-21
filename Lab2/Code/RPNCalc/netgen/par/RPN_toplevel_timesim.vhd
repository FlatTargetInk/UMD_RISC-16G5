--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RPN_toplevel_timesim.vhd
-- /___/   /\     Timestamp: Thu Feb 18 13:56:24 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf RPN_toplevel.pcf -rpw 100 -tpw 0 -ar Structure -tm RPN_toplevel -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim RPN_toplevel.ncd RPN_toplevel_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: RPN_toplevel.ncd
-- Output file	: /home/robert/UMD_RISC-16G5/Lab2/Code/RPNCalc/netgen/par/RPN_toplevel_timesim.vhd
-- # of Entities	: 1
-- Design Name	: RPN_toplevel
-- Xilinx	: /home/robert/XilinxISE/14.7/ISE_DS/ISE/
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

entity RPN_toplevel is
  port (
    CLK : in STD_LOGIC := 'X'; 
    AN : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    SEG : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    BTN : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end RPN_toplevel;

architecture Structure of RPN_toplevel is
  signal CLK_BUFGP : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000 : STD_LOGIC; 
  signal N27_0 : STD_LOGIC; 
  signal N94_0 : STD_LOGIC; 
  signal SW_1_IBUF_1740 : STD_LOGIC; 
  signal SW_0_IBUF_1741 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_cmp_eq0000_0 : STD_LOGIC; 
  signal SW_3_IBUF_1743 : STD_LOGIC; 
  signal SW_2_IBUF_1744 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_cmp_eq0000_0 : STD_LOGIC; 
  signal SW_5_IBUF_1748 : STD_LOGIC; 
  signal SW_4_IBUF_1749 : STD_LOGIC; 
  signal SW_7_IBUF_1753 : STD_LOGIC; 
  signal SW_6_IBUF_1754 : STD_LOGIC; 
  signal Load_Store_Unit_w_en_0 : STD_LOGIC; 
  signal Arith_Unit_arith_cmp_eq0000_0 : STD_LOGIC; 
  signal BTN_2_Count_and0000_0 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_cmp_eq0000_0 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014201_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000126_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001422_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000146_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001476_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000166_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016157_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000186_0 : STD_LOGIC; 
  signal BTN_0_OUTPUT_1789 : STD_LOGIC; 
  signal BTN_3_OUTPUT_1790 : STD_LOGIC; 
  signal BTN_2_OUTPUT_1791 : STD_LOGIC; 
  signal BTN_1_OUTPUT_1792 : STD_LOGIC; 
  signal SSeg_clk240hz_1793 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001219_1796 : STD_LOGIC; 
  signal N26_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001222_0 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N82_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001417_0 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001285_1805 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001278_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001257 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012111_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001643_1810 : STD_LOGIC; 
  signal N88_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001655_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001834_1814 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001828 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001845_0 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014256_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001860_0 : STD_LOGIC; 
  signal N78_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014272_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001866_1823 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001878_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018194 : STD_LOGIC; 
  signal N80_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012205_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012181_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012253_1829 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012229_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012263_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012196_1833 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012226_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018143_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014224_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016107_1838 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001669_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001686 : STD_LOGIC; 
  signal N62_0 : STD_LOGIC; 
  signal BTN_0_Count_and0000_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016175 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018120_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016180_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016263_1853 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016289_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018124_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018240_1857 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018252_0 : STD_LOGIC; 
  signal BTN_3_Count_and0000_0 : STD_LOGIC; 
  signal SSeg_DP_OUT_1865 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014135_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014147_0 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N90_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014346_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012151_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012171 : STD_LOGIC; 
  signal BTN_1_Count_and0000_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001825_0 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018187_0 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014107 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014312 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal Arith_Unit_Maddsub_arith_cy_1_Q : STD_LOGIC; 
  signal Arith_Unit_Maddsub_arith_cy_3_Q : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018290 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012292_O : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014384_SW0_O : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016330_O : STD_LOGIC; 
  signal SSeg_count240hz_15_DXMUX_2085 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_15 : STD_LOGIC; 
  signal SSeg_count240hz_15_DYMUX_2072 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_14 : STD_LOGIC; 
  signal SSeg_count240hz_15_CLKINV_2062 : STD_LOGIC; 
  signal SSeg_count240hz_16_DYMUX_2103 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_16 : STD_LOGIC; 
  signal SSeg_count240hz_16_CLKINV_2093 : STD_LOGIC; 
  signal SSeg_count240hz_1_DXMUX_2137 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_1 : STD_LOGIC; 
  signal SSeg_count240hz_1_DYMUX_2124 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_0 : STD_LOGIC; 
  signal SSeg_count240hz_1_CLKINV_2114 : STD_LOGIC; 
  signal SSeg_count240hz_3_DXMUX_2171 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_3 : STD_LOGIC; 
  signal SSeg_count240hz_3_DYMUX_2158 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_2 : STD_LOGIC; 
  signal SSeg_count240hz_3_CLKINV_2148 : STD_LOGIC; 
  signal SSeg_count240hz_5_DXMUX_2205 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_5 : STD_LOGIC; 
  signal SSeg_count240hz_5_DYMUX_2192 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_4 : STD_LOGIC; 
  signal SSeg_count240hz_5_CLKINV_2182 : STD_LOGIC; 
  signal SSeg_count240hz_7_DXMUX_2239 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_7 : STD_LOGIC; 
  signal SSeg_count240hz_7_DYMUX_2226 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_6 : STD_LOGIC; 
  signal SSeg_count240hz_7_CLKINV_2216 : STD_LOGIC; 
  signal SSeg_count240hz_9_DXMUX_2273 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_9 : STD_LOGIC; 
  signal SSeg_count240hz_9_DYMUX_2260 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_8 : STD_LOGIC; 
  signal SSeg_count240hz_9_CLKINV_2250 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_1_DXMUX_2313 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_1_DYMUX_2308 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_1_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALA_3_DXMUX_2329 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_3_DYMUX_2324 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_3_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALB_1_DXMUX_2345 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_1_DYMUX_2340 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_1_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALA_5_DXMUX_2361 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_5_DYMUX_2356 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_5_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALB_3_DXMUX_2377 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_3_DYMUX_2372 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_3_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALA_7_DXMUX_2393 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_7_DYMUX_2388 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_7_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALB_5_DXMUX_2409 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_5_DYMUX_2404 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_5_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_VALB_7_DXMUX_2425 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_7_DYMUX_2420 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_7_CLKINVNOT : STD_LOGIC; 
  signal Load_Store_Unit_w_en : STD_LOGIC; 
  signal Arith_Unit_arith_cmp_eq0000 : STD_LOGIC; 
  signal SEG_0_OBUF_2474 : STD_LOGIC; 
  signal SEG_1_OBUF_2467 : STD_LOGIC; 
  signal BTN_2_OUTPUT_not0001 : STD_LOGIC; 
  signal BTN_2_Count_and0000 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_1_DXMUX_2513 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_1_DYMUX_2508 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_1_CLKINVNOT : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_3_DXMUX_2529 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_3_DYMUX_2524 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_3_CLKINVNOT : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014201_2554 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000126_2547 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001422_2578 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000146_2570 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001476_2602 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000166_2594 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016157_2626 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000186_2619 : STD_LOGIC; 
  signal UXCntl_Unit_OPCODE_cmp_eq0000 : STD_LOGIC; 
  signal UXCntl_Unit_VALA_cmp_eq0000 : STD_LOGIC; 
  signal SSeg_clk240hz_DYMUX_2660 : STD_LOGIC; 
  signal SSeg_clk240hz_CLKINV_2658 : STD_LOGIC; 
  signal SSeg_clk240hz_CEINV_2657 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001222_2686 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001219_pack_1 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001417_2702 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012111_2734 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001285_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001655_2758 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001643_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001845_2782 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001834_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014256_2806 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001860_2799 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014272 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001878_2854 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001866_pack_1 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012205_2871 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012263_2902 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012253_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012229_2926 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012196_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018143_2950 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014224_2943 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016107_pack_1 : STD_LOGIC; 
  signal BTN_0_Count_and0000 : STD_LOGIC; 
  signal BTN_0_OUTPUT_not0001 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018120_3022 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016180_3013 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016289_3046 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016263_pack_1 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018124_3062 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018252_3094 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018240_pack_1 : STD_LOGIC; 
  signal BTN_3_OUTPUT_not0001 : STD_LOGIC; 
  signal BTN_3_Count_and0000 : STD_LOGIC; 
  signal SSeg_DP_OUT_DYMUX_3126 : STD_LOGIC; 
  signal SSeg_DP_OUT_BYINV_3125 : STD_LOGIC; 
  signal SSeg_DP_OUT_CLKINV_3124 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N92_pack_1 : STD_LOGIC; 
  signal Load_Store_Unit_reg_1_DXMUX_3169 : STD_LOGIC; 
  signal Load_Store_Unit_reg_1_DYMUX_3163 : STD_LOGIC; 
  signal Load_Store_Unit_reg_1_CLKINV_3161 : STD_LOGIC; 
  signal Load_Store_Unit_reg_1_CEINV_3160 : STD_LOGIC; 
  signal Load_Store_Unit_reg_3_DXMUX_3189 : STD_LOGIC; 
  signal Load_Store_Unit_reg_3_DYMUX_3183 : STD_LOGIC; 
  signal Load_Store_Unit_reg_3_CLKINV_3181 : STD_LOGIC; 
  signal Load_Store_Unit_reg_3_CEINV_3180 : STD_LOGIC; 
  signal Load_Store_Unit_reg_5_DXMUX_3209 : STD_LOGIC; 
  signal Load_Store_Unit_reg_5_DYMUX_3203 : STD_LOGIC; 
  signal Load_Store_Unit_reg_5_CLKINV_3201 : STD_LOGIC; 
  signal Load_Store_Unit_reg_5_CEINV_3200 : STD_LOGIC; 
  signal Load_Store_Unit_reg_7_DXMUX_3229 : STD_LOGIC; 
  signal Load_Store_Unit_reg_7_DYMUX_3223 : STD_LOGIC; 
  signal Load_Store_Unit_reg_7_CLKINV_3221 : STD_LOGIC; 
  signal Load_Store_Unit_reg_7_CEINV_3220 : STD_LOGIC; 
  signal BTN_0_D_STATE_1_DXMUX_3246 : STD_LOGIC; 
  signal BTN_0_D_STATE_1_DYMUX_3241 : STD_LOGIC; 
  signal BTN_0_D_STATE_1_CLKINV_3239 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014147_3271 : STD_LOGIC; 
  signal N74_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014346_3295 : STD_LOGIC; 
  signal N76_pack_1 : STD_LOGIC; 
  signal SEG_3_OBUF_3319 : STD_LOGIC; 
  signal SEG_2_OBUF_3312 : STD_LOGIC; 
  signal SEG_5_OBUF_3343 : STD_LOGIC; 
  signal SEG_4_OBUF_3336 : STD_LOGIC; 
  signal SEG_6_OBUF_3355 : STD_LOGIC; 
  signal BTN_1_D_STATE_1_DXMUX_3370 : STD_LOGIC; 
  signal BTN_1_D_STATE_1_DYMUX_3365 : STD_LOGIC; 
  signal BTN_1_D_STATE_1_CLKINV_3363 : STD_LOGIC; 
  signal UXCntl_Unit_VALB_cmp_eq0000 : STD_LOGIC; 
  signal BTN_2_D_STATE_1_DXMUX_3398 : STD_LOGIC; 
  signal BTN_2_D_STATE_1_DYMUX_3393 : STD_LOGIC; 
  signal BTN_2_D_STATE_1_CLKINV_3391 : STD_LOGIC; 
  signal BTN_3_D_STATE_1_DXMUX_3414 : STD_LOGIC; 
  signal BTN_3_D_STATE_1_DYMUX_3409 : STD_LOGIC; 
  signal BTN_3_D_STATE_1_CLKINV_3407 : STD_LOGIC; 
  signal SSeg_pos_0_DXMUX_3439 : STD_LOGIC; 
  signal SSeg_pos_0_DYMUX_3434 : STD_LOGIC; 
  signal SSeg_Mcount_pos1 : STD_LOGIC; 
  signal SSeg_pos_0_CLKINV_3424 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012181_3464 : STD_LOGIC; 
  signal N31_pack_1 : STD_LOGIC; 
  signal BTN_1_OUTPUT_not0001 : STD_LOGIC; 
  signal BTN_1_Count_and0000 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012226_3512 : STD_LOGIC; 
  signal N25_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001825_3536 : STD_LOGIC; 
  signal N22_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001669_3560 : STD_LOGIC; 
  signal N24_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018187_3584 : STD_LOGIC; 
  signal N12_pack_2 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014135_3608 : STD_LOGIC; 
  signal N23_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012151_3632 : STD_LOGIC; 
  signal N28_pack_1 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N30_pack_1 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001278_3680 : STD_LOGIC; 
  signal N11_pack_2 : STD_LOGIC; 
  signal BTN_0_OUTPUT_DYMUX_3690 : STD_LOGIC; 
  signal BTN_0_OUTPUT_CLKINV_3688 : STD_LOGIC; 
  signal BTN_0_OUTPUT_CEINV_3687 : STD_LOGIC; 
  signal BTN_1_Count_0_DXMUX_3743 : STD_LOGIC; 
  signal BTN_1_Count_0_XORF_3741 : STD_LOGIC; 
  signal BTN_1_Count_0_LOGIC_ONE_3740 : STD_LOGIC; 
  signal BTN_1_Count_0_CYINIT_3739 : STD_LOGIC; 
  signal BTN_1_Count_0_CYSELF_3730 : STD_LOGIC; 
  signal BTN_1_Count_0_BXINV_3728 : STD_LOGIC; 
  signal BTN_1_Count_0_DYMUX_3722 : STD_LOGIC; 
  signal BTN_1_Count_0_XORG_3720 : STD_LOGIC; 
  signal BTN_1_Count_0_CYMUXG_3719 : STD_LOGIC; 
  signal BTN_1_Count_0_LOGIC_ZERO_3717 : STD_LOGIC; 
  signal BTN_1_Count_0_CYSELG_3708 : STD_LOGIC; 
  signal BTN_1_Count_0_G : STD_LOGIC; 
  signal BTN_1_Count_0_SRINV_3706 : STD_LOGIC; 
  signal BTN_1_Count_0_CLKINV_3705 : STD_LOGIC; 
  signal BTN_1_Count_0_CEINVNOT : STD_LOGIC; 
  signal BTN_1_OUTPUT_DYMUX_3756 : STD_LOGIC; 
  signal BTN_1_OUTPUT_CLKINV_3754 : STD_LOGIC; 
  signal BTN_1_OUTPUT_CEINV_3753 : STD_LOGIC; 
  signal BTN_1_Count_2_DXMUX_3811 : STD_LOGIC; 
  signal BTN_1_Count_2_XORF_3809 : STD_LOGIC; 
  signal BTN_1_Count_2_CYINIT_3808 : STD_LOGIC; 
  signal BTN_1_Count_2_F : STD_LOGIC; 
  signal BTN_1_Count_2_DYMUX_3793 : STD_LOGIC; 
  signal BTN_1_Count_2_XORG_3791 : STD_LOGIC; 
  signal BTN_1_Count_2_CYSELF_3789 : STD_LOGIC; 
  signal BTN_1_Count_2_CYMUXFAST_3788 : STD_LOGIC; 
  signal BTN_1_Count_2_CYAND_3787 : STD_LOGIC; 
  signal BTN_1_Count_2_FASTCARRY_3786 : STD_LOGIC; 
  signal BTN_1_Count_2_CYMUXG2_3785 : STD_LOGIC; 
  signal BTN_1_Count_2_CYMUXF2_3784 : STD_LOGIC; 
  signal BTN_1_Count_2_LOGIC_ZERO_3783 : STD_LOGIC; 
  signal BTN_1_Count_2_CYSELG_3774 : STD_LOGIC; 
  signal BTN_1_Count_2_G : STD_LOGIC; 
  signal BTN_1_Count_2_SRINV_3772 : STD_LOGIC; 
  signal BTN_1_Count_2_CLKINV_3771 : STD_LOGIC; 
  signal BTN_1_Count_2_CEINVNOT : STD_LOGIC; 
  signal BTN_2_OUTPUT_DYMUX_3824 : STD_LOGIC; 
  signal BTN_2_OUTPUT_CLKINV_3822 : STD_LOGIC; 
  signal BTN_2_OUTPUT_CEINV_3821 : STD_LOGIC; 
  signal BTN_1_Count_4_DXMUX_3879 : STD_LOGIC; 
  signal BTN_1_Count_4_XORF_3877 : STD_LOGIC; 
  signal BTN_1_Count_4_CYINIT_3876 : STD_LOGIC; 
  signal BTN_1_Count_4_F : STD_LOGIC; 
  signal BTN_1_Count_4_DYMUX_3861 : STD_LOGIC; 
  signal BTN_1_Count_4_XORG_3859 : STD_LOGIC; 
  signal BTN_1_Count_4_CYSELF_3857 : STD_LOGIC; 
  signal BTN_1_Count_4_CYMUXFAST_3856 : STD_LOGIC; 
  signal BTN_1_Count_4_CYAND_3855 : STD_LOGIC; 
  signal BTN_1_Count_4_FASTCARRY_3854 : STD_LOGIC; 
  signal BTN_1_Count_4_CYMUXG2_3853 : STD_LOGIC; 
  signal BTN_1_Count_4_CYMUXF2_3852 : STD_LOGIC; 
  signal BTN_1_Count_4_LOGIC_ZERO_3851 : STD_LOGIC; 
  signal BTN_1_Count_4_CYSELG_3842 : STD_LOGIC; 
  signal BTN_1_Count_4_G : STD_LOGIC; 
  signal BTN_1_Count_4_SRINV_3840 : STD_LOGIC; 
  signal BTN_1_Count_4_CLKINV_3839 : STD_LOGIC; 
  signal BTN_1_Count_4_CEINVNOT : STD_LOGIC; 
  signal BTN_3_OUTPUT_DYMUX_3892 : STD_LOGIC; 
  signal BTN_3_OUTPUT_CLKINV_3890 : STD_LOGIC; 
  signal BTN_3_OUTPUT_CEINV_3889 : STD_LOGIC; 
  signal BTN_1_Count_6_DXMUX_3947 : STD_LOGIC; 
  signal BTN_1_Count_6_XORF_3945 : STD_LOGIC; 
  signal BTN_1_Count_6_CYINIT_3944 : STD_LOGIC; 
  signal BTN_1_Count_6_F : STD_LOGIC; 
  signal BTN_1_Count_6_DYMUX_3929 : STD_LOGIC; 
  signal BTN_1_Count_6_XORG_3927 : STD_LOGIC; 
  signal BTN_1_Count_6_CYSELF_3925 : STD_LOGIC; 
  signal BTN_1_Count_6_CYMUXFAST_3924 : STD_LOGIC; 
  signal BTN_1_Count_6_CYAND_3923 : STD_LOGIC; 
  signal BTN_1_Count_6_FASTCARRY_3922 : STD_LOGIC; 
  signal BTN_1_Count_6_CYMUXG2_3921 : STD_LOGIC; 
  signal BTN_1_Count_6_CYMUXF2_3920 : STD_LOGIC; 
  signal BTN_1_Count_6_LOGIC_ZERO_3919 : STD_LOGIC; 
  signal BTN_1_Count_6_CYSELG_3910 : STD_LOGIC; 
  signal BTN_1_Count_6_G : STD_LOGIC; 
  signal BTN_1_Count_6_SRINV_3908 : STD_LOGIC; 
  signal BTN_1_Count_6_CLKINV_3907 : STD_LOGIC; 
  signal BTN_1_Count_6_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_8_DXMUX_4003 : STD_LOGIC; 
  signal BTN_1_Count_8_XORF_4001 : STD_LOGIC; 
  signal BTN_1_Count_8_CYINIT_4000 : STD_LOGIC; 
  signal BTN_1_Count_8_F : STD_LOGIC; 
  signal BTN_1_Count_8_DYMUX_3985 : STD_LOGIC; 
  signal BTN_1_Count_8_XORG_3983 : STD_LOGIC; 
  signal BTN_1_Count_8_CYSELF_3981 : STD_LOGIC; 
  signal BTN_1_Count_8_CYMUXFAST_3980 : STD_LOGIC; 
  signal BTN_1_Count_8_CYAND_3979 : STD_LOGIC; 
  signal BTN_1_Count_8_FASTCARRY_3978 : STD_LOGIC; 
  signal BTN_1_Count_8_CYMUXG2_3977 : STD_LOGIC; 
  signal BTN_1_Count_8_CYMUXF2_3976 : STD_LOGIC; 
  signal BTN_1_Count_8_LOGIC_ZERO_3975 : STD_LOGIC; 
  signal BTN_1_Count_8_CYSELG_3966 : STD_LOGIC; 
  signal BTN_1_Count_8_G : STD_LOGIC; 
  signal BTN_1_Count_8_SRINV_3964 : STD_LOGIC; 
  signal BTN_1_Count_8_CLKINV_3963 : STD_LOGIC; 
  signal BTN_1_Count_8_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_10_DXMUX_4059 : STD_LOGIC; 
  signal BTN_1_Count_10_XORF_4057 : STD_LOGIC; 
  signal BTN_1_Count_10_CYINIT_4056 : STD_LOGIC; 
  signal BTN_1_Count_10_F : STD_LOGIC; 
  signal BTN_1_Count_10_DYMUX_4041 : STD_LOGIC; 
  signal BTN_1_Count_10_XORG_4039 : STD_LOGIC; 
  signal BTN_1_Count_10_CYSELF_4037 : STD_LOGIC; 
  signal BTN_1_Count_10_CYMUXFAST_4036 : STD_LOGIC; 
  signal BTN_1_Count_10_CYAND_4035 : STD_LOGIC; 
  signal BTN_1_Count_10_FASTCARRY_4034 : STD_LOGIC; 
  signal BTN_1_Count_10_CYMUXG2_4033 : STD_LOGIC; 
  signal BTN_1_Count_10_CYMUXF2_4032 : STD_LOGIC; 
  signal BTN_1_Count_10_LOGIC_ZERO_4031 : STD_LOGIC; 
  signal BTN_1_Count_10_CYSELG_4022 : STD_LOGIC; 
  signal BTN_1_Count_10_G : STD_LOGIC; 
  signal BTN_1_Count_10_SRINV_4020 : STD_LOGIC; 
  signal BTN_1_Count_10_CLKINV_4019 : STD_LOGIC; 
  signal BTN_1_Count_10_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_12_DXMUX_4115 : STD_LOGIC; 
  signal BTN_1_Count_12_XORF_4113 : STD_LOGIC; 
  signal BTN_1_Count_12_CYINIT_4112 : STD_LOGIC; 
  signal BTN_1_Count_12_F : STD_LOGIC; 
  signal BTN_1_Count_12_DYMUX_4097 : STD_LOGIC; 
  signal BTN_1_Count_12_XORG_4095 : STD_LOGIC; 
  signal BTN_1_Count_12_CYSELF_4093 : STD_LOGIC; 
  signal BTN_1_Count_12_CYMUXFAST_4092 : STD_LOGIC; 
  signal BTN_1_Count_12_CYAND_4091 : STD_LOGIC; 
  signal BTN_1_Count_12_FASTCARRY_4090 : STD_LOGIC; 
  signal BTN_1_Count_12_CYMUXG2_4089 : STD_LOGIC; 
  signal BTN_1_Count_12_CYMUXF2_4088 : STD_LOGIC; 
  signal BTN_1_Count_12_LOGIC_ZERO_4087 : STD_LOGIC; 
  signal BTN_1_Count_12_CYSELG_4078 : STD_LOGIC; 
  signal BTN_1_Count_12_G : STD_LOGIC; 
  signal BTN_1_Count_12_SRINV_4076 : STD_LOGIC; 
  signal BTN_1_Count_12_CLKINV_4075 : STD_LOGIC; 
  signal BTN_1_Count_12_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_14_DXMUX_4171 : STD_LOGIC; 
  signal BTN_1_Count_14_XORF_4169 : STD_LOGIC; 
  signal BTN_1_Count_14_CYINIT_4168 : STD_LOGIC; 
  signal BTN_1_Count_14_F : STD_LOGIC; 
  signal BTN_1_Count_14_DYMUX_4153 : STD_LOGIC; 
  signal BTN_1_Count_14_XORG_4151 : STD_LOGIC; 
  signal BTN_1_Count_14_CYSELF_4149 : STD_LOGIC; 
  signal BTN_1_Count_14_CYMUXFAST_4148 : STD_LOGIC; 
  signal BTN_1_Count_14_CYAND_4147 : STD_LOGIC; 
  signal BTN_1_Count_14_FASTCARRY_4146 : STD_LOGIC; 
  signal BTN_1_Count_14_CYMUXG2_4145 : STD_LOGIC; 
  signal BTN_1_Count_14_CYMUXF2_4144 : STD_LOGIC; 
  signal BTN_1_Count_14_LOGIC_ZERO_4143 : STD_LOGIC; 
  signal BTN_1_Count_14_CYSELG_4134 : STD_LOGIC; 
  signal BTN_1_Count_14_G : STD_LOGIC; 
  signal BTN_1_Count_14_SRINV_4132 : STD_LOGIC; 
  signal BTN_1_Count_14_CLKINV_4131 : STD_LOGIC; 
  signal BTN_1_Count_14_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_16_DXMUX_4227 : STD_LOGIC; 
  signal BTN_1_Count_16_XORF_4225 : STD_LOGIC; 
  signal BTN_1_Count_16_CYINIT_4224 : STD_LOGIC; 
  signal BTN_1_Count_16_F : STD_LOGIC; 
  signal BTN_1_Count_16_DYMUX_4209 : STD_LOGIC; 
  signal BTN_1_Count_16_XORG_4207 : STD_LOGIC; 
  signal BTN_1_Count_16_CYSELF_4205 : STD_LOGIC; 
  signal BTN_1_Count_16_CYMUXFAST_4204 : STD_LOGIC; 
  signal BTN_1_Count_16_CYAND_4203 : STD_LOGIC; 
  signal BTN_1_Count_16_FASTCARRY_4202 : STD_LOGIC; 
  signal BTN_1_Count_16_CYMUXG2_4201 : STD_LOGIC; 
  signal BTN_1_Count_16_CYMUXF2_4200 : STD_LOGIC; 
  signal BTN_1_Count_16_LOGIC_ZERO_4199 : STD_LOGIC; 
  signal BTN_1_Count_16_CYSELG_4190 : STD_LOGIC; 
  signal BTN_1_Count_16_G : STD_LOGIC; 
  signal BTN_1_Count_16_SRINV_4188 : STD_LOGIC; 
  signal BTN_1_Count_16_CLKINV_4187 : STD_LOGIC; 
  signal BTN_1_Count_16_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_18_DXMUX_4283 : STD_LOGIC; 
  signal BTN_1_Count_18_XORF_4281 : STD_LOGIC; 
  signal BTN_1_Count_18_CYINIT_4280 : STD_LOGIC; 
  signal BTN_1_Count_18_F : STD_LOGIC; 
  signal BTN_1_Count_18_DYMUX_4265 : STD_LOGIC; 
  signal BTN_1_Count_18_XORG_4263 : STD_LOGIC; 
  signal BTN_1_Count_18_CYSELF_4261 : STD_LOGIC; 
  signal BTN_1_Count_18_CYMUXFAST_4260 : STD_LOGIC; 
  signal BTN_1_Count_18_CYAND_4259 : STD_LOGIC; 
  signal BTN_1_Count_18_FASTCARRY_4258 : STD_LOGIC; 
  signal BTN_1_Count_18_CYMUXG2_4257 : STD_LOGIC; 
  signal BTN_1_Count_18_CYMUXF2_4256 : STD_LOGIC; 
  signal BTN_1_Count_18_LOGIC_ZERO_4255 : STD_LOGIC; 
  signal BTN_1_Count_18_CYSELG_4246 : STD_LOGIC; 
  signal BTN_1_Count_18_G : STD_LOGIC; 
  signal BTN_1_Count_18_SRINV_4244 : STD_LOGIC; 
  signal BTN_1_Count_18_CLKINV_4243 : STD_LOGIC; 
  signal BTN_1_Count_18_CEINVNOT : STD_LOGIC; 
  signal BTN_1_Count_20_DXMUX_4310 : STD_LOGIC; 
  signal BTN_1_Count_20_XORF_4308 : STD_LOGIC; 
  signal BTN_1_Count_20_CYINIT_4307 : STD_LOGIC; 
  signal BTN_1_Count_20_rt_4305 : STD_LOGIC; 
  signal BTN_1_Count_20_SRINV_4297 : STD_LOGIC; 
  signal BTN_1_Count_20_CLKINV_4296 : STD_LOGIC; 
  signal BTN_1_Count_20_CEINVNOT : STD_LOGIC; 
  signal arith_0_XORF_4350 : STD_LOGIC; 
  signal arith_0_CYINIT_4349 : STD_LOGIC; 
  signal arith_0_CY0F_4348 : STD_LOGIC; 
  signal arith_0_CYSELF_4341 : STD_LOGIC; 
  signal arith_0_XORG_4337 : STD_LOGIC; 
  signal arith_0_CYMUXG_4336 : STD_LOGIC; 
  signal Arith_Unit_Maddsub_arith_cy_0_Q : STD_LOGIC; 
  signal arith_0_CY0G_4334 : STD_LOGIC; 
  signal arith_0_CYSELG_4327 : STD_LOGIC; 
  signal arith_2_XORF_4389 : STD_LOGIC; 
  signal arith_2_CYINIT_4388 : STD_LOGIC; 
  signal arith_2_CY0F_4387 : STD_LOGIC; 
  signal arith_2_XORG_4378 : STD_LOGIC; 
  signal Arith_Unit_Maddsub_arith_cy_2_Q : STD_LOGIC; 
  signal arith_2_CYSELF_4376 : STD_LOGIC; 
  signal arith_2_CYMUXFAST_4375 : STD_LOGIC; 
  signal arith_2_CYAND_4374 : STD_LOGIC; 
  signal arith_2_FASTCARRY_4373 : STD_LOGIC; 
  signal arith_2_CYMUXG2_4372 : STD_LOGIC; 
  signal arith_2_CYMUXF2_4371 : STD_LOGIC; 
  signal arith_2_CY0G_4370 : STD_LOGIC; 
  signal arith_2_CYSELG_4363 : STD_LOGIC; 
  signal arith_4_XORF_4428 : STD_LOGIC; 
  signal arith_4_CYINIT_4427 : STD_LOGIC; 
  signal arith_4_CY0F_4426 : STD_LOGIC; 
  signal arith_4_XORG_4417 : STD_LOGIC; 
  signal Arith_Unit_Maddsub_arith_cy_4_Q : STD_LOGIC; 
  signal arith_4_CYSELF_4415 : STD_LOGIC; 
  signal arith_4_CYMUXFAST_4414 : STD_LOGIC; 
  signal arith_4_CYAND_4413 : STD_LOGIC; 
  signal arith_4_FASTCARRY_4412 : STD_LOGIC; 
  signal arith_4_CYMUXG2_4411 : STD_LOGIC; 
  signal arith_4_CYMUXF2_4410 : STD_LOGIC; 
  signal arith_4_CY0G_4409 : STD_LOGIC; 
  signal arith_4_CYSELG_4402 : STD_LOGIC; 
  signal arith_6_XORF_4459 : STD_LOGIC; 
  signal arith_6_CYINIT_4458 : STD_LOGIC; 
  signal arith_6_CY0F_4457 : STD_LOGIC; 
  signal arith_6_CYSELF_4450 : STD_LOGIC; 
  signal arith_6_XORG_4447 : STD_LOGIC; 
  signal Arith_Unit_Maddsub_arith_cy_6_Q : STD_LOGIC; 
  signal BTN_0_Count_0_DXMUX_4509 : STD_LOGIC; 
  signal BTN_0_Count_0_XORF_4507 : STD_LOGIC; 
  signal BTN_0_Count_0_LOGIC_ONE_4506 : STD_LOGIC; 
  signal BTN_0_Count_0_CYINIT_4505 : STD_LOGIC; 
  signal BTN_0_Count_0_CYSELF_4496 : STD_LOGIC; 
  signal BTN_0_Count_0_BXINV_4494 : STD_LOGIC; 
  signal BTN_0_Count_0_DYMUX_4488 : STD_LOGIC; 
  signal BTN_0_Count_0_XORG_4486 : STD_LOGIC; 
  signal BTN_0_Count_0_CYMUXG_4485 : STD_LOGIC; 
  signal BTN_0_Count_0_LOGIC_ZERO_4483 : STD_LOGIC; 
  signal BTN_0_Count_0_CYSELG_4474 : STD_LOGIC; 
  signal BTN_0_Count_0_G : STD_LOGIC; 
  signal BTN_0_Count_0_SRINV_4472 : STD_LOGIC; 
  signal BTN_0_Count_0_CLKINV_4471 : STD_LOGIC; 
  signal BTN_0_Count_0_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_2_DXMUX_4565 : STD_LOGIC; 
  signal BTN_0_Count_2_XORF_4563 : STD_LOGIC; 
  signal BTN_0_Count_2_CYINIT_4562 : STD_LOGIC; 
  signal BTN_0_Count_2_F : STD_LOGIC; 
  signal BTN_0_Count_2_DYMUX_4547 : STD_LOGIC; 
  signal BTN_0_Count_2_XORG_4545 : STD_LOGIC; 
  signal BTN_0_Count_2_CYSELF_4543 : STD_LOGIC; 
  signal BTN_0_Count_2_CYMUXFAST_4542 : STD_LOGIC; 
  signal BTN_0_Count_2_CYAND_4541 : STD_LOGIC; 
  signal BTN_0_Count_2_FASTCARRY_4540 : STD_LOGIC; 
  signal BTN_0_Count_2_CYMUXG2_4539 : STD_LOGIC; 
  signal BTN_0_Count_2_CYMUXF2_4538 : STD_LOGIC; 
  signal BTN_0_Count_2_LOGIC_ZERO_4537 : STD_LOGIC; 
  signal BTN_0_Count_2_CYSELG_4528 : STD_LOGIC; 
  signal BTN_0_Count_2_G : STD_LOGIC; 
  signal BTN_0_Count_2_SRINV_4526 : STD_LOGIC; 
  signal BTN_0_Count_2_CLKINV_4525 : STD_LOGIC; 
  signal BTN_0_Count_2_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_4_DXMUX_4621 : STD_LOGIC; 
  signal BTN_0_Count_4_XORF_4619 : STD_LOGIC; 
  signal BTN_0_Count_4_CYINIT_4618 : STD_LOGIC; 
  signal BTN_0_Count_4_F : STD_LOGIC; 
  signal BTN_0_Count_4_DYMUX_4603 : STD_LOGIC; 
  signal BTN_0_Count_4_XORG_4601 : STD_LOGIC; 
  signal BTN_0_Count_4_CYSELF_4599 : STD_LOGIC; 
  signal BTN_0_Count_4_CYMUXFAST_4598 : STD_LOGIC; 
  signal BTN_0_Count_4_CYAND_4597 : STD_LOGIC; 
  signal BTN_0_Count_4_FASTCARRY_4596 : STD_LOGIC; 
  signal BTN_0_Count_4_CYMUXG2_4595 : STD_LOGIC; 
  signal BTN_0_Count_4_CYMUXF2_4594 : STD_LOGIC; 
  signal BTN_0_Count_4_LOGIC_ZERO_4593 : STD_LOGIC; 
  signal BTN_0_Count_4_CYSELG_4584 : STD_LOGIC; 
  signal BTN_0_Count_4_G : STD_LOGIC; 
  signal BTN_0_Count_4_SRINV_4582 : STD_LOGIC; 
  signal BTN_0_Count_4_CLKINV_4581 : STD_LOGIC; 
  signal BTN_0_Count_4_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_6_DXMUX_4677 : STD_LOGIC; 
  signal BTN_0_Count_6_XORF_4675 : STD_LOGIC; 
  signal BTN_0_Count_6_CYINIT_4674 : STD_LOGIC; 
  signal BTN_0_Count_6_F : STD_LOGIC; 
  signal BTN_0_Count_6_DYMUX_4659 : STD_LOGIC; 
  signal BTN_0_Count_6_XORG_4657 : STD_LOGIC; 
  signal BTN_0_Count_6_CYSELF_4655 : STD_LOGIC; 
  signal BTN_0_Count_6_CYMUXFAST_4654 : STD_LOGIC; 
  signal BTN_0_Count_6_CYAND_4653 : STD_LOGIC; 
  signal BTN_0_Count_6_FASTCARRY_4652 : STD_LOGIC; 
  signal BTN_0_Count_6_CYMUXG2_4651 : STD_LOGIC; 
  signal BTN_0_Count_6_CYMUXF2_4650 : STD_LOGIC; 
  signal BTN_0_Count_6_LOGIC_ZERO_4649 : STD_LOGIC; 
  signal BTN_0_Count_6_CYSELG_4640 : STD_LOGIC; 
  signal BTN_0_Count_6_G : STD_LOGIC; 
  signal BTN_0_Count_6_SRINV_4638 : STD_LOGIC; 
  signal BTN_0_Count_6_CLKINV_4637 : STD_LOGIC; 
  signal BTN_0_Count_6_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_8_DXMUX_4733 : STD_LOGIC; 
  signal BTN_0_Count_8_XORF_4731 : STD_LOGIC; 
  signal BTN_0_Count_8_CYINIT_4730 : STD_LOGIC; 
  signal BTN_0_Count_8_F : STD_LOGIC; 
  signal BTN_0_Count_8_DYMUX_4715 : STD_LOGIC; 
  signal BTN_0_Count_8_XORG_4713 : STD_LOGIC; 
  signal BTN_0_Count_8_CYSELF_4711 : STD_LOGIC; 
  signal BTN_0_Count_8_CYMUXFAST_4710 : STD_LOGIC; 
  signal BTN_0_Count_8_CYAND_4709 : STD_LOGIC; 
  signal BTN_0_Count_8_FASTCARRY_4708 : STD_LOGIC; 
  signal BTN_0_Count_8_CYMUXG2_4707 : STD_LOGIC; 
  signal BTN_0_Count_8_CYMUXF2_4706 : STD_LOGIC; 
  signal BTN_0_Count_8_LOGIC_ZERO_4705 : STD_LOGIC; 
  signal BTN_0_Count_8_CYSELG_4696 : STD_LOGIC; 
  signal BTN_0_Count_8_G : STD_LOGIC; 
  signal BTN_0_Count_8_SRINV_4694 : STD_LOGIC; 
  signal BTN_0_Count_8_CLKINV_4693 : STD_LOGIC; 
  signal BTN_0_Count_8_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_10_DXMUX_4789 : STD_LOGIC; 
  signal BTN_0_Count_10_XORF_4787 : STD_LOGIC; 
  signal BTN_0_Count_10_CYINIT_4786 : STD_LOGIC; 
  signal BTN_0_Count_10_F : STD_LOGIC; 
  signal BTN_0_Count_10_DYMUX_4771 : STD_LOGIC; 
  signal BTN_0_Count_10_XORG_4769 : STD_LOGIC; 
  signal BTN_0_Count_10_CYSELF_4767 : STD_LOGIC; 
  signal BTN_0_Count_10_CYMUXFAST_4766 : STD_LOGIC; 
  signal BTN_0_Count_10_CYAND_4765 : STD_LOGIC; 
  signal BTN_0_Count_10_FASTCARRY_4764 : STD_LOGIC; 
  signal BTN_0_Count_10_CYMUXG2_4763 : STD_LOGIC; 
  signal BTN_0_Count_10_CYMUXF2_4762 : STD_LOGIC; 
  signal BTN_0_Count_10_LOGIC_ZERO_4761 : STD_LOGIC; 
  signal BTN_0_Count_10_CYSELG_4752 : STD_LOGIC; 
  signal BTN_0_Count_10_G : STD_LOGIC; 
  signal BTN_0_Count_10_SRINV_4750 : STD_LOGIC; 
  signal BTN_0_Count_10_CLKINV_4749 : STD_LOGIC; 
  signal BTN_0_Count_10_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_12_DXMUX_4845 : STD_LOGIC; 
  signal BTN_0_Count_12_XORF_4843 : STD_LOGIC; 
  signal BTN_0_Count_12_CYINIT_4842 : STD_LOGIC; 
  signal BTN_0_Count_12_F : STD_LOGIC; 
  signal BTN_0_Count_12_DYMUX_4827 : STD_LOGIC; 
  signal BTN_0_Count_12_XORG_4825 : STD_LOGIC; 
  signal BTN_0_Count_12_CYSELF_4823 : STD_LOGIC; 
  signal BTN_0_Count_12_CYMUXFAST_4822 : STD_LOGIC; 
  signal BTN_0_Count_12_CYAND_4821 : STD_LOGIC; 
  signal BTN_0_Count_12_FASTCARRY_4820 : STD_LOGIC; 
  signal BTN_0_Count_12_CYMUXG2_4819 : STD_LOGIC; 
  signal BTN_0_Count_12_CYMUXF2_4818 : STD_LOGIC; 
  signal BTN_0_Count_12_LOGIC_ZERO_4817 : STD_LOGIC; 
  signal BTN_0_Count_12_CYSELG_4808 : STD_LOGIC; 
  signal BTN_0_Count_12_G : STD_LOGIC; 
  signal BTN_0_Count_12_SRINV_4806 : STD_LOGIC; 
  signal BTN_0_Count_12_CLKINV_4805 : STD_LOGIC; 
  signal BTN_0_Count_12_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_14_DXMUX_4901 : STD_LOGIC; 
  signal BTN_0_Count_14_XORF_4899 : STD_LOGIC; 
  signal BTN_0_Count_14_CYINIT_4898 : STD_LOGIC; 
  signal BTN_0_Count_14_F : STD_LOGIC; 
  signal BTN_0_Count_14_DYMUX_4883 : STD_LOGIC; 
  signal BTN_0_Count_14_XORG_4881 : STD_LOGIC; 
  signal BTN_0_Count_14_CYSELF_4879 : STD_LOGIC; 
  signal BTN_0_Count_14_CYMUXFAST_4878 : STD_LOGIC; 
  signal BTN_0_Count_14_CYAND_4877 : STD_LOGIC; 
  signal BTN_0_Count_14_FASTCARRY_4876 : STD_LOGIC; 
  signal BTN_0_Count_14_CYMUXG2_4875 : STD_LOGIC; 
  signal BTN_0_Count_14_CYMUXF2_4874 : STD_LOGIC; 
  signal BTN_0_Count_14_LOGIC_ZERO_4873 : STD_LOGIC; 
  signal BTN_0_Count_14_CYSELG_4864 : STD_LOGIC; 
  signal BTN_0_Count_14_G : STD_LOGIC; 
  signal BTN_0_Count_14_SRINV_4862 : STD_LOGIC; 
  signal BTN_0_Count_14_CLKINV_4861 : STD_LOGIC; 
  signal BTN_0_Count_14_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_16_DXMUX_4957 : STD_LOGIC; 
  signal BTN_0_Count_16_XORF_4955 : STD_LOGIC; 
  signal BTN_0_Count_16_CYINIT_4954 : STD_LOGIC; 
  signal BTN_0_Count_16_F : STD_LOGIC; 
  signal BTN_0_Count_16_DYMUX_4939 : STD_LOGIC; 
  signal BTN_0_Count_16_XORG_4937 : STD_LOGIC; 
  signal BTN_0_Count_16_CYSELF_4935 : STD_LOGIC; 
  signal BTN_0_Count_16_CYMUXFAST_4934 : STD_LOGIC; 
  signal BTN_0_Count_16_CYAND_4933 : STD_LOGIC; 
  signal BTN_0_Count_16_FASTCARRY_4932 : STD_LOGIC; 
  signal BTN_0_Count_16_CYMUXG2_4931 : STD_LOGIC; 
  signal BTN_0_Count_16_CYMUXF2_4930 : STD_LOGIC; 
  signal BTN_0_Count_16_LOGIC_ZERO_4929 : STD_LOGIC; 
  signal BTN_0_Count_16_CYSELG_4920 : STD_LOGIC; 
  signal BTN_0_Count_16_G : STD_LOGIC; 
  signal BTN_0_Count_16_SRINV_4918 : STD_LOGIC; 
  signal BTN_0_Count_16_CLKINV_4917 : STD_LOGIC; 
  signal BTN_0_Count_16_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_18_DXMUX_5013 : STD_LOGIC; 
  signal BTN_0_Count_18_XORF_5011 : STD_LOGIC; 
  signal BTN_0_Count_18_CYINIT_5010 : STD_LOGIC; 
  signal BTN_0_Count_18_F : STD_LOGIC; 
  signal BTN_0_Count_18_DYMUX_4995 : STD_LOGIC; 
  signal BTN_0_Count_18_XORG_4993 : STD_LOGIC; 
  signal BTN_0_Count_18_CYSELF_4991 : STD_LOGIC; 
  signal BTN_0_Count_18_CYMUXFAST_4990 : STD_LOGIC; 
  signal BTN_0_Count_18_CYAND_4989 : STD_LOGIC; 
  signal BTN_0_Count_18_FASTCARRY_4988 : STD_LOGIC; 
  signal BTN_0_Count_18_CYMUXG2_4987 : STD_LOGIC; 
  signal BTN_0_Count_18_CYMUXF2_4986 : STD_LOGIC; 
  signal BTN_0_Count_18_LOGIC_ZERO_4985 : STD_LOGIC; 
  signal BTN_0_Count_18_CYSELG_4976 : STD_LOGIC; 
  signal BTN_0_Count_18_G : STD_LOGIC; 
  signal BTN_0_Count_18_SRINV_4974 : STD_LOGIC; 
  signal BTN_0_Count_18_CLKINV_4973 : STD_LOGIC; 
  signal BTN_0_Count_18_CEINVNOT : STD_LOGIC; 
  signal BTN_0_Count_20_DXMUX_5040 : STD_LOGIC; 
  signal BTN_0_Count_20_XORF_5038 : STD_LOGIC; 
  signal BTN_0_Count_20_CYINIT_5037 : STD_LOGIC; 
  signal BTN_0_Count_20_rt_5035 : STD_LOGIC; 
  signal BTN_0_Count_20_SRINV_5027 : STD_LOGIC; 
  signal BTN_0_Count_20_CLKINV_5026 : STD_LOGIC; 
  signal BTN_0_Count_20_CEINVNOT : STD_LOGIC; 
  signal SSeg_Result_0_XORF_5080 : STD_LOGIC; 
  signal SSeg_Result_0_LOGIC_ONE_5079 : STD_LOGIC; 
  signal SSeg_Result_0_CYINIT_5078 : STD_LOGIC; 
  signal SSeg_Result_0_CYSELF_5069 : STD_LOGIC; 
  signal SSeg_Result_0_BXINV_5067 : STD_LOGIC; 
  signal SSeg_Result_0_XORG_5065 : STD_LOGIC; 
  signal SSeg_Result_0_CYMUXG_5064 : STD_LOGIC; 
  signal SSeg_Result_0_LOGIC_ZERO_5062 : STD_LOGIC; 
  signal SSeg_Result_0_CYSELG_5053 : STD_LOGIC; 
  signal SSeg_Result_0_G : STD_LOGIC; 
  signal SSeg_Result_2_XORF_5118 : STD_LOGIC; 
  signal SSeg_Result_2_CYINIT_5117 : STD_LOGIC; 
  signal SSeg_Result_2_F : STD_LOGIC; 
  signal SSeg_Result_2_XORG_5106 : STD_LOGIC; 
  signal SSeg_Result_2_CYSELF_5104 : STD_LOGIC; 
  signal SSeg_Result_2_CYMUXFAST_5103 : STD_LOGIC; 
  signal SSeg_Result_2_CYAND_5102 : STD_LOGIC; 
  signal SSeg_Result_2_FASTCARRY_5101 : STD_LOGIC; 
  signal SSeg_Result_2_CYMUXG2_5100 : STD_LOGIC; 
  signal SSeg_Result_2_CYMUXF2_5099 : STD_LOGIC; 
  signal SSeg_Result_2_LOGIC_ZERO_5098 : STD_LOGIC; 
  signal SSeg_Result_2_CYSELG_5089 : STD_LOGIC; 
  signal SSeg_Result_2_G : STD_LOGIC; 
  signal SSeg_Result_4_XORF_5156 : STD_LOGIC; 
  signal SSeg_Result_4_CYINIT_5155 : STD_LOGIC; 
  signal SSeg_Result_4_F : STD_LOGIC; 
  signal SSeg_Result_4_XORG_5144 : STD_LOGIC; 
  signal SSeg_Result_4_CYSELF_5142 : STD_LOGIC; 
  signal SSeg_Result_4_CYMUXFAST_5141 : STD_LOGIC; 
  signal SSeg_Result_4_CYAND_5140 : STD_LOGIC; 
  signal SSeg_Result_4_FASTCARRY_5139 : STD_LOGIC; 
  signal SSeg_Result_4_CYMUXG2_5138 : STD_LOGIC; 
  signal SSeg_Result_4_CYMUXF2_5137 : STD_LOGIC; 
  signal SSeg_Result_4_LOGIC_ZERO_5136 : STD_LOGIC; 
  signal SSeg_Result_4_CYSELG_5127 : STD_LOGIC; 
  signal SSeg_Result_4_G : STD_LOGIC; 
  signal SSeg_Result_6_XORF_5194 : STD_LOGIC; 
  signal SSeg_Result_6_CYINIT_5193 : STD_LOGIC; 
  signal SSeg_Result_6_F : STD_LOGIC; 
  signal SSeg_Result_6_XORG_5182 : STD_LOGIC; 
  signal SSeg_Result_6_CYSELF_5180 : STD_LOGIC; 
  signal SSeg_Result_6_CYMUXFAST_5179 : STD_LOGIC; 
  signal SSeg_Result_6_CYAND_5178 : STD_LOGIC; 
  signal SSeg_Result_6_FASTCARRY_5177 : STD_LOGIC; 
  signal SSeg_Result_6_CYMUXG2_5176 : STD_LOGIC; 
  signal SSeg_Result_6_CYMUXF2_5175 : STD_LOGIC; 
  signal SSeg_Result_6_LOGIC_ZERO_5174 : STD_LOGIC; 
  signal SSeg_Result_6_CYSELG_5165 : STD_LOGIC; 
  signal SSeg_Result_6_G : STD_LOGIC; 
  signal SSeg_Result_8_XORF_5232 : STD_LOGIC; 
  signal SSeg_Result_8_CYINIT_5231 : STD_LOGIC; 
  signal SSeg_Result_8_F : STD_LOGIC; 
  signal SSeg_Result_8_XORG_5220 : STD_LOGIC; 
  signal SSeg_Result_8_CYSELF_5218 : STD_LOGIC; 
  signal SSeg_Result_8_CYMUXFAST_5217 : STD_LOGIC; 
  signal SSeg_Result_8_CYAND_5216 : STD_LOGIC; 
  signal SSeg_Result_8_FASTCARRY_5215 : STD_LOGIC; 
  signal SSeg_Result_8_CYMUXG2_5214 : STD_LOGIC; 
  signal SSeg_Result_8_CYMUXF2_5213 : STD_LOGIC; 
  signal SSeg_Result_8_LOGIC_ZERO_5212 : STD_LOGIC; 
  signal SSeg_Result_8_CYSELG_5203 : STD_LOGIC; 
  signal SSeg_Result_8_G : STD_LOGIC; 
  signal SSeg_Result_10_XORF_5270 : STD_LOGIC; 
  signal SSeg_Result_10_CYINIT_5269 : STD_LOGIC; 
  signal SSeg_Result_10_F : STD_LOGIC; 
  signal SSeg_Result_10_XORG_5258 : STD_LOGIC; 
  signal SSeg_Result_10_CYSELF_5256 : STD_LOGIC; 
  signal SSeg_Result_10_CYMUXFAST_5255 : STD_LOGIC; 
  signal SSeg_Result_10_CYAND_5254 : STD_LOGIC; 
  signal SSeg_Result_10_FASTCARRY_5253 : STD_LOGIC; 
  signal SSeg_Result_10_CYMUXG2_5252 : STD_LOGIC; 
  signal SSeg_Result_10_CYMUXF2_5251 : STD_LOGIC; 
  signal SSeg_Result_10_LOGIC_ZERO_5250 : STD_LOGIC; 
  signal SSeg_Result_10_CYSELG_5241 : STD_LOGIC; 
  signal SSeg_Result_10_G : STD_LOGIC; 
  signal SSeg_Result_12_XORF_5308 : STD_LOGIC; 
  signal SSeg_Result_12_CYINIT_5307 : STD_LOGIC; 
  signal SSeg_Result_12_F : STD_LOGIC; 
  signal SSeg_Result_12_XORG_5296 : STD_LOGIC; 
  signal SSeg_Result_12_CYSELF_5294 : STD_LOGIC; 
  signal SSeg_Result_12_CYMUXFAST_5293 : STD_LOGIC; 
  signal SSeg_Result_12_CYAND_5292 : STD_LOGIC; 
  signal SSeg_Result_12_FASTCARRY_5291 : STD_LOGIC; 
  signal SSeg_Result_12_CYMUXG2_5290 : STD_LOGIC; 
  signal SSeg_Result_12_CYMUXF2_5289 : STD_LOGIC; 
  signal SSeg_Result_12_LOGIC_ZERO_5288 : STD_LOGIC; 
  signal SSeg_Result_12_CYSELG_5279 : STD_LOGIC; 
  signal SSeg_Result_12_G : STD_LOGIC; 
  signal SSeg_Result_14_XORF_5346 : STD_LOGIC; 
  signal SSeg_Result_14_CYINIT_5345 : STD_LOGIC; 
  signal SSeg_Result_14_F : STD_LOGIC; 
  signal SSeg_Result_14_XORG_5334 : STD_LOGIC; 
  signal SSeg_Result_14_CYSELF_5332 : STD_LOGIC; 
  signal SSeg_Result_14_CYMUXFAST_5331 : STD_LOGIC; 
  signal SSeg_Result_14_CYAND_5330 : STD_LOGIC; 
  signal SSeg_Result_14_FASTCARRY_5329 : STD_LOGIC; 
  signal SSeg_Result_14_CYMUXG2_5328 : STD_LOGIC; 
  signal SSeg_Result_14_CYMUXF2_5327 : STD_LOGIC; 
  signal SSeg_Result_14_LOGIC_ZERO_5326 : STD_LOGIC; 
  signal SSeg_Result_14_CYSELG_5317 : STD_LOGIC; 
  signal SSeg_Result_14_G : STD_LOGIC; 
  signal SSeg_Result_16_XORF_5361 : STD_LOGIC; 
  signal SSeg_Result_16_CYINIT_5360 : STD_LOGIC; 
  signal SSeg_count240hz_16_rt_5358 : STD_LOGIC; 
  signal BTN_2_Count_0_DXMUX_5411 : STD_LOGIC; 
  signal BTN_2_Count_0_XORF_5409 : STD_LOGIC; 
  signal BTN_2_Count_0_LOGIC_ONE_5408 : STD_LOGIC; 
  signal BTN_2_Count_0_CYINIT_5407 : STD_LOGIC; 
  signal BTN_2_Count_0_CYSELF_5398 : STD_LOGIC; 
  signal BTN_2_Count_0_BXINV_5396 : STD_LOGIC; 
  signal BTN_2_Count_0_DYMUX_5390 : STD_LOGIC; 
  signal BTN_2_Count_0_XORG_5388 : STD_LOGIC; 
  signal BTN_2_Count_0_CYMUXG_5387 : STD_LOGIC; 
  signal BTN_2_Count_0_LOGIC_ZERO_5385 : STD_LOGIC; 
  signal BTN_2_Count_0_CYSELG_5376 : STD_LOGIC; 
  signal BTN_2_Count_0_G : STD_LOGIC; 
  signal BTN_2_Count_0_SRINV_5374 : STD_LOGIC; 
  signal BTN_2_Count_0_CLKINV_5373 : STD_LOGIC; 
  signal BTN_2_Count_0_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_2_DXMUX_5467 : STD_LOGIC; 
  signal BTN_2_Count_2_XORF_5465 : STD_LOGIC; 
  signal BTN_2_Count_2_CYINIT_5464 : STD_LOGIC; 
  signal BTN_2_Count_2_F : STD_LOGIC; 
  signal BTN_2_Count_2_DYMUX_5449 : STD_LOGIC; 
  signal BTN_2_Count_2_XORG_5447 : STD_LOGIC; 
  signal BTN_2_Count_2_CYSELF_5445 : STD_LOGIC; 
  signal BTN_2_Count_2_CYMUXFAST_5444 : STD_LOGIC; 
  signal BTN_2_Count_2_CYAND_5443 : STD_LOGIC; 
  signal BTN_2_Count_2_FASTCARRY_5442 : STD_LOGIC; 
  signal BTN_2_Count_2_CYMUXG2_5441 : STD_LOGIC; 
  signal BTN_2_Count_2_CYMUXF2_5440 : STD_LOGIC; 
  signal BTN_2_Count_2_LOGIC_ZERO_5439 : STD_LOGIC; 
  signal BTN_2_Count_2_CYSELG_5430 : STD_LOGIC; 
  signal BTN_2_Count_2_G : STD_LOGIC; 
  signal BTN_2_Count_2_SRINV_5428 : STD_LOGIC; 
  signal BTN_2_Count_2_CLKINV_5427 : STD_LOGIC; 
  signal BTN_2_Count_2_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_4_DXMUX_5523 : STD_LOGIC; 
  signal BTN_2_Count_4_XORF_5521 : STD_LOGIC; 
  signal BTN_2_Count_4_CYINIT_5520 : STD_LOGIC; 
  signal BTN_2_Count_4_F : STD_LOGIC; 
  signal BTN_2_Count_4_DYMUX_5505 : STD_LOGIC; 
  signal BTN_2_Count_4_XORG_5503 : STD_LOGIC; 
  signal BTN_2_Count_4_CYSELF_5501 : STD_LOGIC; 
  signal BTN_2_Count_4_CYMUXFAST_5500 : STD_LOGIC; 
  signal BTN_2_Count_4_CYAND_5499 : STD_LOGIC; 
  signal BTN_2_Count_4_FASTCARRY_5498 : STD_LOGIC; 
  signal BTN_2_Count_4_CYMUXG2_5497 : STD_LOGIC; 
  signal BTN_2_Count_4_CYMUXF2_5496 : STD_LOGIC; 
  signal BTN_2_Count_4_LOGIC_ZERO_5495 : STD_LOGIC; 
  signal BTN_2_Count_4_CYSELG_5486 : STD_LOGIC; 
  signal BTN_2_Count_4_G : STD_LOGIC; 
  signal BTN_2_Count_4_SRINV_5484 : STD_LOGIC; 
  signal BTN_2_Count_4_CLKINV_5483 : STD_LOGIC; 
  signal BTN_2_Count_4_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_6_DXMUX_5579 : STD_LOGIC; 
  signal BTN_2_Count_6_XORF_5577 : STD_LOGIC; 
  signal BTN_2_Count_6_CYINIT_5576 : STD_LOGIC; 
  signal BTN_2_Count_6_F : STD_LOGIC; 
  signal BTN_2_Count_6_DYMUX_5561 : STD_LOGIC; 
  signal BTN_2_Count_6_XORG_5559 : STD_LOGIC; 
  signal BTN_2_Count_6_CYSELF_5557 : STD_LOGIC; 
  signal BTN_2_Count_6_CYMUXFAST_5556 : STD_LOGIC; 
  signal BTN_2_Count_6_CYAND_5555 : STD_LOGIC; 
  signal BTN_2_Count_6_FASTCARRY_5554 : STD_LOGIC; 
  signal BTN_2_Count_6_CYMUXG2_5553 : STD_LOGIC; 
  signal BTN_2_Count_6_CYMUXF2_5552 : STD_LOGIC; 
  signal BTN_2_Count_6_LOGIC_ZERO_5551 : STD_LOGIC; 
  signal BTN_2_Count_6_CYSELG_5542 : STD_LOGIC; 
  signal BTN_2_Count_6_G : STD_LOGIC; 
  signal BTN_2_Count_6_SRINV_5540 : STD_LOGIC; 
  signal BTN_2_Count_6_CLKINV_5539 : STD_LOGIC; 
  signal BTN_2_Count_6_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_8_DXMUX_5635 : STD_LOGIC; 
  signal BTN_2_Count_8_XORF_5633 : STD_LOGIC; 
  signal BTN_2_Count_8_CYINIT_5632 : STD_LOGIC; 
  signal BTN_2_Count_8_F : STD_LOGIC; 
  signal BTN_2_Count_8_DYMUX_5617 : STD_LOGIC; 
  signal BTN_2_Count_8_XORG_5615 : STD_LOGIC; 
  signal BTN_2_Count_8_CYSELF_5613 : STD_LOGIC; 
  signal BTN_2_Count_8_CYMUXFAST_5612 : STD_LOGIC; 
  signal BTN_2_Count_8_CYAND_5611 : STD_LOGIC; 
  signal BTN_2_Count_8_FASTCARRY_5610 : STD_LOGIC; 
  signal BTN_2_Count_8_CYMUXG2_5609 : STD_LOGIC; 
  signal BTN_2_Count_8_CYMUXF2_5608 : STD_LOGIC; 
  signal BTN_2_Count_8_LOGIC_ZERO_5607 : STD_LOGIC; 
  signal BTN_2_Count_8_CYSELG_5598 : STD_LOGIC; 
  signal BTN_2_Count_8_G : STD_LOGIC; 
  signal BTN_2_Count_8_SRINV_5596 : STD_LOGIC; 
  signal BTN_2_Count_8_CLKINV_5595 : STD_LOGIC; 
  signal BTN_2_Count_8_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_10_DXMUX_5691 : STD_LOGIC; 
  signal BTN_2_Count_10_XORF_5689 : STD_LOGIC; 
  signal BTN_2_Count_10_CYINIT_5688 : STD_LOGIC; 
  signal BTN_2_Count_10_F : STD_LOGIC; 
  signal BTN_2_Count_10_DYMUX_5673 : STD_LOGIC; 
  signal BTN_2_Count_10_XORG_5671 : STD_LOGIC; 
  signal BTN_2_Count_10_CYSELF_5669 : STD_LOGIC; 
  signal BTN_2_Count_10_CYMUXFAST_5668 : STD_LOGIC; 
  signal BTN_2_Count_10_CYAND_5667 : STD_LOGIC; 
  signal BTN_2_Count_10_FASTCARRY_5666 : STD_LOGIC; 
  signal BTN_2_Count_10_CYMUXG2_5665 : STD_LOGIC; 
  signal BTN_2_Count_10_CYMUXF2_5664 : STD_LOGIC; 
  signal BTN_2_Count_10_LOGIC_ZERO_5663 : STD_LOGIC; 
  signal BTN_2_Count_10_CYSELG_5654 : STD_LOGIC; 
  signal BTN_2_Count_10_G : STD_LOGIC; 
  signal BTN_2_Count_10_SRINV_5652 : STD_LOGIC; 
  signal BTN_2_Count_10_CLKINV_5651 : STD_LOGIC; 
  signal BTN_2_Count_10_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_12_DXMUX_5747 : STD_LOGIC; 
  signal BTN_2_Count_12_XORF_5745 : STD_LOGIC; 
  signal BTN_2_Count_12_CYINIT_5744 : STD_LOGIC; 
  signal BTN_2_Count_12_F : STD_LOGIC; 
  signal BTN_2_Count_12_DYMUX_5729 : STD_LOGIC; 
  signal BTN_2_Count_12_XORG_5727 : STD_LOGIC; 
  signal BTN_2_Count_12_CYSELF_5725 : STD_LOGIC; 
  signal BTN_2_Count_12_CYMUXFAST_5724 : STD_LOGIC; 
  signal BTN_2_Count_12_CYAND_5723 : STD_LOGIC; 
  signal BTN_2_Count_12_FASTCARRY_5722 : STD_LOGIC; 
  signal BTN_2_Count_12_CYMUXG2_5721 : STD_LOGIC; 
  signal BTN_2_Count_12_CYMUXF2_5720 : STD_LOGIC; 
  signal BTN_2_Count_12_LOGIC_ZERO_5719 : STD_LOGIC; 
  signal BTN_2_Count_12_CYSELG_5710 : STD_LOGIC; 
  signal BTN_2_Count_12_G : STD_LOGIC; 
  signal BTN_2_Count_12_SRINV_5708 : STD_LOGIC; 
  signal BTN_2_Count_12_CLKINV_5707 : STD_LOGIC; 
  signal BTN_2_Count_12_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_14_DXMUX_5803 : STD_LOGIC; 
  signal BTN_2_Count_14_XORF_5801 : STD_LOGIC; 
  signal BTN_2_Count_14_CYINIT_5800 : STD_LOGIC; 
  signal BTN_2_Count_14_F : STD_LOGIC; 
  signal BTN_2_Count_14_DYMUX_5785 : STD_LOGIC; 
  signal BTN_2_Count_14_XORG_5783 : STD_LOGIC; 
  signal BTN_2_Count_14_CYSELF_5781 : STD_LOGIC; 
  signal BTN_2_Count_14_CYMUXFAST_5780 : STD_LOGIC; 
  signal BTN_2_Count_14_CYAND_5779 : STD_LOGIC; 
  signal BTN_2_Count_14_FASTCARRY_5778 : STD_LOGIC; 
  signal BTN_2_Count_14_CYMUXG2_5777 : STD_LOGIC; 
  signal BTN_2_Count_14_CYMUXF2_5776 : STD_LOGIC; 
  signal BTN_2_Count_14_LOGIC_ZERO_5775 : STD_LOGIC; 
  signal BTN_2_Count_14_CYSELG_5766 : STD_LOGIC; 
  signal BTN_2_Count_14_G : STD_LOGIC; 
  signal BTN_2_Count_14_SRINV_5764 : STD_LOGIC; 
  signal BTN_2_Count_14_CLKINV_5763 : STD_LOGIC; 
  signal BTN_2_Count_14_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_16_DXMUX_5859 : STD_LOGIC; 
  signal BTN_2_Count_16_XORF_5857 : STD_LOGIC; 
  signal BTN_2_Count_16_CYINIT_5856 : STD_LOGIC; 
  signal BTN_2_Count_16_F : STD_LOGIC; 
  signal BTN_2_Count_16_DYMUX_5841 : STD_LOGIC; 
  signal BTN_2_Count_16_XORG_5839 : STD_LOGIC; 
  signal BTN_2_Count_16_CYSELF_5837 : STD_LOGIC; 
  signal BTN_2_Count_16_CYMUXFAST_5836 : STD_LOGIC; 
  signal BTN_2_Count_16_CYAND_5835 : STD_LOGIC; 
  signal BTN_2_Count_16_FASTCARRY_5834 : STD_LOGIC; 
  signal BTN_2_Count_16_CYMUXG2_5833 : STD_LOGIC; 
  signal BTN_2_Count_16_CYMUXF2_5832 : STD_LOGIC; 
  signal BTN_2_Count_16_LOGIC_ZERO_5831 : STD_LOGIC; 
  signal BTN_2_Count_16_CYSELG_5822 : STD_LOGIC; 
  signal BTN_2_Count_16_G : STD_LOGIC; 
  signal BTN_2_Count_16_SRINV_5820 : STD_LOGIC; 
  signal BTN_2_Count_16_CLKINV_5819 : STD_LOGIC; 
  signal BTN_2_Count_16_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_18_DXMUX_5915 : STD_LOGIC; 
  signal BTN_2_Count_18_XORF_5913 : STD_LOGIC; 
  signal BTN_2_Count_18_CYINIT_5912 : STD_LOGIC; 
  signal BTN_2_Count_18_F : STD_LOGIC; 
  signal BTN_2_Count_18_DYMUX_5897 : STD_LOGIC; 
  signal BTN_2_Count_18_XORG_5895 : STD_LOGIC; 
  signal BTN_2_Count_18_CYSELF_5893 : STD_LOGIC; 
  signal BTN_2_Count_18_CYMUXFAST_5892 : STD_LOGIC; 
  signal BTN_2_Count_18_CYAND_5891 : STD_LOGIC; 
  signal BTN_2_Count_18_FASTCARRY_5890 : STD_LOGIC; 
  signal BTN_2_Count_18_CYMUXG2_5889 : STD_LOGIC; 
  signal BTN_2_Count_18_CYMUXF2_5888 : STD_LOGIC; 
  signal BTN_2_Count_18_LOGIC_ZERO_5887 : STD_LOGIC; 
  signal BTN_2_Count_18_CYSELG_5878 : STD_LOGIC; 
  signal BTN_2_Count_18_G : STD_LOGIC; 
  signal BTN_2_Count_18_SRINV_5876 : STD_LOGIC; 
  signal BTN_2_Count_18_CLKINV_5875 : STD_LOGIC; 
  signal BTN_2_Count_18_CEINVNOT : STD_LOGIC; 
  signal BTN_2_Count_20_DXMUX_5942 : STD_LOGIC; 
  signal BTN_2_Count_20_XORF_5940 : STD_LOGIC; 
  signal BTN_2_Count_20_CYINIT_5939 : STD_LOGIC; 
  signal BTN_2_Count_20_rt_5937 : STD_LOGIC; 
  signal BTN_2_Count_20_SRINV_5929 : STD_LOGIC; 
  signal BTN_2_Count_20_CLKINV_5928 : STD_LOGIC; 
  signal BTN_2_Count_20_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_0_DXMUX_5996 : STD_LOGIC; 
  signal BTN_3_Count_0_XORF_5994 : STD_LOGIC; 
  signal BTN_3_Count_0_LOGIC_ONE_5993 : STD_LOGIC; 
  signal BTN_3_Count_0_CYINIT_5992 : STD_LOGIC; 
  signal BTN_3_Count_0_CYSELF_5983 : STD_LOGIC; 
  signal BTN_3_Count_0_BXINV_5981 : STD_LOGIC; 
  signal BTN_3_Count_0_DYMUX_5975 : STD_LOGIC; 
  signal BTN_3_Count_0_XORG_5973 : STD_LOGIC; 
  signal BTN_3_Count_0_CYMUXG_5972 : STD_LOGIC; 
  signal BTN_3_Count_0_LOGIC_ZERO_5970 : STD_LOGIC; 
  signal BTN_3_Count_0_CYSELG_5961 : STD_LOGIC; 
  signal BTN_3_Count_0_G : STD_LOGIC; 
  signal BTN_3_Count_0_SRINV_5959 : STD_LOGIC; 
  signal BTN_3_Count_0_CLKINV_5958 : STD_LOGIC; 
  signal BTN_3_Count_0_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_2_DXMUX_6052 : STD_LOGIC; 
  signal BTN_3_Count_2_XORF_6050 : STD_LOGIC; 
  signal BTN_3_Count_2_CYINIT_6049 : STD_LOGIC; 
  signal BTN_3_Count_2_F : STD_LOGIC; 
  signal BTN_3_Count_2_DYMUX_6034 : STD_LOGIC; 
  signal BTN_3_Count_2_XORG_6032 : STD_LOGIC; 
  signal BTN_3_Count_2_CYSELF_6030 : STD_LOGIC; 
  signal BTN_3_Count_2_CYMUXFAST_6029 : STD_LOGIC; 
  signal BTN_3_Count_2_CYAND_6028 : STD_LOGIC; 
  signal BTN_3_Count_2_FASTCARRY_6027 : STD_LOGIC; 
  signal BTN_3_Count_2_CYMUXG2_6026 : STD_LOGIC; 
  signal BTN_3_Count_2_CYMUXF2_6025 : STD_LOGIC; 
  signal BTN_3_Count_2_LOGIC_ZERO_6024 : STD_LOGIC; 
  signal BTN_3_Count_2_CYSELG_6015 : STD_LOGIC; 
  signal BTN_3_Count_2_G : STD_LOGIC; 
  signal BTN_3_Count_2_SRINV_6013 : STD_LOGIC; 
  signal BTN_3_Count_2_CLKINV_6012 : STD_LOGIC; 
  signal BTN_3_Count_2_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_4_DXMUX_6108 : STD_LOGIC; 
  signal BTN_3_Count_4_XORF_6106 : STD_LOGIC; 
  signal BTN_3_Count_4_CYINIT_6105 : STD_LOGIC; 
  signal BTN_3_Count_4_F : STD_LOGIC; 
  signal BTN_3_Count_4_DYMUX_6090 : STD_LOGIC; 
  signal BTN_3_Count_4_XORG_6088 : STD_LOGIC; 
  signal BTN_3_Count_4_CYSELF_6086 : STD_LOGIC; 
  signal BTN_3_Count_4_CYMUXFAST_6085 : STD_LOGIC; 
  signal BTN_3_Count_4_CYAND_6084 : STD_LOGIC; 
  signal BTN_3_Count_4_FASTCARRY_6083 : STD_LOGIC; 
  signal BTN_3_Count_4_CYMUXG2_6082 : STD_LOGIC; 
  signal BTN_3_Count_4_CYMUXF2_6081 : STD_LOGIC; 
  signal BTN_3_Count_4_LOGIC_ZERO_6080 : STD_LOGIC; 
  signal BTN_3_Count_4_CYSELG_6071 : STD_LOGIC; 
  signal BTN_3_Count_4_G : STD_LOGIC; 
  signal BTN_3_Count_4_SRINV_6069 : STD_LOGIC; 
  signal BTN_3_Count_4_CLKINV_6068 : STD_LOGIC; 
  signal BTN_3_Count_4_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_6_DXMUX_6164 : STD_LOGIC; 
  signal BTN_3_Count_6_XORF_6162 : STD_LOGIC; 
  signal BTN_3_Count_6_CYINIT_6161 : STD_LOGIC; 
  signal BTN_3_Count_6_F : STD_LOGIC; 
  signal BTN_3_Count_6_DYMUX_6146 : STD_LOGIC; 
  signal BTN_3_Count_6_XORG_6144 : STD_LOGIC; 
  signal BTN_3_Count_6_CYSELF_6142 : STD_LOGIC; 
  signal BTN_3_Count_6_CYMUXFAST_6141 : STD_LOGIC; 
  signal BTN_3_Count_6_CYAND_6140 : STD_LOGIC; 
  signal BTN_3_Count_6_FASTCARRY_6139 : STD_LOGIC; 
  signal BTN_3_Count_6_CYMUXG2_6138 : STD_LOGIC; 
  signal BTN_3_Count_6_CYMUXF2_6137 : STD_LOGIC; 
  signal BTN_3_Count_6_LOGIC_ZERO_6136 : STD_LOGIC; 
  signal BTN_3_Count_6_CYSELG_6127 : STD_LOGIC; 
  signal BTN_3_Count_6_G : STD_LOGIC; 
  signal BTN_3_Count_6_SRINV_6125 : STD_LOGIC; 
  signal BTN_3_Count_6_CLKINV_6124 : STD_LOGIC; 
  signal BTN_3_Count_6_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_8_DXMUX_6220 : STD_LOGIC; 
  signal BTN_3_Count_8_XORF_6218 : STD_LOGIC; 
  signal BTN_3_Count_8_CYINIT_6217 : STD_LOGIC; 
  signal BTN_3_Count_8_F : STD_LOGIC; 
  signal BTN_3_Count_8_DYMUX_6202 : STD_LOGIC; 
  signal BTN_3_Count_8_XORG_6200 : STD_LOGIC; 
  signal BTN_3_Count_8_CYSELF_6198 : STD_LOGIC; 
  signal BTN_3_Count_8_CYMUXFAST_6197 : STD_LOGIC; 
  signal BTN_3_Count_8_CYAND_6196 : STD_LOGIC; 
  signal BTN_3_Count_8_FASTCARRY_6195 : STD_LOGIC; 
  signal BTN_3_Count_8_CYMUXG2_6194 : STD_LOGIC; 
  signal BTN_3_Count_8_CYMUXF2_6193 : STD_LOGIC; 
  signal BTN_3_Count_8_LOGIC_ZERO_6192 : STD_LOGIC; 
  signal BTN_3_Count_8_CYSELG_6183 : STD_LOGIC; 
  signal BTN_3_Count_8_G : STD_LOGIC; 
  signal BTN_3_Count_8_SRINV_6181 : STD_LOGIC; 
  signal BTN_3_Count_8_CLKINV_6180 : STD_LOGIC; 
  signal BTN_3_Count_8_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_10_DXMUX_6276 : STD_LOGIC; 
  signal BTN_3_Count_10_XORF_6274 : STD_LOGIC; 
  signal BTN_3_Count_10_CYINIT_6273 : STD_LOGIC; 
  signal BTN_3_Count_10_F : STD_LOGIC; 
  signal BTN_3_Count_10_DYMUX_6258 : STD_LOGIC; 
  signal BTN_3_Count_10_XORG_6256 : STD_LOGIC; 
  signal BTN_3_Count_10_CYSELF_6254 : STD_LOGIC; 
  signal BTN_3_Count_10_CYMUXFAST_6253 : STD_LOGIC; 
  signal BTN_3_Count_10_CYAND_6252 : STD_LOGIC; 
  signal BTN_3_Count_10_FASTCARRY_6251 : STD_LOGIC; 
  signal BTN_3_Count_10_CYMUXG2_6250 : STD_LOGIC; 
  signal BTN_3_Count_10_CYMUXF2_6249 : STD_LOGIC; 
  signal BTN_3_Count_10_LOGIC_ZERO_6248 : STD_LOGIC; 
  signal BTN_3_Count_10_CYSELG_6239 : STD_LOGIC; 
  signal BTN_3_Count_10_G : STD_LOGIC; 
  signal BTN_3_Count_10_SRINV_6237 : STD_LOGIC; 
  signal BTN_3_Count_10_CLKINV_6236 : STD_LOGIC; 
  signal BTN_3_Count_10_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_12_DXMUX_6332 : STD_LOGIC; 
  signal BTN_3_Count_12_XORF_6330 : STD_LOGIC; 
  signal BTN_3_Count_12_CYINIT_6329 : STD_LOGIC; 
  signal BTN_3_Count_12_F : STD_LOGIC; 
  signal BTN_3_Count_12_DYMUX_6314 : STD_LOGIC; 
  signal BTN_3_Count_12_XORG_6312 : STD_LOGIC; 
  signal BTN_3_Count_12_CYSELF_6310 : STD_LOGIC; 
  signal BTN_3_Count_12_CYMUXFAST_6309 : STD_LOGIC; 
  signal BTN_3_Count_12_CYAND_6308 : STD_LOGIC; 
  signal BTN_3_Count_12_FASTCARRY_6307 : STD_LOGIC; 
  signal BTN_3_Count_12_CYMUXG2_6306 : STD_LOGIC; 
  signal BTN_3_Count_12_CYMUXF2_6305 : STD_LOGIC; 
  signal BTN_3_Count_12_LOGIC_ZERO_6304 : STD_LOGIC; 
  signal BTN_3_Count_12_CYSELG_6295 : STD_LOGIC; 
  signal BTN_3_Count_12_G : STD_LOGIC; 
  signal BTN_3_Count_12_SRINV_6293 : STD_LOGIC; 
  signal BTN_3_Count_12_CLKINV_6292 : STD_LOGIC; 
  signal BTN_3_Count_12_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_14_DXMUX_6388 : STD_LOGIC; 
  signal BTN_3_Count_14_XORF_6386 : STD_LOGIC; 
  signal BTN_3_Count_14_CYINIT_6385 : STD_LOGIC; 
  signal BTN_3_Count_14_F : STD_LOGIC; 
  signal BTN_3_Count_14_DYMUX_6370 : STD_LOGIC; 
  signal BTN_3_Count_14_XORG_6368 : STD_LOGIC; 
  signal BTN_3_Count_14_CYSELF_6366 : STD_LOGIC; 
  signal BTN_3_Count_14_CYMUXFAST_6365 : STD_LOGIC; 
  signal BTN_3_Count_14_CYAND_6364 : STD_LOGIC; 
  signal BTN_3_Count_14_FASTCARRY_6363 : STD_LOGIC; 
  signal BTN_3_Count_14_CYMUXG2_6362 : STD_LOGIC; 
  signal BTN_3_Count_14_CYMUXF2_6361 : STD_LOGIC; 
  signal BTN_3_Count_14_LOGIC_ZERO_6360 : STD_LOGIC; 
  signal BTN_3_Count_14_CYSELG_6351 : STD_LOGIC; 
  signal BTN_3_Count_14_G : STD_LOGIC; 
  signal BTN_3_Count_14_SRINV_6349 : STD_LOGIC; 
  signal BTN_3_Count_14_CLKINV_6348 : STD_LOGIC; 
  signal BTN_3_Count_14_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_16_DXMUX_6444 : STD_LOGIC; 
  signal BTN_3_Count_16_XORF_6442 : STD_LOGIC; 
  signal BTN_3_Count_16_CYINIT_6441 : STD_LOGIC; 
  signal BTN_3_Count_16_F : STD_LOGIC; 
  signal BTN_3_Count_16_DYMUX_6426 : STD_LOGIC; 
  signal BTN_3_Count_16_XORG_6424 : STD_LOGIC; 
  signal BTN_3_Count_16_CYSELF_6422 : STD_LOGIC; 
  signal BTN_3_Count_16_CYMUXFAST_6421 : STD_LOGIC; 
  signal BTN_3_Count_16_CYAND_6420 : STD_LOGIC; 
  signal BTN_3_Count_16_FASTCARRY_6419 : STD_LOGIC; 
  signal BTN_3_Count_16_CYMUXG2_6418 : STD_LOGIC; 
  signal BTN_3_Count_16_CYMUXF2_6417 : STD_LOGIC; 
  signal BTN_3_Count_16_LOGIC_ZERO_6416 : STD_LOGIC; 
  signal BTN_3_Count_16_CYSELG_6407 : STD_LOGIC; 
  signal BTN_3_Count_16_G : STD_LOGIC; 
  signal BTN_3_Count_16_SRINV_6405 : STD_LOGIC; 
  signal BTN_3_Count_16_CLKINV_6404 : STD_LOGIC; 
  signal BTN_3_Count_16_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_18_DXMUX_6500 : STD_LOGIC; 
  signal BTN_3_Count_18_XORF_6498 : STD_LOGIC; 
  signal BTN_3_Count_18_CYINIT_6497 : STD_LOGIC; 
  signal BTN_3_Count_18_F : STD_LOGIC; 
  signal BTN_3_Count_18_DYMUX_6482 : STD_LOGIC; 
  signal BTN_3_Count_18_XORG_6480 : STD_LOGIC; 
  signal BTN_3_Count_18_CYSELF_6478 : STD_LOGIC; 
  signal BTN_3_Count_18_CYMUXFAST_6477 : STD_LOGIC; 
  signal BTN_3_Count_18_CYAND_6476 : STD_LOGIC; 
  signal BTN_3_Count_18_FASTCARRY_6475 : STD_LOGIC; 
  signal BTN_3_Count_18_CYMUXG2_6474 : STD_LOGIC; 
  signal BTN_3_Count_18_CYMUXF2_6473 : STD_LOGIC; 
  signal BTN_3_Count_18_LOGIC_ZERO_6472 : STD_LOGIC; 
  signal BTN_3_Count_18_CYSELG_6463 : STD_LOGIC; 
  signal BTN_3_Count_18_G : STD_LOGIC; 
  signal BTN_3_Count_18_SRINV_6461 : STD_LOGIC; 
  signal BTN_3_Count_18_CLKINV_6460 : STD_LOGIC; 
  signal BTN_3_Count_18_CEINVNOT : STD_LOGIC; 
  signal BTN_3_Count_20_DXMUX_6527 : STD_LOGIC; 
  signal BTN_3_Count_20_XORF_6525 : STD_LOGIC; 
  signal BTN_3_Count_20_CYINIT_6524 : STD_LOGIC; 
  signal BTN_3_Count_20_rt_6522 : STD_LOGIC; 
  signal BTN_3_Count_20_SRINV_6514 : STD_LOGIC; 
  signal BTN_3_Count_20_CLKINV_6513 : STD_LOGIC; 
  signal BTN_3_Count_20_CEINVNOT : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_1_CYINIT_6561 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELF_6552 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_1_BXINV_6550 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_1_CYMUXG_6549 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_1_LOGIC_ZERO_6547 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELG_6541 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELF_6585 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXFAST_6584 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_CYAND_6583 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_FASTCARRY_6582 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXG2_6581 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXF2_6580 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_LOGIC_ZERO_6579 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELG_6573 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_LOGIC_ZERO_6606 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_CYINIT_6605 : STD_LOGIC; 
  signal SSeg_count240hz_cmp_eq0000_CYSELF_6599 : STD_LOGIC; 
  signal CLK_INBUF : STD_LOGIC; 
  signal AN_0_O : STD_LOGIC; 
  signal AN_1_O : STD_LOGIC; 
  signal AN_2_O : STD_LOGIC; 
  signal AN_3_O : STD_LOGIC; 
  signal SW_0_INBUF : STD_LOGIC; 
  signal SW_1_INBUF : STD_LOGIC; 
  signal SW_2_INBUF : STD_LOGIC; 
  signal SW_3_INBUF : STD_LOGIC; 
  signal SW_4_INBUF : STD_LOGIC; 
  signal SW_5_INBUF : STD_LOGIC; 
  signal SW_6_INBUF : STD_LOGIC; 
  signal SW_7_INBUF : STD_LOGIC; 
  signal BTN_0_INBUF : STD_LOGIC; 
  signal BTN_1_INBUF : STD_LOGIC; 
  signal BTN_2_INBUF : STD_LOGIC; 
  signal BTN_3_INBUF : STD_LOGIC; 
  signal SEG_0_O : STD_LOGIC; 
  signal SEG_1_O : STD_LOGIC; 
  signal SEG_2_O : STD_LOGIC; 
  signal SEG_3_O : STD_LOGIC; 
  signal SEG_4_O : STD_LOGIC; 
  signal SEG_5_O : STD_LOGIC; 
  signal SEG_6_O : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal CLK_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal N21_F5MUX_6801 : STD_LOGIC; 
  signal N21_F : STD_LOGIC; 
  signal N21_BXINV_6790 : STD_LOGIC; 
  signal ALU_Mux_ALU_OUT_0_51 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001257_F5MUX_6826 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001257_BXINV_6819 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001828_F5MUX_6851 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001828_BXINV_6844 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001686_F5MUX_6876 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux0001686_BXINV_6869 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014107_F5MUX_6901 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014107_BXINV_6894 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018194_F5MUX_6926 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018194_BXINV_6919 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018290_F5MUX_6951 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00018290_BXINV_6944 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N68_F5MUX_6976 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N68_BXINV_6969 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012171_F5MUX_7001 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000121711_6999 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012171_BXINV_6993 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000121712_6991 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014312_F5MUX_7026 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000143121_7024 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014312_BXINV_7019 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000143122_7017 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016175_F5MUX_7051 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016175_F : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016175_BXINV_7040 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux000161751_7038 : STD_LOGIC; 
  signal SSeg_hexnum_0_DXMUX_7079 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00012292_O_pack_1 : STD_LOGIC; 
  signal SSeg_hexnum_0_CLKINV_7062 : STD_LOGIC; 
  signal SSeg_hexnum_1_DXMUX_7109 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00014384_SW0_O_pack_2 : STD_LOGIC; 
  signal SSeg_hexnum_1_CLKINV_7093 : STD_LOGIC; 
  signal SSeg_hexnum_2_DXMUX_7139 : STD_LOGIC; 
  signal SSeg_Mmux_hexnum_mux00016330_O_pack_1 : STD_LOGIC; 
  signal SSeg_hexnum_2_CLKINV_7122 : STD_LOGIC; 
  signal SSeg_hexnum_3_DYMUX_7157 : STD_LOGIC; 
  signal SSeg_hexnum_3_CLKINV_7147 : STD_LOGIC; 
  signal SSeg_AN_OUT_1_DXMUX_7191 : STD_LOGIC; 
  signal SSeg_Mrom_AN_OUT_mux00011 : STD_LOGIC; 
  signal SSeg_AN_OUT_1_DYMUX_7178 : STD_LOGIC; 
  signal SSeg_Mrom_AN_OUT_mux0001 : STD_LOGIC; 
  signal SSeg_AN_OUT_1_CLKINV_7168 : STD_LOGIC; 
  signal SSeg_AN_OUT_3_DXMUX_7225 : STD_LOGIC; 
  signal SSeg_Mrom_AN_OUT_mux00013 : STD_LOGIC; 
  signal SSeg_AN_OUT_3_DYMUX_7212 : STD_LOGIC; 
  signal SSeg_Mrom_AN_OUT_mux00012 : STD_LOGIC; 
  signal SSeg_AN_OUT_3_CLKINV_7202 : STD_LOGIC; 
  signal SSeg_count240hz_11_DXMUX_7259 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_11 : STD_LOGIC; 
  signal SSeg_count240hz_11_DYMUX_7246 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_10 : STD_LOGIC; 
  signal SSeg_count240hz_11_CLKINV_7236 : STD_LOGIC; 
  signal SSeg_count240hz_13_DXMUX_7293 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_13 : STD_LOGIC; 
  signal SSeg_count240hz_13_DYMUX_7280 : STD_LOGIC; 
  signal SSeg_Mcount_count240hz_eqn_12 : STD_LOGIC; 
  signal SSeg_count240hz_13_CLKINV_7270 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_5_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_6_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_OPCODE_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_OPCODE_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_OPCODE_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_OPCODE_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_2_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_3_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_0_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALB_1_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_4_CLK : STD_LOGIC; 
  signal NlwInverterSignal_UXCntl_Unit_VALA_5_CLK : STD_LOGIC; 
  signal SSeg_Result : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal SSeg_count240hz : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal UXCntl_Unit_VALB : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal UXCntl_Unit_VALA : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal UXCntl_Unit_OPCODE : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal SSeg_hexnum : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BTN_2_Count : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal BTN_2_D_STATE : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Load_Store_Unit_reg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal arith : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BTN_0_D_STATE : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BTN_0_Count : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal BTN_3_Count : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal BTN_3_D_STATE : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BTN_1_D_STATE : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal SSeg_pos : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal BTN_1_Count : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal BTN_1_Mcount_Count_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal BTN_0_Mcount_Count_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal SSeg_Mcount_count240hz_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal BTN_2_Mcount_Count_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal BTN_3_Mcount_Count_cy : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal SSeg_AN_OUT : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BTN_1_Mcount_Count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Arith_Unit_Maddsub_arith_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BTN_0_Mcount_Count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SSeg_Mcount_count240hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BTN_2_Mcount_Count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BTN_3_Mcount_Count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SSeg_count240hz_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal SSeg_count240hz_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal SSeg_hexnum_mux0001 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  SSeg_count240hz_15_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_15,
      O => SSeg_count240hz_15_DXMUX_2085
    );
  SSeg_count240hz_15_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_14,
      O => SSeg_count240hz_15_DYMUX_2072
    );
  SSeg_count240hz_15_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_15_CLKINV_2062
    );
  SSeg_Mcount_count240hz_eqn_141 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X32Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => SSeg_Result(14),
      O => SSeg_Mcount_count240hz_eqn_14
    );
  SSeg_count240hz_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_16,
      O => SSeg_count240hz_16_DYMUX_2103
    );
  SSeg_count240hz_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_16_CLKINV_2093
    );
  SSeg_Mcount_count240hz_eqn_161 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X35Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(16),
      ADR2 => VCC,
      ADR3 => SSeg_count240hz_cmp_eq0000,
      O => SSeg_Mcount_count240hz_eqn_16
    );
  SSeg_count240hz_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_1,
      O => SSeg_count240hz_1_DXMUX_2137
    );
  SSeg_count240hz_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_0,
      O => SSeg_count240hz_1_DYMUX_2124
    );
  SSeg_count240hz_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_1_CLKINV_2114
    );
  SSeg_Mcount_count240hz_eqn_01 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X35Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(0),
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_0
    );
  SSeg_count240hz_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_3,
      O => SSeg_count240hz_3_DXMUX_2171
    );
  SSeg_count240hz_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_2,
      O => SSeg_count240hz_3_DYMUX_2158
    );
  SSeg_count240hz_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_3_CLKINV_2148
    );
  SSeg_Mcount_count240hz_eqn_21 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X35Y14"
    )
    port map (
      ADR0 => SSeg_Result(2),
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_2
    );
  SSeg_count240hz_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_5,
      O => SSeg_count240hz_5_DXMUX_2205
    );
  SSeg_count240hz_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X34Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_4,
      O => SSeg_count240hz_5_DYMUX_2192
    );
  SSeg_count240hz_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_5_CLKINV_2182
    );
  SSeg_Mcount_count240hz_eqn_41 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X34Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(4),
      ADR2 => VCC,
      ADR3 => SSeg_count240hz_cmp_eq0000,
      O => SSeg_Mcount_count240hz_eqn_4
    );
  SSeg_count240hz_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_7,
      O => SSeg_count240hz_7_DXMUX_2239
    );
  SSeg_count240hz_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X35Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_6,
      O => SSeg_count240hz_7_DYMUX_2226
    );
  SSeg_count240hz_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_7_CLKINV_2216
    );
  SSeg_Mcount_count240hz_eqn_61 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X35Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(6),
      ADR2 => VCC,
      ADR3 => SSeg_count240hz_cmp_eq0000,
      O => SSeg_Mcount_count240hz_eqn_6
    );
  SSeg_count240hz_9_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_9,
      O => SSeg_count240hz_9_DXMUX_2273
    );
  SSeg_count240hz_9_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_8,
      O => SSeg_count240hz_9_DYMUX_2260
    );
  SSeg_count240hz_9_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_9_CLKINV_2250
    );
  SSeg_Mcount_count240hz_eqn_81 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X32Y19"
    )
    port map (
      ADR0 => SSeg_Result(8),
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_8
    );
  N27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => N27,
      O => N27_0
    );
  N27_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => N94,
      O => N94_0
    );
  SSeg_Mmux_hexnum_mux00014312_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"757F",
      LOC => "SLICE_X67Y23"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(2),
      ADR1 => UXCntl_Unit_VALA(0),
      ADR2 => UXCntl_Unit_VALB(0),
      ADR3 => UXCntl_Unit_VALA(1),
      O => N94
    );
  UXCntl_Unit_VALA_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_1_IBUF_1740,
      O => UXCntl_Unit_VALA_1_DXMUX_2313
    );
  UXCntl_Unit_VALA_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_0_IBUF_1741,
      O => UXCntl_Unit_VALA_1_DYMUX_2308
    );
  UXCntl_Unit_VALA_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA_cmp_eq0000_0,
      O => UXCntl_Unit_VALA_1_CLKINVNOT
    );
  UXCntl_Unit_VALA_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_3_IBUF_1743,
      O => UXCntl_Unit_VALA_3_DXMUX_2329
    );
  UXCntl_Unit_VALA_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_2_IBUF_1744,
      O => UXCntl_Unit_VALA_3_DYMUX_2324
    );
  UXCntl_Unit_VALA_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA_cmp_eq0000_0,
      O => UXCntl_Unit_VALA_3_CLKINVNOT
    );
  UXCntl_Unit_VALB_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_1_IBUF_1740,
      O => UXCntl_Unit_VALB_1_DXMUX_2345
    );
  UXCntl_Unit_VALB_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_0_IBUF_1741,
      O => UXCntl_Unit_VALB_1_DYMUX_2340
    );
  UXCntl_Unit_VALB_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB_cmp_eq0000_0,
      O => UXCntl_Unit_VALB_1_CLKINVNOT
    );
  UXCntl_Unit_VALA_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_5_IBUF_1748,
      O => UXCntl_Unit_VALA_5_DXMUX_2361
    );
  UXCntl_Unit_VALA_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_4_IBUF_1749,
      O => UXCntl_Unit_VALA_5_DYMUX_2356
    );
  UXCntl_Unit_VALA_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA_cmp_eq0000_0,
      O => UXCntl_Unit_VALA_5_CLKINVNOT
    );
  UXCntl_Unit_VALB_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_3_IBUF_1743,
      O => UXCntl_Unit_VALB_3_DXMUX_2377
    );
  UXCntl_Unit_VALB_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_2_IBUF_1744,
      O => UXCntl_Unit_VALB_3_DYMUX_2372
    );
  UXCntl_Unit_VALB_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X64Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB_cmp_eq0000_0,
      O => UXCntl_Unit_VALB_3_CLKINVNOT
    );
  UXCntl_Unit_VALA_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_7_IBUF_1753,
      O => UXCntl_Unit_VALA_7_DXMUX_2393
    );
  UXCntl_Unit_VALA_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_6_IBUF_1754,
      O => UXCntl_Unit_VALA_7_DYMUX_2388
    );
  UXCntl_Unit_VALA_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA_cmp_eq0000_0,
      O => UXCntl_Unit_VALA_7_CLKINVNOT
    );
  UXCntl_Unit_VALB_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_5_IBUF_1748,
      O => UXCntl_Unit_VALB_5_DXMUX_2409
    );
  UXCntl_Unit_VALB_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_4_IBUF_1749,
      O => UXCntl_Unit_VALB_5_DYMUX_2404
    );
  UXCntl_Unit_VALB_5_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X64Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB_cmp_eq0000_0,
      O => UXCntl_Unit_VALB_5_CLKINVNOT
    );
  UXCntl_Unit_VALB_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_7_IBUF_1753,
      O => UXCntl_Unit_VALB_7_DXMUX_2425
    );
  UXCntl_Unit_VALB_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_6_IBUF_1754,
      O => UXCntl_Unit_VALB_7_DYMUX_2420
    );
  UXCntl_Unit_VALB_7_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB_cmp_eq0000_0,
      O => UXCntl_Unit_VALB_7_CLKINVNOT
    );
  Load_Store_Unit_w_en_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Load_Store_Unit_w_en,
      O => Load_Store_Unit_w_en_0
    );
  Load_Store_Unit_w_en_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_arith_cmp_eq0000,
      O => Arith_Unit_arith_cmp_eq0000_0
    );
  Arith_Unit_arith_cmp_eq00002 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X64Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(0),
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => VCC,
      ADR3 => UXCntl_Unit_OPCODE(1),
      O => Arith_Unit_arith_cmp_eq0000
    );
  SSeg_Mrom_segnum111 : X_LUT4
    generic map(
      INIT => X"CA28",
      LOC => "SLICE_X67Y48"
    )
    port map (
      ADR0 => SSeg_hexnum(2),
      ADR1 => SSeg_hexnum(3),
      ADR2 => SSeg_hexnum(0),
      ADR3 => SSeg_hexnum(1),
      O => SEG_1_OBUF_2467
    );
  BTN_2_OUTPUT_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000,
      O => BTN_2_Count_and0000_0
    );
  BTN_2_Count_and00001 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X64Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_D_STATE(1),
      ADR2 => VCC,
      ADR3 => BTN_2_D_STATE(0),
      O => BTN_2_Count_and0000
    );
  UXCntl_Unit_OPCODE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_1_IBUF_1740,
      O => UXCntl_Unit_OPCODE_1_DXMUX_2513
    );
  UXCntl_Unit_OPCODE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_0_IBUF_1741,
      O => UXCntl_Unit_OPCODE_1_DYMUX_2508
    );
  UXCntl_Unit_OPCODE_1_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X64Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_OPCODE_cmp_eq0000_0,
      O => UXCntl_Unit_OPCODE_1_CLKINVNOT
    );
  UXCntl_Unit_OPCODE_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_3_IBUF_1743,
      O => UXCntl_Unit_OPCODE_3_DXMUX_2529
    );
  UXCntl_Unit_OPCODE_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_2_IBUF_1744,
      O => UXCntl_Unit_OPCODE_3_DYMUX_2524
    );
  UXCntl_Unit_OPCODE_3_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X65Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_OPCODE_cmp_eq0000_0,
      O => UXCntl_Unit_OPCODE_3_CLKINVNOT
    );
  SSeg_Mmux_hexnum_mux00014201_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014201_2554,
      O => SSeg_Mmux_hexnum_mux00014201_0
    );
  SSeg_Mmux_hexnum_mux00014201_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux000126_2547,
      O => SSeg_Mmux_hexnum_mux000126_0
    );
  SSeg_Mmux_hexnum_mux000126 : X_LUT4
    generic map(
      INIT => X"A8A0",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(0),
      ADR1 => N28,
      ADR2 => N21,
      ADR3 => UXCntl_Unit_VALB(0),
      O => SSeg_Mmux_hexnum_mux000126_2547
    );
  SSeg_Mmux_hexnum_mux0001422_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001422_2578,
      O => SSeg_Mmux_hexnum_mux0001422_0
    );
  SSeg_Mmux_hexnum_mux0001422_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux000146_2570,
      O => SSeg_Mmux_hexnum_mux000146_0
    );
  SSeg_Mmux_hexnum_mux000146 : X_LUT4
    generic map(
      INIT => X"A888",
      LOC => "SLICE_X66Y36"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => N21,
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => N28,
      O => SSeg_Mmux_hexnum_mux000146_2570
    );
  SSeg_Mmux_hexnum_mux0001476_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001476_2602,
      O => SSeg_Mmux_hexnum_mux0001476_0
    );
  SSeg_Mmux_hexnum_mux0001476_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux000166_2594,
      O => SSeg_Mmux_hexnum_mux000166_0
    );
  SSeg_Mmux_hexnum_mux000166 : X_LUT4
    generic map(
      INIT => X"E0C0",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(2),
      ADR1 => N21,
      ADR2 => UXCntl_Unit_VALA(2),
      ADR3 => N28,
      O => SSeg_Mmux_hexnum_mux000166_2594
    );
  SSeg_Mmux_hexnum_mux00016157_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016157_2626,
      O => SSeg_Mmux_hexnum_mux00016157_0
    );
  SSeg_Mmux_hexnum_mux00016157_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux000186_2619,
      O => SSeg_Mmux_hexnum_mux000186_0
    );
  SSeg_Mmux_hexnum_mux000186 : X_LUT4
    generic map(
      INIT => X"C8C0",
      LOC => "SLICE_X66Y26"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(3),
      ADR1 => UXCntl_Unit_VALA(3),
      ADR2 => N21,
      ADR3 => N28,
      O => SSeg_Mmux_hexnum_mux000186_2619
    );
  UXCntl_Unit_OPCODE_cmp_eq0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_OPCODE_cmp_eq0000,
      O => UXCntl_Unit_OPCODE_cmp_eq0000_0
    );
  UXCntl_Unit_OPCODE_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X54Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA_cmp_eq0000,
      O => UXCntl_Unit_VALA_cmp_eq0000_0
    );
  UXCntl_Unit_VALA_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0004",
      LOC => "SLICE_X54Y52"
    )
    port map (
      ADR0 => BTN_0_OUTPUT_1789,
      ADR1 => BTN_3_OUTPUT_1790,
      ADR2 => BTN_1_OUTPUT_1792,
      ADR3 => BTN_2_OUTPUT_1791,
      O => UXCntl_Unit_VALA_cmp_eq0000
    );
  SSeg_clk240hz_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X34Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_clk240hz_DYMUX_2660
    );
  SSeg_clk240hz_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_clk240hz_CLKINV_2658
    );
  SSeg_clk240hz_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X34Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000,
      O => SSeg_clk240hz_CEINV_2657
    );
  SSeg_Mmux_hexnum_mux0001222_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001222_2686,
      O => SSeg_Mmux_hexnum_mux0001222_0
    );
  SSeg_Mmux_hexnum_mux0001222_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001219_pack_1,
      O => SSeg_Mmux_hexnum_mux0001219_1796
    );
  SSeg_Mmux_hexnum_mux0001219 : X_LUT4
    generic map(
      INIT => X"2220",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => UXCntl_Unit_VALA(0),
      ADR3 => UXCntl_Unit_VALB(0),
      O => SSeg_Mmux_hexnum_mux0001219_pack_1
    );
  N82_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => N82,
      O => N82_0
    );
  N82_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001417_2702,
      O => SSeg_Mmux_hexnum_mux0001417_0
    );
  SSeg_Mmux_hexnum_mux0001417 : X_LUT4
    generic map(
      INIT => X"4400",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(1),
      ADR1 => UXCntl_Unit_VALA(0),
      ADR2 => VCC,
      ADR3 => N25,
      O => SSeg_Mmux_hexnum_mux0001417_2702
    );
  SSeg_Mmux_hexnum_mux00012111_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012111_2734,
      O => SSeg_Mmux_hexnum_mux00012111_0
    );
  SSeg_Mmux_hexnum_mux00012111_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001285_pack_1,
      O => SSeg_Mmux_hexnum_mux0001285_1805
    );
  SSeg_Mmux_hexnum_mux0001285 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X67Y35"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => N82_0,
      ADR2 => SSeg_Mmux_hexnum_mux0001257,
      ADR3 => SSeg_Mmux_hexnum_mux0001278_0,
      O => SSeg_Mmux_hexnum_mux0001285_pack_1
    );
  SSeg_Mmux_hexnum_mux0001655_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001655_2758,
      O => SSeg_Mmux_hexnum_mux0001655_0
    );
  SSeg_Mmux_hexnum_mux0001655_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001643_pack_1,
      O => SSeg_Mmux_hexnum_mux0001643_1810
    );
  SSeg_Mmux_hexnum_mux0001643 : X_LUT4
    generic map(
      INIT => X"0200",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(0),
      ADR1 => UXCntl_Unit_OPCODE(3),
      ADR2 => N88_0,
      ADR3 => UXCntl_Unit_OPCODE(1),
      O => SSeg_Mmux_hexnum_mux0001643_pack_1
    );
  SSeg_Mmux_hexnum_mux0001845_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001845_2782,
      O => SSeg_Mmux_hexnum_mux0001845_0
    );
  SSeg_Mmux_hexnum_mux0001845_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001834_pack_1,
      O => SSeg_Mmux_hexnum_mux0001834_1814
    );
  SSeg_Mmux_hexnum_mux0001834 : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X67Y26"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux0001828,
      ADR1 => UXCntl_Unit_OPCODE(3),
      ADR2 => UXCntl_Unit_OPCODE(1),
      ADR3 => UXCntl_Unit_OPCODE(0),
      O => SSeg_Mmux_hexnum_mux0001834_pack_1
    );
  SSeg_Mmux_hexnum_mux00014256_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014256_2806,
      O => SSeg_Mmux_hexnum_mux00014256_0
    );
  SSeg_Mmux_hexnum_mux00014256_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001860_2799,
      O => SSeg_Mmux_hexnum_mux0001860_0
    );
  SSeg_Mmux_hexnum_mux0001860 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X66Y20"
    )
    port map (
      ADR0 => N24,
      ADR1 => UXCntl_Unit_VALA(5),
      ADR2 => N22,
      ADR3 => UXCntl_Unit_VALA(6),
      O => SSeg_Mmux_hexnum_mux0001860_2799
    );
  N78_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => N78,
      O => N78_0
    );
  N78_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014272,
      O => SSeg_Mmux_hexnum_mux00014272_0
    );
  SSeg_Mmux_hexnum_mux0001864 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => UXCntl_Unit_VALA(4),
      ADR3 => UXCntl_Unit_VALB(2),
      O => SSeg_Mmux_hexnum_mux00014272
    );
  SSeg_Mmux_hexnum_mux0001878_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001878_2854,
      O => SSeg_Mmux_hexnum_mux0001878_0
    );
  SSeg_Mmux_hexnum_mux0001878_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001866_pack_1,
      O => SSeg_Mmux_hexnum_mux0001866_1823
    );
  SSeg_Mmux_hexnum_mux0001866 : X_LUT4
    generic map(
      INIT => X"FCCC",
      LOC => "SLICE_X66Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Mmux_hexnum_mux00014272_0,
      ADR2 => UXCntl_Unit_VALA(7),
      ADR3 => N27_0,
      O => SSeg_Mmux_hexnum_mux0001866_pack_1
    );
  N80_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => N80,
      O => N80_0
    );
  N80_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012205_2871,
      O => SSeg_Mmux_hexnum_mux00012205_0
    );
  SSeg_Mmux_hexnum_mux00012205 : X_LUT4
    generic map(
      INIT => X"3330",
      LOC => "SLICE_X64Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => UXCntl_Unit_VALA(4),
      ADR3 => UXCntl_Unit_VALB(4),
      O => SSeg_Mmux_hexnum_mux00012205_2871
    );
  SSeg_Mmux_hexnum_mux00012263_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012263_2902,
      O => SSeg_Mmux_hexnum_mux00012263_0
    );
  SSeg_Mmux_hexnum_mux00012263_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012253_pack_1,
      O => SSeg_Mmux_hexnum_mux00012253_1829
    );
  SSeg_Mmux_hexnum_mux00012253 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X64Y29"
    )
    port map (
      ADR0 => N30,
      ADR1 => N26_0,
      ADR2 => arith(4),
      ADR3 => SSeg_Mmux_hexnum_mux00012229_0,
      O => SSeg_Mmux_hexnum_mux00012253_pack_1
    );
  SSeg_Mmux_hexnum_mux00012229_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012229_2926,
      O => SSeg_Mmux_hexnum_mux00012229_0
    );
  SSeg_Mmux_hexnum_mux00012229_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012196_pack_1,
      O => SSeg_Mmux_hexnum_mux00012196_1833
    );
  SSeg_Mmux_hexnum_mux00012196 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X66Y24"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(0),
      ADR1 => UXCntl_Unit_VALA(2),
      ADR2 => N22,
      ADR3 => N27_0,
      O => SSeg_Mmux_hexnum_mux00012196_pack_1
    );
  SSeg_Mmux_hexnum_mux00018143_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018143_2950,
      O => SSeg_Mmux_hexnum_mux00018143_0
    );
  SSeg_Mmux_hexnum_mux00018143_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014224_2943,
      O => SSeg_Mmux_hexnum_mux00014224_0
    );
  SSeg_Mmux_hexnum_mux00014224 : X_LUT4
    generic map(
      INIT => X"6420",
      LOC => "SLICE_X65Y24"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => UXCntl_Unit_VALA(6),
      ADR3 => UXCntl_Unit_VALA(7),
      O => SSeg_Mmux_hexnum_mux00014224_2943
    );
  N62_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N62,
      O => N62_0
    );
  N62_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016107_pack_1,
      O => SSeg_Mmux_hexnum_mux00016107_1838
    );
  SSeg_Mmux_hexnum_mux00016107 : X_LUT4
    generic map(
      INIT => X"AA88",
      LOC => "SLICE_X67Y27"
    )
    port map (
      ADR0 => N23,
      ADR1 => SSeg_Mmux_hexnum_mux0001686,
      ADR2 => VCC,
      ADR3 => SSeg_Mmux_hexnum_mux0001669_0,
      O => SSeg_Mmux_hexnum_mux00016107_pack_1
    );
  BTN_0_Count_and0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000,
      O => BTN_0_Count_and0000_0
    );
  BTN_0_OUTPUT_not00011 : X_LUT4
    generic map(
      INIT => X"8822",
      LOC => "SLICE_X66Y84"
    )
    port map (
      ADR0 => BTN_0_Count(20),
      ADR1 => BTN_0_D_STATE(0),
      ADR2 => VCC,
      ADR3 => BTN_0_D_STATE(1),
      O => BTN_0_OUTPUT_not0001
    );
  SSeg_Mmux_hexnum_mux00018120_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018120_3022,
      O => SSeg_Mmux_hexnum_mux00018120_0
    );
  SSeg_Mmux_hexnum_mux00018120_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016180_3013,
      O => SSeg_Mmux_hexnum_mux00016180_0
    );
  SSeg_Mmux_hexnum_mux00016180 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => N31,
      ADR1 => SSeg_Mmux_hexnum_mux00016175,
      ADR2 => Load_Store_Unit_reg(6),
      ADR3 => SSeg_Mmux_hexnum_mux00016157_0,
      O => SSeg_Mmux_hexnum_mux00016180_3013
    );
  SSeg_Mmux_hexnum_mux00016289_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016289_3046,
      O => SSeg_Mmux_hexnum_mux00016289_0
    );
  SSeg_Mmux_hexnum_mux00016289_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016263_pack_1,
      O => SSeg_Mmux_hexnum_mux00016263_1853
    );
  SSeg_Mmux_hexnum_mux00016263 : X_LUT4
    generic map(
      INIT => X"AAFC",
      LOC => "SLICE_X64Y28"
    )
    port map (
      ADR0 => N68,
      ADR1 => UXCntl_Unit_VALA(6),
      ADR2 => UXCntl_Unit_VALB(6),
      ADR3 => UXCntl_Unit_OPCODE(2),
      O => SSeg_Mmux_hexnum_mux00016263_pack_1
    );
  N26_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => N26,
      O => N26_0
    );
  N26_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018124_3062,
      O => SSeg_Mmux_hexnum_mux00018124_0
    );
  SSeg_Mmux_hexnum_mux00018124 : X_LUT4
    generic map(
      INIT => X"0020",
      LOC => "SLICE_X64Y26"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(1),
      ADR1 => UXCntl_Unit_OPCODE(0),
      ADR2 => UXCntl_Unit_VALB(7),
      ADR3 => UXCntl_Unit_OPCODE(3),
      O => SSeg_Mmux_hexnum_mux00018124_3062
    );
  SSeg_Mmux_hexnum_mux00018252_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018252_3094,
      O => SSeg_Mmux_hexnum_mux00018252_0
    );
  SSeg_Mmux_hexnum_mux00018252_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018240_pack_1,
      O => SSeg_Mmux_hexnum_mux00018240_1857
    );
  SSeg_Mmux_hexnum_mux00018240 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X64Y25"
    )
    port map (
      ADR0 => N80_0,
      ADR1 => UXCntl_Unit_OPCODE(3),
      ADR2 => UXCntl_Unit_OPCODE(0),
      ADR3 => UXCntl_Unit_OPCODE(1),
      O => SSeg_Mmux_hexnum_mux00018240_pack_1
    );
  BTN_3_OUTPUT_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000,
      O => BTN_3_Count_and0000_0
    );
  BTN_3_Count_and00001 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X53Y60"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_3_D_STATE(0),
      ADR3 => BTN_3_D_STATE(1),
      O => BTN_3_Count_and0000
    );
  SSeg_DP_OUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_DP_OUT_BYINV_3125,
      O => SSeg_DP_OUT_DYMUX_3126
    );
  SSeg_DP_OUT_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => SSeg_DP_OUT_BYINV_3125
    );
  SSeg_DP_OUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_DP_OUT_CLKINV_3124
    );
  N88_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => N88,
      O => N88_0
    );
  N88_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => N92_pack_1,
      O => N92
    );
  SSeg_Mmux_hexnum_mux0001643_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F53F",
      LOC => "SLICE_X65Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => UXCntl_Unit_VALA(0),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALB(0),
      O => N92_pack_1
    );
  Load_Store_Unit_reg_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(1),
      O => Load_Store_Unit_reg_1_DXMUX_3169
    );
  Load_Store_Unit_reg_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(0),
      O => Load_Store_Unit_reg_1_DYMUX_3163
    );
  Load_Store_Unit_reg_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Load_Store_Unit_reg_1_CLKINV_3161
    );
  Load_Store_Unit_reg_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => Load_Store_Unit_w_en_0,
      O => Load_Store_Unit_reg_1_CEINV_3160
    );
  Load_Store_Unit_reg_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(3),
      O => Load_Store_Unit_reg_3_DXMUX_3189
    );
  Load_Store_Unit_reg_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(2),
      O => Load_Store_Unit_reg_3_DYMUX_3183
    );
  Load_Store_Unit_reg_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Load_Store_Unit_reg_3_CLKINV_3181
    );
  Load_Store_Unit_reg_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Load_Store_Unit_w_en_0,
      O => Load_Store_Unit_reg_3_CEINV_3180
    );
  Load_Store_Unit_reg_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(5),
      O => Load_Store_Unit_reg_5_DXMUX_3209
    );
  Load_Store_Unit_reg_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(4),
      O => Load_Store_Unit_reg_5_DYMUX_3203
    );
  Load_Store_Unit_reg_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Load_Store_Unit_reg_5_CLKINV_3201
    );
  Load_Store_Unit_reg_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Load_Store_Unit_w_en_0,
      O => Load_Store_Unit_reg_5_CEINV_3200
    );
  Load_Store_Unit_reg_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(7),
      O => Load_Store_Unit_reg_7_DXMUX_3229
    );
  Load_Store_Unit_reg_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(6),
      O => Load_Store_Unit_reg_7_DYMUX_3223
    );
  Load_Store_Unit_reg_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => Load_Store_Unit_reg_7_CLKINV_3221
    );
  Load_Store_Unit_reg_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => Load_Store_Unit_w_en_0,
      O => Load_Store_Unit_reg_7_CEINV_3220
    );
  BTN_0_D_STATE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_D_STATE(0),
      O => BTN_0_D_STATE_1_DXMUX_3246
    );
  BTN_0_D_STATE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_INBUF,
      O => BTN_0_D_STATE_1_DYMUX_3241
    );
  BTN_0_D_STATE_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_D_STATE_1_CLKINV_3239
    );
  SSeg_Mmux_hexnum_mux00014147_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014147_3271,
      O => SSeg_Mmux_hexnum_mux00014147_0
    );
  SSeg_Mmux_hexnum_mux00014147_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => N74_pack_1,
      O => N74
    );
  SSeg_Mmux_hexnum_mux00014147_SW0 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X67Y37"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux000146_0,
      ADR1 => SSeg_Mmux_hexnum_mux00014135_0,
      ADR2 => N31,
      ADR3 => Load_Store_Unit_reg(1),
      O => N74_pack_1
    );
  SSeg_Mmux_hexnum_mux00014346_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014346_3295,
      O => SSeg_Mmux_hexnum_mux00014346_0
    );
  SSeg_Mmux_hexnum_mux00014346_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N76_pack_1,
      O => N76
    );
  SSeg_Mmux_hexnum_mux00014346_SW0 : X_LUT4
    generic map(
      INIT => X"AEAA",
      LOC => "SLICE_X66Y27"
    )
    port map (
      ADR0 => N90_0,
      ADR1 => SSeg_Mmux_hexnum_mux00014224_0,
      ADR2 => UXCntl_Unit_VALB(2),
      ADR3 => N23,
      O => N76_pack_1
    );
  SSeg_Mrom_segnum21 : X_LUT4
    generic map(
      INIT => X"B002",
      LOC => "SLICE_X67Y63"
    )
    port map (
      ADR0 => SSeg_hexnum(1),
      ADR1 => SSeg_hexnum(0),
      ADR2 => SSeg_hexnum(3),
      ADR3 => SSeg_hexnum(2),
      O => SEG_2_OBUF_3312
    );
  SSeg_Mrom_segnum41 : X_LUT4
    generic map(
      INIT => X"0C4E",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => SSeg_hexnum(2),
      ADR1 => SSeg_hexnum(0),
      ADR2 => SSeg_hexnum(3),
      ADR3 => SSeg_hexnum(1),
      O => SEG_4_OBUF_3336
    );
  SSeg_Mrom_segnum61 : X_LUT4
    generic map(
      INIT => X"2019",
      LOC => "SLICE_X66Y63"
    )
    port map (
      ADR0 => SSeg_hexnum(2),
      ADR1 => SSeg_hexnum(3),
      ADR2 => SSeg_hexnum(0),
      ADR3 => SSeg_hexnum(1),
      O => SEG_6_OBUF_3355
    );
  BTN_1_D_STATE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_D_STATE(0),
      O => BTN_1_D_STATE_1_DXMUX_3370
    );
  BTN_1_D_STATE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_INBUF,
      O => BTN_1_D_STATE_1_DYMUX_3365
    );
  BTN_1_D_STATE_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_D_STATE_1_CLKINV_3363
    );
  UXCntl_Unit_VALB_cmp_eq0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X55Y52",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB_cmp_eq0000,
      O => UXCntl_Unit_VALB_cmp_eq0000_0
    );
  UXCntl_Unit_VALB_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X55Y52"
    )
    port map (
      ADR0 => BTN_2_OUTPUT_1791,
      ADR1 => BTN_0_OUTPUT_1789,
      ADR2 => BTN_3_OUTPUT_1790,
      ADR3 => BTN_1_OUTPUT_1792,
      O => UXCntl_Unit_VALB_cmp_eq0000
    );
  BTN_2_D_STATE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_D_STATE(0),
      O => BTN_2_D_STATE_1_DXMUX_3398
    );
  BTN_2_D_STATE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_INBUF,
      O => BTN_2_D_STATE_1_DYMUX_3393
    );
  BTN_2_D_STATE_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_D_STATE_1_CLKINV_3391
    );
  BTN_3_D_STATE_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_D_STATE(0),
      O => BTN_3_D_STATE_1_DXMUX_3414
    );
  BTN_3_D_STATE_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_INBUF,
      O => BTN_3_D_STATE_1_DYMUX_3409
    );
  BTN_3_D_STATE_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y60",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_D_STATE_1_CLKINV_3407
    );
  SSeg_pos_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_pos(0),
      O => SSeg_pos_0_DXMUX_3439
    );
  SSeg_pos_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_pos1,
      O => SSeg_pos_0_DYMUX_3434
    );
  SSeg_pos_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y39",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_pos_0_CLKINV_3424
    );
  SSeg_Mcount_pos_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X67Y39"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_pos(0),
      ADR2 => VCC,
      ADR3 => SSeg_pos(1),
      O => SSeg_Mcount_pos1
    );
  SSeg_Mmux_hexnum_mux00012181_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012181_3464,
      O => SSeg_Mmux_hexnum_mux00012181_0
    );
  SSeg_Mmux_hexnum_mux00012181_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => N31_pack_1,
      O => N31
    );
  ALU_Mux_ALU_OUT_0_101 : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X65Y32"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(1),
      ADR1 => UXCntl_Unit_OPCODE(3),
      ADR2 => UXCntl_Unit_OPCODE(0),
      ADR3 => UXCntl_Unit_OPCODE(2),
      O => N31_pack_1
    );
  BTN_1_OUTPUT_not0001_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000,
      O => BTN_1_Count_and0000_0
    );
  BTN_1_Count_and00001 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X65Y80"
    )
    port map (
      ADR0 => BTN_1_D_STATE(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_1_D_STATE(1),
      O => BTN_1_Count_and0000
    );
  SSeg_Mmux_hexnum_mux00012226_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012226_3512,
      O => SSeg_Mmux_hexnum_mux00012226_0
    );
  SSeg_Mmux_hexnum_mux00012226_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => N25_pack_1,
      O => N25
    );
  ALU_Mux_ALU_OUT_4_121 : X_LUT4
    generic map(
      INIT => X"0A00",
      LOC => "SLICE_X66Y25"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => VCC,
      ADR2 => UXCntl_Unit_VALB(2),
      ADR3 => UXCntl_Unit_OPCODE(2),
      O => N25_pack_1
    );
  SSeg_Mmux_hexnum_mux0001825_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001825_3536,
      O => SSeg_Mmux_hexnum_mux0001825_0
    );
  SSeg_Mmux_hexnum_mux0001825_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => N22_pack_1,
      O => N22
    );
  ALU_Mux_ALU_OUT_5_111 : X_LUT4
    generic map(
      INIT => X"0404",
      LOC => "SLICE_X66Y23"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => UXCntl_Unit_VALB(2),
      ADR3 => VCC,
      O => N22_pack_1
    );
  SSeg_Mmux_hexnum_mux0001669_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001669_3560,
      O => SSeg_Mmux_hexnum_mux0001669_0
    );
  SSeg_Mmux_hexnum_mux0001669_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => N24_pack_1,
      O => N24
    );
  ALU_Mux_ALU_OUT_5_121 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X67Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALB(0),
      O => N24_pack_1
    );
  SSeg_Mmux_hexnum_mux00018187_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018187_3584,
      O => SSeg_Mmux_hexnum_mux00018187_0
    );
  SSeg_Mmux_hexnum_mux00018187_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => N12_pack_2,
      O => N12
    );
  ALU_Mux_ALU_OUT_6_111 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X65Y22"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(2),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => UXCntl_Unit_VALA(0),
      ADR3 => VCC,
      O => N12_pack_2
    );
  SSeg_Mmux_hexnum_mux00014135_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014135_3608,
      O => SSeg_Mmux_hexnum_mux00014135_0
    );
  SSeg_Mmux_hexnum_mux00014135_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => N23_pack_1,
      O => N23
    );
  ALU_Mux_ALU_OUT_0_61 : X_LUT4
    generic map(
      INIT => X"0010",
      LOC => "SLICE_X66Y29"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(0),
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => UXCntl_Unit_OPCODE(3),
      ADR3 => UXCntl_Unit_OPCODE(1),
      O => N23_pack_1
    );
  SSeg_Mmux_hexnum_mux00012151_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012151_3632,
      O => SSeg_Mmux_hexnum_mux00012151_0
    );
  SSeg_Mmux_hexnum_mux00012151_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N28_pack_1,
      O => N28
    );
  ALU_Mux_ALU_OUT_0_81 : X_LUT4
    generic map(
      INIT => X"0022",
      LOC => "SLICE_X64Y27"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(1),
      ADR1 => UXCntl_Unit_OPCODE(0),
      ADR2 => VCC,
      ADR3 => UXCntl_Unit_OPCODE(3),
      O => N28_pack_1
    );
  N90_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => N90,
      O => N90_0
    );
  N90_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => N30_pack_1,
      O => N30
    );
  ALU_Mux_ALU_OUT_0_91 : X_LUT4
    generic map(
      INIT => X"0023",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(0),
      ADR1 => UXCntl_Unit_OPCODE(3),
      ADR2 => UXCntl_Unit_OPCODE(2),
      ADR3 => UXCntl_Unit_OPCODE(1),
      O => N30_pack_1
    );
  SSeg_Mmux_hexnum_mux0001278_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001278_3680,
      O => SSeg_Mmux_hexnum_mux0001278_0
    );
  SSeg_Mmux_hexnum_mux0001278_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => N11_pack_2,
      O => N11
    );
  ALU_Mux_ALU_OUT_4_21 : X_LUT4
    generic map(
      INIT => X"FA0A",
      LOC => "SLICE_X66Y34"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(5),
      ADR1 => VCC,
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALA(7),
      O => N11_pack_2
    );
  BTN_0_OUTPUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_D_STATE(1),
      O => BTN_0_OUTPUT_DYMUX_3690
    );
  BTN_0_OUTPUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_OUTPUT_CLKINV_3688
    );
  BTN_0_OUTPUT_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_OUTPUT_not0001,
      O => BTN_0_OUTPUT_CEINV_3687
    );
  BTN_1_Count_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y70"
    )
    port map (
      O => BTN_1_Count_0_LOGIC_ZERO_3717
    );
  BTN_1_Count_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X67Y70"
    )
    port map (
      O => BTN_1_Count_0_LOGIC_ONE_3740
    );
  BTN_1_Count_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_0_XORF_3741,
      O => BTN_1_Count_0_DXMUX_3743
    );
  BTN_1_Count_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y70"
    )
    port map (
      I0 => BTN_1_Count_0_CYINIT_3739,
      I1 => BTN_1_Mcount_Count_lut(0),
      O => BTN_1_Count_0_XORF_3741
    );
  BTN_1_Count_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y70"
    )
    port map (
      IA => BTN_1_Count_0_LOGIC_ONE_3740,
      IB => BTN_1_Count_0_CYINIT_3739,
      SEL => BTN_1_Count_0_CYSELF_3730,
      O => BTN_1_Mcount_Count_cy(0)
    );
  BTN_1_Count_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_0_BXINV_3728,
      O => BTN_1_Count_0_CYINIT_3739
    );
  BTN_1_Count_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_lut(0),
      O => BTN_1_Count_0_CYSELF_3730
    );
  BTN_1_Count_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => BTN_1_Count_0_BXINV_3728
    );
  BTN_1_Count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_0_XORG_3720,
      O => BTN_1_Count_0_DYMUX_3722
    );
  BTN_1_Count_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y70"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(0),
      I1 => BTN_1_Count_0_G,
      O => BTN_1_Count_0_XORG_3720
    );
  BTN_1_Count_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_0_CYMUXG_3719,
      O => BTN_1_Mcount_Count_cy(1)
    );
  BTN_1_Count_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X67Y70"
    )
    port map (
      IA => BTN_1_Count_0_LOGIC_ZERO_3717,
      IB => BTN_1_Mcount_Count_cy(0),
      SEL => BTN_1_Count_0_CYSELG_3708,
      O => BTN_1_Count_0_CYMUXG_3719
    );
  BTN_1_Count_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_0_G,
      O => BTN_1_Count_0_CYSELG_3708
    );
  BTN_1_Count_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_0_SRINV_3706
    );
  BTN_1_Count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_0_CLKINV_3705
    );
  BTN_1_Count_0_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_0_CEINVNOT
    );
  BTN_1_OUTPUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_D_STATE(1),
      O => BTN_1_OUTPUT_DYMUX_3756
    );
  BTN_1_OUTPUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_OUTPUT_CLKINV_3754
    );
  BTN_1_OUTPUT_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_OUTPUT_not0001,
      O => BTN_1_OUTPUT_CEINV_3753
    );
  BTN_1_Count_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      O => BTN_1_Count_2_LOGIC_ZERO_3783
    );
  BTN_1_Count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_2_XORF_3809,
      O => BTN_1_Count_2_DXMUX_3811
    );
  BTN_1_Count_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      I0 => BTN_1_Count_2_CYINIT_3808,
      I1 => BTN_1_Count_2_F,
      O => BTN_1_Count_2_XORF_3809
    );
  BTN_1_Count_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      IA => BTN_1_Count_2_LOGIC_ZERO_3783,
      IB => BTN_1_Count_2_CYINIT_3808,
      SEL => BTN_1_Count_2_CYSELF_3789,
      O => BTN_1_Mcount_Count_cy(2)
    );
  BTN_1_Count_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      IA => BTN_1_Count_2_LOGIC_ZERO_3783,
      IB => BTN_1_Count_2_LOGIC_ZERO_3783,
      SEL => BTN_1_Count_2_CYSELF_3789,
      O => BTN_1_Count_2_CYMUXF2_3784
    );
  BTN_1_Count_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(1),
      O => BTN_1_Count_2_CYINIT_3808
    );
  BTN_1_Count_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_2_F,
      O => BTN_1_Count_2_CYSELF_3789
    );
  BTN_1_Count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_2_XORG_3791,
      O => BTN_1_Count_2_DYMUX_3793
    );
  BTN_1_Count_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(2),
      I1 => BTN_1_Count_2_G,
      O => BTN_1_Count_2_XORG_3791
    );
  BTN_1_Count_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_2_CYMUXFAST_3788,
      O => BTN_1_Mcount_Count_cy(3)
    );
  BTN_1_Count_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(1),
      O => BTN_1_Count_2_FASTCARRY_3786
    );
  BTN_1_Count_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      I0 => BTN_1_Count_2_CYSELG_3774,
      I1 => BTN_1_Count_2_CYSELF_3789,
      O => BTN_1_Count_2_CYAND_3787
    );
  BTN_1_Count_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      IA => BTN_1_Count_2_CYMUXG2_3785,
      IB => BTN_1_Count_2_FASTCARRY_3786,
      SEL => BTN_1_Count_2_CYAND_3787,
      O => BTN_1_Count_2_CYMUXFAST_3788
    );
  BTN_1_Count_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y71"
    )
    port map (
      IA => BTN_1_Count_2_LOGIC_ZERO_3783,
      IB => BTN_1_Count_2_CYMUXF2_3784,
      SEL => BTN_1_Count_2_CYSELG_3774,
      O => BTN_1_Count_2_CYMUXG2_3785
    );
  BTN_1_Count_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_2_G,
      O => BTN_1_Count_2_CYSELG_3774
    );
  BTN_1_Count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_2_SRINV_3772
    );
  BTN_1_Count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_2_CLKINV_3771
    );
  BTN_1_Count_2_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_2_CEINVNOT
    );
  BTN_2_OUTPUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_D_STATE(1),
      O => BTN_2_OUTPUT_DYMUX_3824
    );
  BTN_2_OUTPUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_OUTPUT_CLKINV_3822
    );
  BTN_2_OUTPUT_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_OUTPUT_not0001,
      O => BTN_2_OUTPUT_CEINV_3821
    );
  BTN_1_Count_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      O => BTN_1_Count_4_LOGIC_ZERO_3851
    );
  BTN_1_Count_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_4_XORF_3877,
      O => BTN_1_Count_4_DXMUX_3879
    );
  BTN_1_Count_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      I0 => BTN_1_Count_4_CYINIT_3876,
      I1 => BTN_1_Count_4_F,
      O => BTN_1_Count_4_XORF_3877
    );
  BTN_1_Count_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      IA => BTN_1_Count_4_LOGIC_ZERO_3851,
      IB => BTN_1_Count_4_CYINIT_3876,
      SEL => BTN_1_Count_4_CYSELF_3857,
      O => BTN_1_Mcount_Count_cy(4)
    );
  BTN_1_Count_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      IA => BTN_1_Count_4_LOGIC_ZERO_3851,
      IB => BTN_1_Count_4_LOGIC_ZERO_3851,
      SEL => BTN_1_Count_4_CYSELF_3857,
      O => BTN_1_Count_4_CYMUXF2_3852
    );
  BTN_1_Count_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(3),
      O => BTN_1_Count_4_CYINIT_3876
    );
  BTN_1_Count_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_4_F,
      O => BTN_1_Count_4_CYSELF_3857
    );
  BTN_1_Count_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_4_XORG_3859,
      O => BTN_1_Count_4_DYMUX_3861
    );
  BTN_1_Count_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(4),
      I1 => BTN_1_Count_4_G,
      O => BTN_1_Count_4_XORG_3859
    );
  BTN_1_Count_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_4_CYMUXFAST_3856,
      O => BTN_1_Mcount_Count_cy(5)
    );
  BTN_1_Count_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(3),
      O => BTN_1_Count_4_FASTCARRY_3854
    );
  BTN_1_Count_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      I0 => BTN_1_Count_4_CYSELG_3842,
      I1 => BTN_1_Count_4_CYSELF_3857,
      O => BTN_1_Count_4_CYAND_3855
    );
  BTN_1_Count_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      IA => BTN_1_Count_4_CYMUXG2_3853,
      IB => BTN_1_Count_4_FASTCARRY_3854,
      SEL => BTN_1_Count_4_CYAND_3855,
      O => BTN_1_Count_4_CYMUXFAST_3856
    );
  BTN_1_Count_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y72"
    )
    port map (
      IA => BTN_1_Count_4_LOGIC_ZERO_3851,
      IB => BTN_1_Count_4_CYMUXF2_3852,
      SEL => BTN_1_Count_4_CYSELG_3842,
      O => BTN_1_Count_4_CYMUXG2_3853
    );
  BTN_1_Count_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_4_G,
      O => BTN_1_Count_4_CYSELG_3842
    );
  BTN_1_Count_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_4_SRINV_3840
    );
  BTN_1_Count_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_4_CLKINV_3839
    );
  BTN_1_Count_4_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_4_CEINVNOT
    );
  BTN_3_OUTPUT_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_D_STATE(1),
      O => BTN_3_OUTPUT_DYMUX_3892
    );
  BTN_3_OUTPUT_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_OUTPUT_CLKINV_3890
    );
  BTN_3_OUTPUT_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X52Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_OUTPUT_not0001,
      O => BTN_3_OUTPUT_CEINV_3889
    );
  BTN_1_Count_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      O => BTN_1_Count_6_LOGIC_ZERO_3919
    );
  BTN_1_Count_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_6_XORF_3945,
      O => BTN_1_Count_6_DXMUX_3947
    );
  BTN_1_Count_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      I0 => BTN_1_Count_6_CYINIT_3944,
      I1 => BTN_1_Count_6_F,
      O => BTN_1_Count_6_XORF_3945
    );
  BTN_1_Count_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      IA => BTN_1_Count_6_LOGIC_ZERO_3919,
      IB => BTN_1_Count_6_CYINIT_3944,
      SEL => BTN_1_Count_6_CYSELF_3925,
      O => BTN_1_Mcount_Count_cy(6)
    );
  BTN_1_Count_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      IA => BTN_1_Count_6_LOGIC_ZERO_3919,
      IB => BTN_1_Count_6_LOGIC_ZERO_3919,
      SEL => BTN_1_Count_6_CYSELF_3925,
      O => BTN_1_Count_6_CYMUXF2_3920
    );
  BTN_1_Count_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(5),
      O => BTN_1_Count_6_CYINIT_3944
    );
  BTN_1_Count_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_6_F,
      O => BTN_1_Count_6_CYSELF_3925
    );
  BTN_1_Count_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_6_XORG_3927,
      O => BTN_1_Count_6_DYMUX_3929
    );
  BTN_1_Count_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(6),
      I1 => BTN_1_Count_6_G,
      O => BTN_1_Count_6_XORG_3927
    );
  BTN_1_Count_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_6_CYMUXFAST_3924,
      O => BTN_1_Mcount_Count_cy(7)
    );
  BTN_1_Count_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(5),
      O => BTN_1_Count_6_FASTCARRY_3922
    );
  BTN_1_Count_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      I0 => BTN_1_Count_6_CYSELG_3910,
      I1 => BTN_1_Count_6_CYSELF_3925,
      O => BTN_1_Count_6_CYAND_3923
    );
  BTN_1_Count_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      IA => BTN_1_Count_6_CYMUXG2_3921,
      IB => BTN_1_Count_6_FASTCARRY_3922,
      SEL => BTN_1_Count_6_CYAND_3923,
      O => BTN_1_Count_6_CYMUXFAST_3924
    );
  BTN_1_Count_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y73"
    )
    port map (
      IA => BTN_1_Count_6_LOGIC_ZERO_3919,
      IB => BTN_1_Count_6_CYMUXF2_3920,
      SEL => BTN_1_Count_6_CYSELG_3910,
      O => BTN_1_Count_6_CYMUXG2_3921
    );
  BTN_1_Count_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_6_G,
      O => BTN_1_Count_6_CYSELG_3910
    );
  BTN_1_Count_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_6_SRINV_3908
    );
  BTN_1_Count_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_6_CLKINV_3907
    );
  BTN_1_Count_6_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_6_CEINVNOT
    );
  BTN_1_Count_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      O => BTN_1_Count_8_LOGIC_ZERO_3975
    );
  BTN_1_Count_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_8_XORF_4001,
      O => BTN_1_Count_8_DXMUX_4003
    );
  BTN_1_Count_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      I0 => BTN_1_Count_8_CYINIT_4000,
      I1 => BTN_1_Count_8_F,
      O => BTN_1_Count_8_XORF_4001
    );
  BTN_1_Count_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      IA => BTN_1_Count_8_LOGIC_ZERO_3975,
      IB => BTN_1_Count_8_CYINIT_4000,
      SEL => BTN_1_Count_8_CYSELF_3981,
      O => BTN_1_Mcount_Count_cy(8)
    );
  BTN_1_Count_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      IA => BTN_1_Count_8_LOGIC_ZERO_3975,
      IB => BTN_1_Count_8_LOGIC_ZERO_3975,
      SEL => BTN_1_Count_8_CYSELF_3981,
      O => BTN_1_Count_8_CYMUXF2_3976
    );
  BTN_1_Count_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(7),
      O => BTN_1_Count_8_CYINIT_4000
    );
  BTN_1_Count_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_8_F,
      O => BTN_1_Count_8_CYSELF_3981
    );
  BTN_1_Count_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_8_XORG_3983,
      O => BTN_1_Count_8_DYMUX_3985
    );
  BTN_1_Count_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(8),
      I1 => BTN_1_Count_8_G,
      O => BTN_1_Count_8_XORG_3983
    );
  BTN_1_Count_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_8_CYMUXFAST_3980,
      O => BTN_1_Mcount_Count_cy(9)
    );
  BTN_1_Count_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(7),
      O => BTN_1_Count_8_FASTCARRY_3978
    );
  BTN_1_Count_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      I0 => BTN_1_Count_8_CYSELG_3966,
      I1 => BTN_1_Count_8_CYSELF_3981,
      O => BTN_1_Count_8_CYAND_3979
    );
  BTN_1_Count_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      IA => BTN_1_Count_8_CYMUXG2_3977,
      IB => BTN_1_Count_8_FASTCARRY_3978,
      SEL => BTN_1_Count_8_CYAND_3979,
      O => BTN_1_Count_8_CYMUXFAST_3980
    );
  BTN_1_Count_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y74"
    )
    port map (
      IA => BTN_1_Count_8_LOGIC_ZERO_3975,
      IB => BTN_1_Count_8_CYMUXF2_3976,
      SEL => BTN_1_Count_8_CYSELG_3966,
      O => BTN_1_Count_8_CYMUXG2_3977
    );
  BTN_1_Count_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_8_G,
      O => BTN_1_Count_8_CYSELG_3966
    );
  BTN_1_Count_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_8_SRINV_3964
    );
  BTN_1_Count_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_8_CLKINV_3963
    );
  BTN_1_Count_8_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_8_CEINVNOT
    );
  BTN_1_Count_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      O => BTN_1_Count_10_LOGIC_ZERO_4031
    );
  BTN_1_Count_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_10_XORF_4057,
      O => BTN_1_Count_10_DXMUX_4059
    );
  BTN_1_Count_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      I0 => BTN_1_Count_10_CYINIT_4056,
      I1 => BTN_1_Count_10_F,
      O => BTN_1_Count_10_XORF_4057
    );
  BTN_1_Count_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      IA => BTN_1_Count_10_LOGIC_ZERO_4031,
      IB => BTN_1_Count_10_CYINIT_4056,
      SEL => BTN_1_Count_10_CYSELF_4037,
      O => BTN_1_Mcount_Count_cy(10)
    );
  BTN_1_Count_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      IA => BTN_1_Count_10_LOGIC_ZERO_4031,
      IB => BTN_1_Count_10_LOGIC_ZERO_4031,
      SEL => BTN_1_Count_10_CYSELF_4037,
      O => BTN_1_Count_10_CYMUXF2_4032
    );
  BTN_1_Count_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(9),
      O => BTN_1_Count_10_CYINIT_4056
    );
  BTN_1_Count_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_10_F,
      O => BTN_1_Count_10_CYSELF_4037
    );
  BTN_1_Count_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_10_XORG_4039,
      O => BTN_1_Count_10_DYMUX_4041
    );
  BTN_1_Count_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(10),
      I1 => BTN_1_Count_10_G,
      O => BTN_1_Count_10_XORG_4039
    );
  BTN_1_Count_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_10_CYMUXFAST_4036,
      O => BTN_1_Mcount_Count_cy(11)
    );
  BTN_1_Count_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(9),
      O => BTN_1_Count_10_FASTCARRY_4034
    );
  BTN_1_Count_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      I0 => BTN_1_Count_10_CYSELG_4022,
      I1 => BTN_1_Count_10_CYSELF_4037,
      O => BTN_1_Count_10_CYAND_4035
    );
  BTN_1_Count_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      IA => BTN_1_Count_10_CYMUXG2_4033,
      IB => BTN_1_Count_10_FASTCARRY_4034,
      SEL => BTN_1_Count_10_CYAND_4035,
      O => BTN_1_Count_10_CYMUXFAST_4036
    );
  BTN_1_Count_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y75"
    )
    port map (
      IA => BTN_1_Count_10_LOGIC_ZERO_4031,
      IB => BTN_1_Count_10_CYMUXF2_4032,
      SEL => BTN_1_Count_10_CYSELG_4022,
      O => BTN_1_Count_10_CYMUXG2_4033
    );
  BTN_1_Count_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_10_G,
      O => BTN_1_Count_10_CYSELG_4022
    );
  BTN_1_Count_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_10_SRINV_4020
    );
  BTN_1_Count_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_10_CLKINV_4019
    );
  BTN_1_Count_10_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_10_CEINVNOT
    );
  BTN_1_Count_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      O => BTN_1_Count_12_LOGIC_ZERO_4087
    );
  BTN_1_Count_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_12_XORF_4113,
      O => BTN_1_Count_12_DXMUX_4115
    );
  BTN_1_Count_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      I0 => BTN_1_Count_12_CYINIT_4112,
      I1 => BTN_1_Count_12_F,
      O => BTN_1_Count_12_XORF_4113
    );
  BTN_1_Count_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      IA => BTN_1_Count_12_LOGIC_ZERO_4087,
      IB => BTN_1_Count_12_CYINIT_4112,
      SEL => BTN_1_Count_12_CYSELF_4093,
      O => BTN_1_Mcount_Count_cy(12)
    );
  BTN_1_Count_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      IA => BTN_1_Count_12_LOGIC_ZERO_4087,
      IB => BTN_1_Count_12_LOGIC_ZERO_4087,
      SEL => BTN_1_Count_12_CYSELF_4093,
      O => BTN_1_Count_12_CYMUXF2_4088
    );
  BTN_1_Count_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(11),
      O => BTN_1_Count_12_CYINIT_4112
    );
  BTN_1_Count_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_12_F,
      O => BTN_1_Count_12_CYSELF_4093
    );
  BTN_1_Count_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_12_XORG_4095,
      O => BTN_1_Count_12_DYMUX_4097
    );
  BTN_1_Count_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(12),
      I1 => BTN_1_Count_12_G,
      O => BTN_1_Count_12_XORG_4095
    );
  BTN_1_Count_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_12_CYMUXFAST_4092,
      O => BTN_1_Mcount_Count_cy(13)
    );
  BTN_1_Count_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(11),
      O => BTN_1_Count_12_FASTCARRY_4090
    );
  BTN_1_Count_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      I0 => BTN_1_Count_12_CYSELG_4078,
      I1 => BTN_1_Count_12_CYSELF_4093,
      O => BTN_1_Count_12_CYAND_4091
    );
  BTN_1_Count_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      IA => BTN_1_Count_12_CYMUXG2_4089,
      IB => BTN_1_Count_12_FASTCARRY_4090,
      SEL => BTN_1_Count_12_CYAND_4091,
      O => BTN_1_Count_12_CYMUXFAST_4092
    );
  BTN_1_Count_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y76"
    )
    port map (
      IA => BTN_1_Count_12_LOGIC_ZERO_4087,
      IB => BTN_1_Count_12_CYMUXF2_4088,
      SEL => BTN_1_Count_12_CYSELG_4078,
      O => BTN_1_Count_12_CYMUXG2_4089
    );
  BTN_1_Count_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_12_G,
      O => BTN_1_Count_12_CYSELG_4078
    );
  BTN_1_Count_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_12_SRINV_4076
    );
  BTN_1_Count_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_12_CLKINV_4075
    );
  BTN_1_Count_12_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_12_CEINVNOT
    );
  BTN_1_Count_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      O => BTN_1_Count_14_LOGIC_ZERO_4143
    );
  BTN_1_Count_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_14_XORF_4169,
      O => BTN_1_Count_14_DXMUX_4171
    );
  BTN_1_Count_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      I0 => BTN_1_Count_14_CYINIT_4168,
      I1 => BTN_1_Count_14_F,
      O => BTN_1_Count_14_XORF_4169
    );
  BTN_1_Count_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      IA => BTN_1_Count_14_LOGIC_ZERO_4143,
      IB => BTN_1_Count_14_CYINIT_4168,
      SEL => BTN_1_Count_14_CYSELF_4149,
      O => BTN_1_Mcount_Count_cy(14)
    );
  BTN_1_Count_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      IA => BTN_1_Count_14_LOGIC_ZERO_4143,
      IB => BTN_1_Count_14_LOGIC_ZERO_4143,
      SEL => BTN_1_Count_14_CYSELF_4149,
      O => BTN_1_Count_14_CYMUXF2_4144
    );
  BTN_1_Count_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(13),
      O => BTN_1_Count_14_CYINIT_4168
    );
  BTN_1_Count_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_14_F,
      O => BTN_1_Count_14_CYSELF_4149
    );
  BTN_1_Count_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_14_XORG_4151,
      O => BTN_1_Count_14_DYMUX_4153
    );
  BTN_1_Count_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(14),
      I1 => BTN_1_Count_14_G,
      O => BTN_1_Count_14_XORG_4151
    );
  BTN_1_Count_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_14_CYMUXFAST_4148,
      O => BTN_1_Mcount_Count_cy(15)
    );
  BTN_1_Count_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(13),
      O => BTN_1_Count_14_FASTCARRY_4146
    );
  BTN_1_Count_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      I0 => BTN_1_Count_14_CYSELG_4134,
      I1 => BTN_1_Count_14_CYSELF_4149,
      O => BTN_1_Count_14_CYAND_4147
    );
  BTN_1_Count_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      IA => BTN_1_Count_14_CYMUXG2_4145,
      IB => BTN_1_Count_14_FASTCARRY_4146,
      SEL => BTN_1_Count_14_CYAND_4147,
      O => BTN_1_Count_14_CYMUXFAST_4148
    );
  BTN_1_Count_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y77"
    )
    port map (
      IA => BTN_1_Count_14_LOGIC_ZERO_4143,
      IB => BTN_1_Count_14_CYMUXF2_4144,
      SEL => BTN_1_Count_14_CYSELG_4134,
      O => BTN_1_Count_14_CYMUXG2_4145
    );
  BTN_1_Count_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_14_G,
      O => BTN_1_Count_14_CYSELG_4134
    );
  BTN_1_Count_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_14_SRINV_4132
    );
  BTN_1_Count_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_14_CLKINV_4131
    );
  BTN_1_Count_14_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_14_CEINVNOT
    );
  BTN_1_Count_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      O => BTN_1_Count_16_LOGIC_ZERO_4199
    );
  BTN_1_Count_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_16_XORF_4225,
      O => BTN_1_Count_16_DXMUX_4227
    );
  BTN_1_Count_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      I0 => BTN_1_Count_16_CYINIT_4224,
      I1 => BTN_1_Count_16_F,
      O => BTN_1_Count_16_XORF_4225
    );
  BTN_1_Count_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      IA => BTN_1_Count_16_LOGIC_ZERO_4199,
      IB => BTN_1_Count_16_CYINIT_4224,
      SEL => BTN_1_Count_16_CYSELF_4205,
      O => BTN_1_Mcount_Count_cy(16)
    );
  BTN_1_Count_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      IA => BTN_1_Count_16_LOGIC_ZERO_4199,
      IB => BTN_1_Count_16_LOGIC_ZERO_4199,
      SEL => BTN_1_Count_16_CYSELF_4205,
      O => BTN_1_Count_16_CYMUXF2_4200
    );
  BTN_1_Count_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(15),
      O => BTN_1_Count_16_CYINIT_4224
    );
  BTN_1_Count_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_16_F,
      O => BTN_1_Count_16_CYSELF_4205
    );
  BTN_1_Count_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_16_XORG_4207,
      O => BTN_1_Count_16_DYMUX_4209
    );
  BTN_1_Count_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(16),
      I1 => BTN_1_Count_16_G,
      O => BTN_1_Count_16_XORG_4207
    );
  BTN_1_Count_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_16_CYMUXFAST_4204,
      O => BTN_1_Mcount_Count_cy(17)
    );
  BTN_1_Count_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(15),
      O => BTN_1_Count_16_FASTCARRY_4202
    );
  BTN_1_Count_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      I0 => BTN_1_Count_16_CYSELG_4190,
      I1 => BTN_1_Count_16_CYSELF_4205,
      O => BTN_1_Count_16_CYAND_4203
    );
  BTN_1_Count_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      IA => BTN_1_Count_16_CYMUXG2_4201,
      IB => BTN_1_Count_16_FASTCARRY_4202,
      SEL => BTN_1_Count_16_CYAND_4203,
      O => BTN_1_Count_16_CYMUXFAST_4204
    );
  BTN_1_Count_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y78"
    )
    port map (
      IA => BTN_1_Count_16_LOGIC_ZERO_4199,
      IB => BTN_1_Count_16_CYMUXF2_4200,
      SEL => BTN_1_Count_16_CYSELG_4190,
      O => BTN_1_Count_16_CYMUXG2_4201
    );
  BTN_1_Count_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_16_G,
      O => BTN_1_Count_16_CYSELG_4190
    );
  BTN_1_Count_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_16_SRINV_4188
    );
  BTN_1_Count_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_16_CLKINV_4187
    );
  BTN_1_Count_16_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y78",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_16_CEINVNOT
    );
  BTN_1_Count_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      O => BTN_1_Count_18_LOGIC_ZERO_4255
    );
  BTN_1_Count_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_18_XORF_4281,
      O => BTN_1_Count_18_DXMUX_4283
    );
  BTN_1_Count_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      I0 => BTN_1_Count_18_CYINIT_4280,
      I1 => BTN_1_Count_18_F,
      O => BTN_1_Count_18_XORF_4281
    );
  BTN_1_Count_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      IA => BTN_1_Count_18_LOGIC_ZERO_4255,
      IB => BTN_1_Count_18_CYINIT_4280,
      SEL => BTN_1_Count_18_CYSELF_4261,
      O => BTN_1_Mcount_Count_cy(18)
    );
  BTN_1_Count_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      IA => BTN_1_Count_18_LOGIC_ZERO_4255,
      IB => BTN_1_Count_18_LOGIC_ZERO_4255,
      SEL => BTN_1_Count_18_CYSELF_4261,
      O => BTN_1_Count_18_CYMUXF2_4256
    );
  BTN_1_Count_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(17),
      O => BTN_1_Count_18_CYINIT_4280
    );
  BTN_1_Count_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_18_F,
      O => BTN_1_Count_18_CYSELF_4261
    );
  BTN_1_Count_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_18_XORG_4263,
      O => BTN_1_Count_18_DYMUX_4265
    );
  BTN_1_Count_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      I0 => BTN_1_Mcount_Count_cy(18),
      I1 => BTN_1_Count_18_G,
      O => BTN_1_Count_18_XORG_4263
    );
  BTN_1_Count_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Mcount_Count_cy(17),
      O => BTN_1_Count_18_FASTCARRY_4258
    );
  BTN_1_Count_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      I0 => BTN_1_Count_18_CYSELG_4246,
      I1 => BTN_1_Count_18_CYSELF_4261,
      O => BTN_1_Count_18_CYAND_4259
    );
  BTN_1_Count_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      IA => BTN_1_Count_18_CYMUXG2_4257,
      IB => BTN_1_Count_18_FASTCARRY_4258,
      SEL => BTN_1_Count_18_CYAND_4259,
      O => BTN_1_Count_18_CYMUXFAST_4260
    );
  BTN_1_Count_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X67Y79"
    )
    port map (
      IA => BTN_1_Count_18_LOGIC_ZERO_4255,
      IB => BTN_1_Count_18_CYMUXF2_4256,
      SEL => BTN_1_Count_18_CYSELG_4246,
      O => BTN_1_Count_18_CYMUXG2_4257
    );
  BTN_1_Count_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_18_G,
      O => BTN_1_Count_18_CYSELG_4246
    );
  BTN_1_Count_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_18_SRINV_4244
    );
  BTN_1_Count_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_18_CLKINV_4243
    );
  BTN_1_Count_18_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_18_CEINVNOT
    );
  BTN_1_Count_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_20_XORF_4308,
      O => BTN_1_Count_20_DXMUX_4310
    );
  BTN_1_Count_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X67Y80"
    )
    port map (
      I0 => BTN_1_Count_20_CYINIT_4307,
      I1 => BTN_1_Count_20_rt_4305,
      O => BTN_1_Count_20_XORF_4308
    );
  BTN_1_Count_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_18_CYMUXFAST_4260,
      O => BTN_1_Count_20_CYINIT_4307
    );
  BTN_1_Count_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count_and0000_0,
      O => BTN_1_Count_20_SRINV_4297
    );
  BTN_1_Count_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_1_Count_20_CLKINV_4296
    );
  BTN_1_Count_20_CEINV : X_INV
    generic map(
      LOC => "SLICE_X67Y80",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_1_Count(20),
      O => BTN_1_Count_20_CEINVNOT
    );
  arith_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_0_XORF_4350,
      O => arith(0)
    );
  arith_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y26"
    )
    port map (
      I0 => arith_0_CYINIT_4349,
      I1 => Arith_Unit_Maddsub_arith_lut(0),
      O => arith_0_XORF_4350
    );
  arith_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y26"
    )
    port map (
      IA => arith_0_CY0F_4348,
      IB => arith_0_CYINIT_4349,
      SEL => arith_0_CYSELF_4341,
      O => Arith_Unit_Maddsub_arith_cy_0_Q
    );
  arith_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_arith_cmp_eq0000_0,
      O => arith_0_CYINIT_4349
    );
  arith_0_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(0),
      O => arith_0_CY0F_4348
    );
  arith_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(0),
      O => arith_0_CYSELF_4341
    );
  arith_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_0_XORG_4337,
      O => arith(1)
    );
  arith_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y26"
    )
    port map (
      I0 => Arith_Unit_Maddsub_arith_cy_0_Q,
      I1 => Arith_Unit_Maddsub_arith_lut(1),
      O => arith_0_XORG_4337
    );
  arith_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_0_CYMUXG_4336,
      O => Arith_Unit_Maddsub_arith_cy_1_Q
    );
  arith_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X65Y26"
    )
    port map (
      IA => arith_0_CY0G_4334,
      IB => Arith_Unit_Maddsub_arith_cy_0_Q,
      SEL => arith_0_CYSELG_4327,
      O => arith_0_CYMUXG_4336
    );
  arith_0_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(1),
      O => arith_0_CY0G_4334
    );
  arith_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(1),
      O => arith_0_CYSELG_4327
    );
  Arith_Unit_Maddsub_arith_lut_1_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X65Y26"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => VCC,
      ADR3 => Arith_Unit_arith_cmp_eq0000_0,
      O => Arith_Unit_Maddsub_arith_lut(1)
    );
  arith_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_2_XORF_4389,
      O => arith(2)
    );
  arith_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      I0 => arith_2_CYINIT_4388,
      I1 => Arith_Unit_Maddsub_arith_lut(2),
      O => arith_2_XORF_4389
    );
  arith_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      IA => arith_2_CY0F_4387,
      IB => arith_2_CYINIT_4388,
      SEL => arith_2_CYSELF_4376,
      O => Arith_Unit_Maddsub_arith_cy_2_Q
    );
  arith_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      IA => arith_2_CY0F_4387,
      IB => arith_2_CY0F_4387,
      SEL => arith_2_CYSELF_4376,
      O => arith_2_CYMUXF2_4371
    );
  arith_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_cy_1_Q,
      O => arith_2_CYINIT_4388
    );
  arith_2_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(2),
      O => arith_2_CY0F_4387
    );
  arith_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(2),
      O => arith_2_CYSELF_4376
    );
  arith_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_2_XORG_4378,
      O => arith(3)
    );
  arith_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      I0 => Arith_Unit_Maddsub_arith_cy_2_Q,
      I1 => Arith_Unit_Maddsub_arith_lut(3),
      O => arith_2_XORG_4378
    );
  arith_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_2_CYMUXFAST_4375,
      O => Arith_Unit_Maddsub_arith_cy_3_Q
    );
  arith_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_cy_1_Q,
      O => arith_2_FASTCARRY_4373
    );
  arith_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      I0 => arith_2_CYSELG_4363,
      I1 => arith_2_CYSELF_4376,
      O => arith_2_CYAND_4374
    );
  arith_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      IA => arith_2_CYMUXG2_4372,
      IB => arith_2_FASTCARRY_4373,
      SEL => arith_2_CYAND_4374,
      O => arith_2_CYMUXFAST_4375
    );
  arith_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y27"
    )
    port map (
      IA => arith_2_CY0G_4370,
      IB => arith_2_CYMUXF2_4371,
      SEL => arith_2_CYSELG_4363,
      O => arith_2_CYMUXG2_4372
    );
  arith_2_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(3),
      O => arith_2_CY0G_4370
    );
  arith_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(3),
      O => arith_2_CYSELG_4363
    );
  Arith_Unit_Maddsub_arith_lut_3_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X65Y27"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(3),
      ADR1 => UXCntl_Unit_VALB(3),
      ADR2 => VCC,
      ADR3 => Arith_Unit_arith_cmp_eq0000_0,
      O => Arith_Unit_Maddsub_arith_lut(3)
    );
  arith_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_4_XORF_4428,
      O => arith(4)
    );
  arith_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      I0 => arith_4_CYINIT_4427,
      I1 => Arith_Unit_Maddsub_arith_lut(4),
      O => arith_4_XORF_4428
    );
  arith_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      IA => arith_4_CY0F_4426,
      IB => arith_4_CYINIT_4427,
      SEL => arith_4_CYSELF_4415,
      O => Arith_Unit_Maddsub_arith_cy_4_Q
    );
  arith_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      IA => arith_4_CY0F_4426,
      IB => arith_4_CY0F_4426,
      SEL => arith_4_CYSELF_4415,
      O => arith_4_CYMUXF2_4410
    );
  arith_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_cy_3_Q,
      O => arith_4_CYINIT_4427
    );
  arith_4_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(4),
      O => arith_4_CY0F_4426
    );
  arith_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(4),
      O => arith_4_CYSELF_4415
    );
  arith_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_4_XORG_4417,
      O => arith(5)
    );
  arith_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      I0 => Arith_Unit_Maddsub_arith_cy_4_Q,
      I1 => Arith_Unit_Maddsub_arith_lut(5),
      O => arith_4_XORG_4417
    );
  arith_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_cy_3_Q,
      O => arith_4_FASTCARRY_4412
    );
  arith_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      I0 => arith_4_CYSELG_4402,
      I1 => arith_4_CYSELF_4415,
      O => arith_4_CYAND_4413
    );
  arith_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      IA => arith_4_CYMUXG2_4411,
      IB => arith_4_FASTCARRY_4412,
      SEL => arith_4_CYAND_4413,
      O => arith_4_CYMUXFAST_4414
    );
  arith_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y28"
    )
    port map (
      IA => arith_4_CY0G_4409,
      IB => arith_4_CYMUXF2_4410,
      SEL => arith_4_CYSELG_4402,
      O => arith_4_CYMUXG2_4411
    );
  arith_4_CY0G : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(5),
      O => arith_4_CY0G_4409
    );
  arith_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(5),
      O => arith_4_CYSELG_4402
    );
  Arith_Unit_Maddsub_arith_lut_5_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X65Y28"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(5),
      ADR1 => UXCntl_Unit_VALA(5),
      ADR2 => Arith_Unit_arith_cmp_eq0000_0,
      ADR3 => VCC,
      O => Arith_Unit_Maddsub_arith_lut(5)
    );
  arith_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_6_XORF_4459,
      O => arith(6)
    );
  arith_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y29"
    )
    port map (
      I0 => arith_6_CYINIT_4458,
      I1 => Arith_Unit_Maddsub_arith_lut(6),
      O => arith_6_XORF_4459
    );
  arith_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y29"
    )
    port map (
      IA => arith_6_CY0F_4457,
      IB => arith_6_CYINIT_4458,
      SEL => arith_6_CYSELF_4450,
      O => Arith_Unit_Maddsub_arith_cy_6_Q
    );
  arith_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_4_CYMUXFAST_4414,
      O => arith_6_CYINIT_4458
    );
  arith_6_CY0F : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALA(6),
      O => arith_6_CY0F_4457
    );
  arith_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Arith_Unit_Maddsub_arith_lut(6),
      O => arith_6_CYSELF_4450
    );
  arith_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => arith_6_XORG_4447,
      O => arith(7)
    );
  arith_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y29"
    )
    port map (
      I0 => Arith_Unit_Maddsub_arith_cy_6_Q,
      I1 => Arith_Unit_Maddsub_arith_lut(7),
      O => arith_6_XORG_4447
    );
  Arith_Unit_Maddsub_arith_lut_7_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X65Y29"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(7),
      ADR1 => UXCntl_Unit_VALB(7),
      ADR2 => Arith_Unit_arith_cmp_eq0000_0,
      ADR3 => VCC,
      O => Arith_Unit_Maddsub_arith_lut(7)
    );
  BTN_0_Count_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y81"
    )
    port map (
      O => BTN_0_Count_0_LOGIC_ZERO_4483
    );
  BTN_0_Count_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X65Y81"
    )
    port map (
      O => BTN_0_Count_0_LOGIC_ONE_4506
    );
  BTN_0_Count_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_0_XORF_4507,
      O => BTN_0_Count_0_DXMUX_4509
    );
  BTN_0_Count_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y81"
    )
    port map (
      I0 => BTN_0_Count_0_CYINIT_4505,
      I1 => BTN_0_Mcount_Count_lut(0),
      O => BTN_0_Count_0_XORF_4507
    );
  BTN_0_Count_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y81"
    )
    port map (
      IA => BTN_0_Count_0_LOGIC_ONE_4506,
      IB => BTN_0_Count_0_CYINIT_4505,
      SEL => BTN_0_Count_0_CYSELF_4496,
      O => BTN_0_Mcount_Count_cy(0)
    );
  BTN_0_Count_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_0_BXINV_4494,
      O => BTN_0_Count_0_CYINIT_4505
    );
  BTN_0_Count_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_lut(0),
      O => BTN_0_Count_0_CYSELF_4496
    );
  BTN_0_Count_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => BTN_0_Count_0_BXINV_4494
    );
  BTN_0_Count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_0_XORG_4486,
      O => BTN_0_Count_0_DYMUX_4488
    );
  BTN_0_Count_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y81"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(0),
      I1 => BTN_0_Count_0_G,
      O => BTN_0_Count_0_XORG_4486
    );
  BTN_0_Count_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_0_CYMUXG_4485,
      O => BTN_0_Mcount_Count_cy(1)
    );
  BTN_0_Count_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X65Y81"
    )
    port map (
      IA => BTN_0_Count_0_LOGIC_ZERO_4483,
      IB => BTN_0_Mcount_Count_cy(0),
      SEL => BTN_0_Count_0_CYSELG_4474,
      O => BTN_0_Count_0_CYMUXG_4485
    );
  BTN_0_Count_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_0_G,
      O => BTN_0_Count_0_CYSELG_4474
    );
  BTN_0_Count_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_0_SRINV_4472
    );
  BTN_0_Count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_0_CLKINV_4471
    );
  BTN_0_Count_0_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_0_CEINVNOT
    );
  BTN_0_Count_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      O => BTN_0_Count_2_LOGIC_ZERO_4537
    );
  BTN_0_Count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_2_XORF_4563,
      O => BTN_0_Count_2_DXMUX_4565
    );
  BTN_0_Count_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      I0 => BTN_0_Count_2_CYINIT_4562,
      I1 => BTN_0_Count_2_F,
      O => BTN_0_Count_2_XORF_4563
    );
  BTN_0_Count_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      IA => BTN_0_Count_2_LOGIC_ZERO_4537,
      IB => BTN_0_Count_2_CYINIT_4562,
      SEL => BTN_0_Count_2_CYSELF_4543,
      O => BTN_0_Mcount_Count_cy(2)
    );
  BTN_0_Count_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      IA => BTN_0_Count_2_LOGIC_ZERO_4537,
      IB => BTN_0_Count_2_LOGIC_ZERO_4537,
      SEL => BTN_0_Count_2_CYSELF_4543,
      O => BTN_0_Count_2_CYMUXF2_4538
    );
  BTN_0_Count_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(1),
      O => BTN_0_Count_2_CYINIT_4562
    );
  BTN_0_Count_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_2_F,
      O => BTN_0_Count_2_CYSELF_4543
    );
  BTN_0_Count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_2_XORG_4545,
      O => BTN_0_Count_2_DYMUX_4547
    );
  BTN_0_Count_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(2),
      I1 => BTN_0_Count_2_G,
      O => BTN_0_Count_2_XORG_4545
    );
  BTN_0_Count_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_2_CYMUXFAST_4542,
      O => BTN_0_Mcount_Count_cy(3)
    );
  BTN_0_Count_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(1),
      O => BTN_0_Count_2_FASTCARRY_4540
    );
  BTN_0_Count_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      I0 => BTN_0_Count_2_CYSELG_4528,
      I1 => BTN_0_Count_2_CYSELF_4543,
      O => BTN_0_Count_2_CYAND_4541
    );
  BTN_0_Count_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      IA => BTN_0_Count_2_CYMUXG2_4539,
      IB => BTN_0_Count_2_FASTCARRY_4540,
      SEL => BTN_0_Count_2_CYAND_4541,
      O => BTN_0_Count_2_CYMUXFAST_4542
    );
  BTN_0_Count_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y82"
    )
    port map (
      IA => BTN_0_Count_2_LOGIC_ZERO_4537,
      IB => BTN_0_Count_2_CYMUXF2_4538,
      SEL => BTN_0_Count_2_CYSELG_4528,
      O => BTN_0_Count_2_CYMUXG2_4539
    );
  BTN_0_Count_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_2_G,
      O => BTN_0_Count_2_CYSELG_4528
    );
  BTN_0_Count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_2_SRINV_4526
    );
  BTN_0_Count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_2_CLKINV_4525
    );
  BTN_0_Count_2_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y82",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_2_CEINVNOT
    );
  BTN_0_Count_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      O => BTN_0_Count_4_LOGIC_ZERO_4593
    );
  BTN_0_Count_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_4_XORF_4619,
      O => BTN_0_Count_4_DXMUX_4621
    );
  BTN_0_Count_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      I0 => BTN_0_Count_4_CYINIT_4618,
      I1 => BTN_0_Count_4_F,
      O => BTN_0_Count_4_XORF_4619
    );
  BTN_0_Count_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      IA => BTN_0_Count_4_LOGIC_ZERO_4593,
      IB => BTN_0_Count_4_CYINIT_4618,
      SEL => BTN_0_Count_4_CYSELF_4599,
      O => BTN_0_Mcount_Count_cy(4)
    );
  BTN_0_Count_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      IA => BTN_0_Count_4_LOGIC_ZERO_4593,
      IB => BTN_0_Count_4_LOGIC_ZERO_4593,
      SEL => BTN_0_Count_4_CYSELF_4599,
      O => BTN_0_Count_4_CYMUXF2_4594
    );
  BTN_0_Count_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(3),
      O => BTN_0_Count_4_CYINIT_4618
    );
  BTN_0_Count_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_4_F,
      O => BTN_0_Count_4_CYSELF_4599
    );
  BTN_0_Count_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_4_XORG_4601,
      O => BTN_0_Count_4_DYMUX_4603
    );
  BTN_0_Count_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(4),
      I1 => BTN_0_Count_4_G,
      O => BTN_0_Count_4_XORG_4601
    );
  BTN_0_Count_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_4_CYMUXFAST_4598,
      O => BTN_0_Mcount_Count_cy(5)
    );
  BTN_0_Count_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(3),
      O => BTN_0_Count_4_FASTCARRY_4596
    );
  BTN_0_Count_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      I0 => BTN_0_Count_4_CYSELG_4584,
      I1 => BTN_0_Count_4_CYSELF_4599,
      O => BTN_0_Count_4_CYAND_4597
    );
  BTN_0_Count_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      IA => BTN_0_Count_4_CYMUXG2_4595,
      IB => BTN_0_Count_4_FASTCARRY_4596,
      SEL => BTN_0_Count_4_CYAND_4597,
      O => BTN_0_Count_4_CYMUXFAST_4598
    );
  BTN_0_Count_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y83"
    )
    port map (
      IA => BTN_0_Count_4_LOGIC_ZERO_4593,
      IB => BTN_0_Count_4_CYMUXF2_4594,
      SEL => BTN_0_Count_4_CYSELG_4584,
      O => BTN_0_Count_4_CYMUXG2_4595
    );
  BTN_0_Count_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_4_G,
      O => BTN_0_Count_4_CYSELG_4584
    );
  BTN_0_Count_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_4_SRINV_4582
    );
  BTN_0_Count_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_4_CLKINV_4581
    );
  BTN_0_Count_4_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y83",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_4_CEINVNOT
    );
  BTN_0_Count_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      O => BTN_0_Count_6_LOGIC_ZERO_4649
    );
  BTN_0_Count_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_6_XORF_4675,
      O => BTN_0_Count_6_DXMUX_4677
    );
  BTN_0_Count_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      I0 => BTN_0_Count_6_CYINIT_4674,
      I1 => BTN_0_Count_6_F,
      O => BTN_0_Count_6_XORF_4675
    );
  BTN_0_Count_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      IA => BTN_0_Count_6_LOGIC_ZERO_4649,
      IB => BTN_0_Count_6_CYINIT_4674,
      SEL => BTN_0_Count_6_CYSELF_4655,
      O => BTN_0_Mcount_Count_cy(6)
    );
  BTN_0_Count_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      IA => BTN_0_Count_6_LOGIC_ZERO_4649,
      IB => BTN_0_Count_6_LOGIC_ZERO_4649,
      SEL => BTN_0_Count_6_CYSELF_4655,
      O => BTN_0_Count_6_CYMUXF2_4650
    );
  BTN_0_Count_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(5),
      O => BTN_0_Count_6_CYINIT_4674
    );
  BTN_0_Count_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_6_F,
      O => BTN_0_Count_6_CYSELF_4655
    );
  BTN_0_Count_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_6_XORG_4657,
      O => BTN_0_Count_6_DYMUX_4659
    );
  BTN_0_Count_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(6),
      I1 => BTN_0_Count_6_G,
      O => BTN_0_Count_6_XORG_4657
    );
  BTN_0_Count_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_6_CYMUXFAST_4654,
      O => BTN_0_Mcount_Count_cy(7)
    );
  BTN_0_Count_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(5),
      O => BTN_0_Count_6_FASTCARRY_4652
    );
  BTN_0_Count_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      I0 => BTN_0_Count_6_CYSELG_4640,
      I1 => BTN_0_Count_6_CYSELF_4655,
      O => BTN_0_Count_6_CYAND_4653
    );
  BTN_0_Count_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      IA => BTN_0_Count_6_CYMUXG2_4651,
      IB => BTN_0_Count_6_FASTCARRY_4652,
      SEL => BTN_0_Count_6_CYAND_4653,
      O => BTN_0_Count_6_CYMUXFAST_4654
    );
  BTN_0_Count_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y84"
    )
    port map (
      IA => BTN_0_Count_6_LOGIC_ZERO_4649,
      IB => BTN_0_Count_6_CYMUXF2_4650,
      SEL => BTN_0_Count_6_CYSELG_4640,
      O => BTN_0_Count_6_CYMUXG2_4651
    );
  BTN_0_Count_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_6_G,
      O => BTN_0_Count_6_CYSELG_4640
    );
  BTN_0_Count_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_6_SRINV_4638
    );
  BTN_0_Count_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_6_CLKINV_4637
    );
  BTN_0_Count_6_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y84",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_6_CEINVNOT
    );
  BTN_0_Count_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      O => BTN_0_Count_8_LOGIC_ZERO_4705
    );
  BTN_0_Count_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_8_XORF_4731,
      O => BTN_0_Count_8_DXMUX_4733
    );
  BTN_0_Count_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      I0 => BTN_0_Count_8_CYINIT_4730,
      I1 => BTN_0_Count_8_F,
      O => BTN_0_Count_8_XORF_4731
    );
  BTN_0_Count_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      IA => BTN_0_Count_8_LOGIC_ZERO_4705,
      IB => BTN_0_Count_8_CYINIT_4730,
      SEL => BTN_0_Count_8_CYSELF_4711,
      O => BTN_0_Mcount_Count_cy(8)
    );
  BTN_0_Count_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      IA => BTN_0_Count_8_LOGIC_ZERO_4705,
      IB => BTN_0_Count_8_LOGIC_ZERO_4705,
      SEL => BTN_0_Count_8_CYSELF_4711,
      O => BTN_0_Count_8_CYMUXF2_4706
    );
  BTN_0_Count_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(7),
      O => BTN_0_Count_8_CYINIT_4730
    );
  BTN_0_Count_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_8_F,
      O => BTN_0_Count_8_CYSELF_4711
    );
  BTN_0_Count_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_8_XORG_4713,
      O => BTN_0_Count_8_DYMUX_4715
    );
  BTN_0_Count_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(8),
      I1 => BTN_0_Count_8_G,
      O => BTN_0_Count_8_XORG_4713
    );
  BTN_0_Count_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_8_CYMUXFAST_4710,
      O => BTN_0_Mcount_Count_cy(9)
    );
  BTN_0_Count_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(7),
      O => BTN_0_Count_8_FASTCARRY_4708
    );
  BTN_0_Count_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      I0 => BTN_0_Count_8_CYSELG_4696,
      I1 => BTN_0_Count_8_CYSELF_4711,
      O => BTN_0_Count_8_CYAND_4709
    );
  BTN_0_Count_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      IA => BTN_0_Count_8_CYMUXG2_4707,
      IB => BTN_0_Count_8_FASTCARRY_4708,
      SEL => BTN_0_Count_8_CYAND_4709,
      O => BTN_0_Count_8_CYMUXFAST_4710
    );
  BTN_0_Count_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y85"
    )
    port map (
      IA => BTN_0_Count_8_LOGIC_ZERO_4705,
      IB => BTN_0_Count_8_CYMUXF2_4706,
      SEL => BTN_0_Count_8_CYSELG_4696,
      O => BTN_0_Count_8_CYMUXG2_4707
    );
  BTN_0_Count_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_8_G,
      O => BTN_0_Count_8_CYSELG_4696
    );
  BTN_0_Count_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_8_SRINV_4694
    );
  BTN_0_Count_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_8_CLKINV_4693
    );
  BTN_0_Count_8_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y85",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_8_CEINVNOT
    );
  BTN_0_Count_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      O => BTN_0_Count_10_LOGIC_ZERO_4761
    );
  BTN_0_Count_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_10_XORF_4787,
      O => BTN_0_Count_10_DXMUX_4789
    );
  BTN_0_Count_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      I0 => BTN_0_Count_10_CYINIT_4786,
      I1 => BTN_0_Count_10_F,
      O => BTN_0_Count_10_XORF_4787
    );
  BTN_0_Count_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      IA => BTN_0_Count_10_LOGIC_ZERO_4761,
      IB => BTN_0_Count_10_CYINIT_4786,
      SEL => BTN_0_Count_10_CYSELF_4767,
      O => BTN_0_Mcount_Count_cy(10)
    );
  BTN_0_Count_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      IA => BTN_0_Count_10_LOGIC_ZERO_4761,
      IB => BTN_0_Count_10_LOGIC_ZERO_4761,
      SEL => BTN_0_Count_10_CYSELF_4767,
      O => BTN_0_Count_10_CYMUXF2_4762
    );
  BTN_0_Count_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(9),
      O => BTN_0_Count_10_CYINIT_4786
    );
  BTN_0_Count_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_10_F,
      O => BTN_0_Count_10_CYSELF_4767
    );
  BTN_0_Count_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_10_XORG_4769,
      O => BTN_0_Count_10_DYMUX_4771
    );
  BTN_0_Count_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(10),
      I1 => BTN_0_Count_10_G,
      O => BTN_0_Count_10_XORG_4769
    );
  BTN_0_Count_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_10_CYMUXFAST_4766,
      O => BTN_0_Mcount_Count_cy(11)
    );
  BTN_0_Count_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(9),
      O => BTN_0_Count_10_FASTCARRY_4764
    );
  BTN_0_Count_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      I0 => BTN_0_Count_10_CYSELG_4752,
      I1 => BTN_0_Count_10_CYSELF_4767,
      O => BTN_0_Count_10_CYAND_4765
    );
  BTN_0_Count_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      IA => BTN_0_Count_10_CYMUXG2_4763,
      IB => BTN_0_Count_10_FASTCARRY_4764,
      SEL => BTN_0_Count_10_CYAND_4765,
      O => BTN_0_Count_10_CYMUXFAST_4766
    );
  BTN_0_Count_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y86"
    )
    port map (
      IA => BTN_0_Count_10_LOGIC_ZERO_4761,
      IB => BTN_0_Count_10_CYMUXF2_4762,
      SEL => BTN_0_Count_10_CYSELG_4752,
      O => BTN_0_Count_10_CYMUXG2_4763
    );
  BTN_0_Count_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_10_G,
      O => BTN_0_Count_10_CYSELG_4752
    );
  BTN_0_Count_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_10_SRINV_4750
    );
  BTN_0_Count_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_10_CLKINV_4749
    );
  BTN_0_Count_10_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y86",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_10_CEINVNOT
    );
  BTN_0_Count_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      O => BTN_0_Count_12_LOGIC_ZERO_4817
    );
  BTN_0_Count_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_12_XORF_4843,
      O => BTN_0_Count_12_DXMUX_4845
    );
  BTN_0_Count_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      I0 => BTN_0_Count_12_CYINIT_4842,
      I1 => BTN_0_Count_12_F,
      O => BTN_0_Count_12_XORF_4843
    );
  BTN_0_Count_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      IA => BTN_0_Count_12_LOGIC_ZERO_4817,
      IB => BTN_0_Count_12_CYINIT_4842,
      SEL => BTN_0_Count_12_CYSELF_4823,
      O => BTN_0_Mcount_Count_cy(12)
    );
  BTN_0_Count_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      IA => BTN_0_Count_12_LOGIC_ZERO_4817,
      IB => BTN_0_Count_12_LOGIC_ZERO_4817,
      SEL => BTN_0_Count_12_CYSELF_4823,
      O => BTN_0_Count_12_CYMUXF2_4818
    );
  BTN_0_Count_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(11),
      O => BTN_0_Count_12_CYINIT_4842
    );
  BTN_0_Count_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_12_F,
      O => BTN_0_Count_12_CYSELF_4823
    );
  BTN_0_Count_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_12_XORG_4825,
      O => BTN_0_Count_12_DYMUX_4827
    );
  BTN_0_Count_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(12),
      I1 => BTN_0_Count_12_G,
      O => BTN_0_Count_12_XORG_4825
    );
  BTN_0_Count_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_12_CYMUXFAST_4822,
      O => BTN_0_Mcount_Count_cy(13)
    );
  BTN_0_Count_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(11),
      O => BTN_0_Count_12_FASTCARRY_4820
    );
  BTN_0_Count_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      I0 => BTN_0_Count_12_CYSELG_4808,
      I1 => BTN_0_Count_12_CYSELF_4823,
      O => BTN_0_Count_12_CYAND_4821
    );
  BTN_0_Count_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      IA => BTN_0_Count_12_CYMUXG2_4819,
      IB => BTN_0_Count_12_FASTCARRY_4820,
      SEL => BTN_0_Count_12_CYAND_4821,
      O => BTN_0_Count_12_CYMUXFAST_4822
    );
  BTN_0_Count_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y87"
    )
    port map (
      IA => BTN_0_Count_12_LOGIC_ZERO_4817,
      IB => BTN_0_Count_12_CYMUXF2_4818,
      SEL => BTN_0_Count_12_CYSELG_4808,
      O => BTN_0_Count_12_CYMUXG2_4819
    );
  BTN_0_Count_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_12_G,
      O => BTN_0_Count_12_CYSELG_4808
    );
  BTN_0_Count_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_12_SRINV_4806
    );
  BTN_0_Count_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_12_CLKINV_4805
    );
  BTN_0_Count_12_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y87",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_12_CEINVNOT
    );
  BTN_0_Count_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      O => BTN_0_Count_14_LOGIC_ZERO_4873
    );
  BTN_0_Count_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_14_XORF_4899,
      O => BTN_0_Count_14_DXMUX_4901
    );
  BTN_0_Count_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      I0 => BTN_0_Count_14_CYINIT_4898,
      I1 => BTN_0_Count_14_F,
      O => BTN_0_Count_14_XORF_4899
    );
  BTN_0_Count_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      IA => BTN_0_Count_14_LOGIC_ZERO_4873,
      IB => BTN_0_Count_14_CYINIT_4898,
      SEL => BTN_0_Count_14_CYSELF_4879,
      O => BTN_0_Mcount_Count_cy(14)
    );
  BTN_0_Count_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      IA => BTN_0_Count_14_LOGIC_ZERO_4873,
      IB => BTN_0_Count_14_LOGIC_ZERO_4873,
      SEL => BTN_0_Count_14_CYSELF_4879,
      O => BTN_0_Count_14_CYMUXF2_4874
    );
  BTN_0_Count_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(13),
      O => BTN_0_Count_14_CYINIT_4898
    );
  BTN_0_Count_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_14_F,
      O => BTN_0_Count_14_CYSELF_4879
    );
  BTN_0_Count_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_14_XORG_4881,
      O => BTN_0_Count_14_DYMUX_4883
    );
  BTN_0_Count_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(14),
      I1 => BTN_0_Count_14_G,
      O => BTN_0_Count_14_XORG_4881
    );
  BTN_0_Count_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_14_CYMUXFAST_4878,
      O => BTN_0_Mcount_Count_cy(15)
    );
  BTN_0_Count_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(13),
      O => BTN_0_Count_14_FASTCARRY_4876
    );
  BTN_0_Count_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      I0 => BTN_0_Count_14_CYSELG_4864,
      I1 => BTN_0_Count_14_CYSELF_4879,
      O => BTN_0_Count_14_CYAND_4877
    );
  BTN_0_Count_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      IA => BTN_0_Count_14_CYMUXG2_4875,
      IB => BTN_0_Count_14_FASTCARRY_4876,
      SEL => BTN_0_Count_14_CYAND_4877,
      O => BTN_0_Count_14_CYMUXFAST_4878
    );
  BTN_0_Count_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y88"
    )
    port map (
      IA => BTN_0_Count_14_LOGIC_ZERO_4873,
      IB => BTN_0_Count_14_CYMUXF2_4874,
      SEL => BTN_0_Count_14_CYSELG_4864,
      O => BTN_0_Count_14_CYMUXG2_4875
    );
  BTN_0_Count_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_14_G,
      O => BTN_0_Count_14_CYSELG_4864
    );
  BTN_0_Count_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_14_SRINV_4862
    );
  BTN_0_Count_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_14_CLKINV_4861
    );
  BTN_0_Count_14_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_14_CEINVNOT
    );
  BTN_0_Count_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      O => BTN_0_Count_16_LOGIC_ZERO_4929
    );
  BTN_0_Count_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_16_XORF_4955,
      O => BTN_0_Count_16_DXMUX_4957
    );
  BTN_0_Count_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      I0 => BTN_0_Count_16_CYINIT_4954,
      I1 => BTN_0_Count_16_F,
      O => BTN_0_Count_16_XORF_4955
    );
  BTN_0_Count_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      IA => BTN_0_Count_16_LOGIC_ZERO_4929,
      IB => BTN_0_Count_16_CYINIT_4954,
      SEL => BTN_0_Count_16_CYSELF_4935,
      O => BTN_0_Mcount_Count_cy(16)
    );
  BTN_0_Count_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      IA => BTN_0_Count_16_LOGIC_ZERO_4929,
      IB => BTN_0_Count_16_LOGIC_ZERO_4929,
      SEL => BTN_0_Count_16_CYSELF_4935,
      O => BTN_0_Count_16_CYMUXF2_4930
    );
  BTN_0_Count_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(15),
      O => BTN_0_Count_16_CYINIT_4954
    );
  BTN_0_Count_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_16_F,
      O => BTN_0_Count_16_CYSELF_4935
    );
  BTN_0_Count_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_16_XORG_4937,
      O => BTN_0_Count_16_DYMUX_4939
    );
  BTN_0_Count_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(16),
      I1 => BTN_0_Count_16_G,
      O => BTN_0_Count_16_XORG_4937
    );
  BTN_0_Count_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_16_CYMUXFAST_4934,
      O => BTN_0_Mcount_Count_cy(17)
    );
  BTN_0_Count_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(15),
      O => BTN_0_Count_16_FASTCARRY_4932
    );
  BTN_0_Count_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      I0 => BTN_0_Count_16_CYSELG_4920,
      I1 => BTN_0_Count_16_CYSELF_4935,
      O => BTN_0_Count_16_CYAND_4933
    );
  BTN_0_Count_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      IA => BTN_0_Count_16_CYMUXG2_4931,
      IB => BTN_0_Count_16_FASTCARRY_4932,
      SEL => BTN_0_Count_16_CYAND_4933,
      O => BTN_0_Count_16_CYMUXFAST_4934
    );
  BTN_0_Count_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y89"
    )
    port map (
      IA => BTN_0_Count_16_LOGIC_ZERO_4929,
      IB => BTN_0_Count_16_CYMUXF2_4930,
      SEL => BTN_0_Count_16_CYSELG_4920,
      O => BTN_0_Count_16_CYMUXG2_4931
    );
  BTN_0_Count_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_16_G,
      O => BTN_0_Count_16_CYSELG_4920
    );
  BTN_0_Count_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_16_SRINV_4918
    );
  BTN_0_Count_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_16_CLKINV_4917
    );
  BTN_0_Count_16_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y89",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_16_CEINVNOT
    );
  BTN_0_Count_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      O => BTN_0_Count_18_LOGIC_ZERO_4985
    );
  BTN_0_Count_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_18_XORF_5011,
      O => BTN_0_Count_18_DXMUX_5013
    );
  BTN_0_Count_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      I0 => BTN_0_Count_18_CYINIT_5010,
      I1 => BTN_0_Count_18_F,
      O => BTN_0_Count_18_XORF_5011
    );
  BTN_0_Count_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      IA => BTN_0_Count_18_LOGIC_ZERO_4985,
      IB => BTN_0_Count_18_CYINIT_5010,
      SEL => BTN_0_Count_18_CYSELF_4991,
      O => BTN_0_Mcount_Count_cy(18)
    );
  BTN_0_Count_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      IA => BTN_0_Count_18_LOGIC_ZERO_4985,
      IB => BTN_0_Count_18_LOGIC_ZERO_4985,
      SEL => BTN_0_Count_18_CYSELF_4991,
      O => BTN_0_Count_18_CYMUXF2_4986
    );
  BTN_0_Count_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(17),
      O => BTN_0_Count_18_CYINIT_5010
    );
  BTN_0_Count_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_18_F,
      O => BTN_0_Count_18_CYSELF_4991
    );
  BTN_0_Count_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_18_XORG_4993,
      O => BTN_0_Count_18_DYMUX_4995
    );
  BTN_0_Count_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      I0 => BTN_0_Mcount_Count_cy(18),
      I1 => BTN_0_Count_18_G,
      O => BTN_0_Count_18_XORG_4993
    );
  BTN_0_Count_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Mcount_Count_cy(17),
      O => BTN_0_Count_18_FASTCARRY_4988
    );
  BTN_0_Count_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      I0 => BTN_0_Count_18_CYSELG_4976,
      I1 => BTN_0_Count_18_CYSELF_4991,
      O => BTN_0_Count_18_CYAND_4989
    );
  BTN_0_Count_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      IA => BTN_0_Count_18_CYMUXG2_4987,
      IB => BTN_0_Count_18_FASTCARRY_4988,
      SEL => BTN_0_Count_18_CYAND_4989,
      O => BTN_0_Count_18_CYMUXFAST_4990
    );
  BTN_0_Count_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y90"
    )
    port map (
      IA => BTN_0_Count_18_LOGIC_ZERO_4985,
      IB => BTN_0_Count_18_CYMUXF2_4986,
      SEL => BTN_0_Count_18_CYSELG_4976,
      O => BTN_0_Count_18_CYMUXG2_4987
    );
  BTN_0_Count_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_18_G,
      O => BTN_0_Count_18_CYSELG_4976
    );
  BTN_0_Count_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_18_SRINV_4974
    );
  BTN_0_Count_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_18_CLKINV_4973
    );
  BTN_0_Count_18_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_18_CEINVNOT
    );
  BTN_0_Count_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_20_XORF_5038,
      O => BTN_0_Count_20_DXMUX_5040
    );
  BTN_0_Count_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y91"
    )
    port map (
      I0 => BTN_0_Count_20_CYINIT_5037,
      I1 => BTN_0_Count_20_rt_5035,
      O => BTN_0_Count_20_XORF_5038
    );
  BTN_0_Count_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_18_CYMUXFAST_4990,
      O => BTN_0_Count_20_CYINIT_5037
    );
  BTN_0_Count_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count_and0000_0,
      O => BTN_0_Count_20_SRINV_5027
    );
  BTN_0_Count_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_0_Count_20_CLKINV_5026
    );
  BTN_0_Count_20_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_0_Count(20),
      O => BTN_0_Count_20_CEINVNOT
    );
  SSeg_Result_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y14"
    )
    port map (
      O => SSeg_Result_0_LOGIC_ZERO_5062
    );
  SSeg_Result_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X33Y14"
    )
    port map (
      O => SSeg_Result_0_LOGIC_ONE_5079
    );
  SSeg_Result_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_0_XORF_5080,
      O => SSeg_Result(0)
    );
  SSeg_Result_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y14"
    )
    port map (
      I0 => SSeg_Result_0_CYINIT_5078,
      I1 => SSeg_Mcount_count240hz_lut(0),
      O => SSeg_Result_0_XORF_5080
    );
  SSeg_Result_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y14"
    )
    port map (
      IA => SSeg_Result_0_LOGIC_ONE_5079,
      IB => SSeg_Result_0_CYINIT_5078,
      SEL => SSeg_Result_0_CYSELF_5069,
      O => SSeg_Mcount_count240hz_cy(0)
    );
  SSeg_Result_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_0_BXINV_5067,
      O => SSeg_Result_0_CYINIT_5078
    );
  SSeg_Result_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_lut(0),
      O => SSeg_Result_0_CYSELF_5069
    );
  SSeg_Result_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => SSeg_Result_0_BXINV_5067
    );
  SSeg_Result_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_0_XORG_5065,
      O => SSeg_Result(1)
    );
  SSeg_Result_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y14"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(0),
      I1 => SSeg_Result_0_G,
      O => SSeg_Result_0_XORG_5065
    );
  SSeg_Result_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_0_CYMUXG_5064,
      O => SSeg_Mcount_count240hz_cy(1)
    );
  SSeg_Result_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X33Y14"
    )
    port map (
      IA => SSeg_Result_0_LOGIC_ZERO_5062,
      IB => SSeg_Mcount_count240hz_cy(0),
      SEL => SSeg_Result_0_CYSELG_5053,
      O => SSeg_Result_0_CYMUXG_5064
    );
  SSeg_Result_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y14",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_0_G,
      O => SSeg_Result_0_CYSELG_5053
    );
  SSeg_Result_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      O => SSeg_Result_2_LOGIC_ZERO_5098
    );
  SSeg_Result_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_2_XORF_5118,
      O => SSeg_Result(2)
    );
  SSeg_Result_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      I0 => SSeg_Result_2_CYINIT_5117,
      I1 => SSeg_Result_2_F,
      O => SSeg_Result_2_XORF_5118
    );
  SSeg_Result_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      IA => SSeg_Result_2_LOGIC_ZERO_5098,
      IB => SSeg_Result_2_CYINIT_5117,
      SEL => SSeg_Result_2_CYSELF_5104,
      O => SSeg_Mcount_count240hz_cy(2)
    );
  SSeg_Result_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      IA => SSeg_Result_2_LOGIC_ZERO_5098,
      IB => SSeg_Result_2_LOGIC_ZERO_5098,
      SEL => SSeg_Result_2_CYSELF_5104,
      O => SSeg_Result_2_CYMUXF2_5099
    );
  SSeg_Result_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(1),
      O => SSeg_Result_2_CYINIT_5117
    );
  SSeg_Result_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_2_F,
      O => SSeg_Result_2_CYSELF_5104
    );
  SSeg_Result_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_2_XORG_5106,
      O => SSeg_Result(3)
    );
  SSeg_Result_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(2),
      I1 => SSeg_Result_2_G,
      O => SSeg_Result_2_XORG_5106
    );
  SSeg_Result_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_2_CYMUXFAST_5103,
      O => SSeg_Mcount_count240hz_cy(3)
    );
  SSeg_Result_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(1),
      O => SSeg_Result_2_FASTCARRY_5101
    );
  SSeg_Result_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      I0 => SSeg_Result_2_CYSELG_5089,
      I1 => SSeg_Result_2_CYSELF_5104,
      O => SSeg_Result_2_CYAND_5102
    );
  SSeg_Result_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      IA => SSeg_Result_2_CYMUXG2_5100,
      IB => SSeg_Result_2_FASTCARRY_5101,
      SEL => SSeg_Result_2_CYAND_5102,
      O => SSeg_Result_2_CYMUXFAST_5103
    );
  SSeg_Result_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y15"
    )
    port map (
      IA => SSeg_Result_2_LOGIC_ZERO_5098,
      IB => SSeg_Result_2_CYMUXF2_5099,
      SEL => SSeg_Result_2_CYSELG_5089,
      O => SSeg_Result_2_CYMUXG2_5100
    );
  SSeg_Result_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y15",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_2_G,
      O => SSeg_Result_2_CYSELG_5089
    );
  SSeg_Result_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      O => SSeg_Result_4_LOGIC_ZERO_5136
    );
  SSeg_Result_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_4_XORF_5156,
      O => SSeg_Result(4)
    );
  SSeg_Result_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      I0 => SSeg_Result_4_CYINIT_5155,
      I1 => SSeg_Result_4_F,
      O => SSeg_Result_4_XORF_5156
    );
  SSeg_Result_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      IA => SSeg_Result_4_LOGIC_ZERO_5136,
      IB => SSeg_Result_4_CYINIT_5155,
      SEL => SSeg_Result_4_CYSELF_5142,
      O => SSeg_Mcount_count240hz_cy(4)
    );
  SSeg_Result_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      IA => SSeg_Result_4_LOGIC_ZERO_5136,
      IB => SSeg_Result_4_LOGIC_ZERO_5136,
      SEL => SSeg_Result_4_CYSELF_5142,
      O => SSeg_Result_4_CYMUXF2_5137
    );
  SSeg_Result_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(3),
      O => SSeg_Result_4_CYINIT_5155
    );
  SSeg_Result_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_4_F,
      O => SSeg_Result_4_CYSELF_5142
    );
  SSeg_Result_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_4_XORG_5144,
      O => SSeg_Result(5)
    );
  SSeg_Result_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(4),
      I1 => SSeg_Result_4_G,
      O => SSeg_Result_4_XORG_5144
    );
  SSeg_Result_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_4_CYMUXFAST_5141,
      O => SSeg_Mcount_count240hz_cy(5)
    );
  SSeg_Result_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(3),
      O => SSeg_Result_4_FASTCARRY_5139
    );
  SSeg_Result_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      I0 => SSeg_Result_4_CYSELG_5127,
      I1 => SSeg_Result_4_CYSELF_5142,
      O => SSeg_Result_4_CYAND_5140
    );
  SSeg_Result_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      IA => SSeg_Result_4_CYMUXG2_5138,
      IB => SSeg_Result_4_FASTCARRY_5139,
      SEL => SSeg_Result_4_CYAND_5140,
      O => SSeg_Result_4_CYMUXFAST_5141
    );
  SSeg_Result_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y16"
    )
    port map (
      IA => SSeg_Result_4_LOGIC_ZERO_5136,
      IB => SSeg_Result_4_CYMUXF2_5137,
      SEL => SSeg_Result_4_CYSELG_5127,
      O => SSeg_Result_4_CYMUXG2_5138
    );
  SSeg_Result_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y16",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_4_G,
      O => SSeg_Result_4_CYSELG_5127
    );
  SSeg_Result_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      O => SSeg_Result_6_LOGIC_ZERO_5174
    );
  SSeg_Result_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_6_XORF_5194,
      O => SSeg_Result(6)
    );
  SSeg_Result_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      I0 => SSeg_Result_6_CYINIT_5193,
      I1 => SSeg_Result_6_F,
      O => SSeg_Result_6_XORF_5194
    );
  SSeg_Result_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      IA => SSeg_Result_6_LOGIC_ZERO_5174,
      IB => SSeg_Result_6_CYINIT_5193,
      SEL => SSeg_Result_6_CYSELF_5180,
      O => SSeg_Mcount_count240hz_cy(6)
    );
  SSeg_Result_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      IA => SSeg_Result_6_LOGIC_ZERO_5174,
      IB => SSeg_Result_6_LOGIC_ZERO_5174,
      SEL => SSeg_Result_6_CYSELF_5180,
      O => SSeg_Result_6_CYMUXF2_5175
    );
  SSeg_Result_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(5),
      O => SSeg_Result_6_CYINIT_5193
    );
  SSeg_Result_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_6_F,
      O => SSeg_Result_6_CYSELF_5180
    );
  SSeg_Result_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_6_XORG_5182,
      O => SSeg_Result(7)
    );
  SSeg_Result_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(6),
      I1 => SSeg_Result_6_G,
      O => SSeg_Result_6_XORG_5182
    );
  SSeg_Result_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_6_CYMUXFAST_5179,
      O => SSeg_Mcount_count240hz_cy(7)
    );
  SSeg_Result_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(5),
      O => SSeg_Result_6_FASTCARRY_5177
    );
  SSeg_Result_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      I0 => SSeg_Result_6_CYSELG_5165,
      I1 => SSeg_Result_6_CYSELF_5180,
      O => SSeg_Result_6_CYAND_5178
    );
  SSeg_Result_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      IA => SSeg_Result_6_CYMUXG2_5176,
      IB => SSeg_Result_6_FASTCARRY_5177,
      SEL => SSeg_Result_6_CYAND_5178,
      O => SSeg_Result_6_CYMUXFAST_5179
    );
  SSeg_Result_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y17"
    )
    port map (
      IA => SSeg_Result_6_LOGIC_ZERO_5174,
      IB => SSeg_Result_6_CYMUXF2_5175,
      SEL => SSeg_Result_6_CYSELG_5165,
      O => SSeg_Result_6_CYMUXG2_5176
    );
  SSeg_Result_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y17",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_6_G,
      O => SSeg_Result_6_CYSELG_5165
    );
  SSeg_Result_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      O => SSeg_Result_8_LOGIC_ZERO_5212
    );
  SSeg_Result_8_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_8_XORF_5232,
      O => SSeg_Result(8)
    );
  SSeg_Result_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      I0 => SSeg_Result_8_CYINIT_5231,
      I1 => SSeg_Result_8_F,
      O => SSeg_Result_8_XORF_5232
    );
  SSeg_Result_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      IA => SSeg_Result_8_LOGIC_ZERO_5212,
      IB => SSeg_Result_8_CYINIT_5231,
      SEL => SSeg_Result_8_CYSELF_5218,
      O => SSeg_Mcount_count240hz_cy(8)
    );
  SSeg_Result_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      IA => SSeg_Result_8_LOGIC_ZERO_5212,
      IB => SSeg_Result_8_LOGIC_ZERO_5212,
      SEL => SSeg_Result_8_CYSELF_5218,
      O => SSeg_Result_8_CYMUXF2_5213
    );
  SSeg_Result_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(7),
      O => SSeg_Result_8_CYINIT_5231
    );
  SSeg_Result_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_8_F,
      O => SSeg_Result_8_CYSELF_5218
    );
  SSeg_Result_8_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_8_XORG_5220,
      O => SSeg_Result(9)
    );
  SSeg_Result_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(8),
      I1 => SSeg_Result_8_G,
      O => SSeg_Result_8_XORG_5220
    );
  SSeg_Result_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_8_CYMUXFAST_5217,
      O => SSeg_Mcount_count240hz_cy(9)
    );
  SSeg_Result_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(7),
      O => SSeg_Result_8_FASTCARRY_5215
    );
  SSeg_Result_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      I0 => SSeg_Result_8_CYSELG_5203,
      I1 => SSeg_Result_8_CYSELF_5218,
      O => SSeg_Result_8_CYAND_5216
    );
  SSeg_Result_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      IA => SSeg_Result_8_CYMUXG2_5214,
      IB => SSeg_Result_8_FASTCARRY_5215,
      SEL => SSeg_Result_8_CYAND_5216,
      O => SSeg_Result_8_CYMUXFAST_5217
    );
  SSeg_Result_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y18"
    )
    port map (
      IA => SSeg_Result_8_LOGIC_ZERO_5212,
      IB => SSeg_Result_8_CYMUXF2_5213,
      SEL => SSeg_Result_8_CYSELG_5203,
      O => SSeg_Result_8_CYMUXG2_5214
    );
  SSeg_Result_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_8_G,
      O => SSeg_Result_8_CYSELG_5203
    );
  SSeg_Result_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      O => SSeg_Result_10_LOGIC_ZERO_5250
    );
  SSeg_Result_10_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_10_XORF_5270,
      O => SSeg_Result(10)
    );
  SSeg_Result_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      I0 => SSeg_Result_10_CYINIT_5269,
      I1 => SSeg_Result_10_F,
      O => SSeg_Result_10_XORF_5270
    );
  SSeg_Result_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      IA => SSeg_Result_10_LOGIC_ZERO_5250,
      IB => SSeg_Result_10_CYINIT_5269,
      SEL => SSeg_Result_10_CYSELF_5256,
      O => SSeg_Mcount_count240hz_cy(10)
    );
  SSeg_Result_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      IA => SSeg_Result_10_LOGIC_ZERO_5250,
      IB => SSeg_Result_10_LOGIC_ZERO_5250,
      SEL => SSeg_Result_10_CYSELF_5256,
      O => SSeg_Result_10_CYMUXF2_5251
    );
  SSeg_Result_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(9),
      O => SSeg_Result_10_CYINIT_5269
    );
  SSeg_Result_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_10_F,
      O => SSeg_Result_10_CYSELF_5256
    );
  SSeg_Result_10_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_10_XORG_5258,
      O => SSeg_Result(11)
    );
  SSeg_Result_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(10),
      I1 => SSeg_Result_10_G,
      O => SSeg_Result_10_XORG_5258
    );
  SSeg_Result_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_10_CYMUXFAST_5255,
      O => SSeg_Mcount_count240hz_cy(11)
    );
  SSeg_Result_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(9),
      O => SSeg_Result_10_FASTCARRY_5253
    );
  SSeg_Result_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      I0 => SSeg_Result_10_CYSELG_5241,
      I1 => SSeg_Result_10_CYSELF_5256,
      O => SSeg_Result_10_CYAND_5254
    );
  SSeg_Result_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      IA => SSeg_Result_10_CYMUXG2_5252,
      IB => SSeg_Result_10_FASTCARRY_5253,
      SEL => SSeg_Result_10_CYAND_5254,
      O => SSeg_Result_10_CYMUXFAST_5255
    );
  SSeg_Result_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y19"
    )
    port map (
      IA => SSeg_Result_10_LOGIC_ZERO_5250,
      IB => SSeg_Result_10_CYMUXF2_5251,
      SEL => SSeg_Result_10_CYSELG_5241,
      O => SSeg_Result_10_CYMUXG2_5252
    );
  SSeg_Result_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_10_G,
      O => SSeg_Result_10_CYSELG_5241
    );
  SSeg_Result_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      O => SSeg_Result_12_LOGIC_ZERO_5288
    );
  SSeg_Result_12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_12_XORF_5308,
      O => SSeg_Result(12)
    );
  SSeg_Result_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      I0 => SSeg_Result_12_CYINIT_5307,
      I1 => SSeg_Result_12_F,
      O => SSeg_Result_12_XORF_5308
    );
  SSeg_Result_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      IA => SSeg_Result_12_LOGIC_ZERO_5288,
      IB => SSeg_Result_12_CYINIT_5307,
      SEL => SSeg_Result_12_CYSELF_5294,
      O => SSeg_Mcount_count240hz_cy(12)
    );
  SSeg_Result_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      IA => SSeg_Result_12_LOGIC_ZERO_5288,
      IB => SSeg_Result_12_LOGIC_ZERO_5288,
      SEL => SSeg_Result_12_CYSELF_5294,
      O => SSeg_Result_12_CYMUXF2_5289
    );
  SSeg_Result_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(11),
      O => SSeg_Result_12_CYINIT_5307
    );
  SSeg_Result_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_12_F,
      O => SSeg_Result_12_CYSELF_5294
    );
  SSeg_Result_12_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_12_XORG_5296,
      O => SSeg_Result(13)
    );
  SSeg_Result_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(12),
      I1 => SSeg_Result_12_G,
      O => SSeg_Result_12_XORG_5296
    );
  SSeg_Result_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_12_CYMUXFAST_5293,
      O => SSeg_Mcount_count240hz_cy(13)
    );
  SSeg_Result_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(11),
      O => SSeg_Result_12_FASTCARRY_5291
    );
  SSeg_Result_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      I0 => SSeg_Result_12_CYSELG_5279,
      I1 => SSeg_Result_12_CYSELF_5294,
      O => SSeg_Result_12_CYAND_5292
    );
  SSeg_Result_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      IA => SSeg_Result_12_CYMUXG2_5290,
      IB => SSeg_Result_12_FASTCARRY_5291,
      SEL => SSeg_Result_12_CYAND_5292,
      O => SSeg_Result_12_CYMUXFAST_5293
    );
  SSeg_Result_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y20"
    )
    port map (
      IA => SSeg_Result_12_LOGIC_ZERO_5288,
      IB => SSeg_Result_12_CYMUXF2_5289,
      SEL => SSeg_Result_12_CYSELG_5279,
      O => SSeg_Result_12_CYMUXG2_5290
    );
  SSeg_Result_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_12_G,
      O => SSeg_Result_12_CYSELG_5279
    );
  SSeg_Result_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      O => SSeg_Result_14_LOGIC_ZERO_5326
    );
  SSeg_Result_14_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_14_XORF_5346,
      O => SSeg_Result(14)
    );
  SSeg_Result_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      I0 => SSeg_Result_14_CYINIT_5345,
      I1 => SSeg_Result_14_F,
      O => SSeg_Result_14_XORF_5346
    );
  SSeg_Result_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      IA => SSeg_Result_14_LOGIC_ZERO_5326,
      IB => SSeg_Result_14_CYINIT_5345,
      SEL => SSeg_Result_14_CYSELF_5332,
      O => SSeg_Mcount_count240hz_cy(14)
    );
  SSeg_Result_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      IA => SSeg_Result_14_LOGIC_ZERO_5326,
      IB => SSeg_Result_14_LOGIC_ZERO_5326,
      SEL => SSeg_Result_14_CYSELF_5332,
      O => SSeg_Result_14_CYMUXF2_5327
    );
  SSeg_Result_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(13),
      O => SSeg_Result_14_CYINIT_5345
    );
  SSeg_Result_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X33Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_14_F,
      O => SSeg_Result_14_CYSELF_5332
    );
  SSeg_Result_14_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_14_XORG_5334,
      O => SSeg_Result(15)
    );
  SSeg_Result_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      I0 => SSeg_Mcount_count240hz_cy(14),
      I1 => SSeg_Result_14_G,
      O => SSeg_Result_14_XORG_5334
    );
  SSeg_Result_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X33Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_cy(13),
      O => SSeg_Result_14_FASTCARRY_5329
    );
  SSeg_Result_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      I0 => SSeg_Result_14_CYSELG_5317,
      I1 => SSeg_Result_14_CYSELF_5332,
      O => SSeg_Result_14_CYAND_5330
    );
  SSeg_Result_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      IA => SSeg_Result_14_CYMUXG2_5328,
      IB => SSeg_Result_14_FASTCARRY_5329,
      SEL => SSeg_Result_14_CYAND_5330,
      O => SSeg_Result_14_CYMUXFAST_5331
    );
  SSeg_Result_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X33Y21"
    )
    port map (
      IA => SSeg_Result_14_LOGIC_ZERO_5326,
      IB => SSeg_Result_14_CYMUXF2_5327,
      SEL => SSeg_Result_14_CYSELG_5317,
      O => SSeg_Result_14_CYMUXG2_5328
    );
  SSeg_Result_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X33Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_14_G,
      O => SSeg_Result_14_CYSELG_5317
    );
  SSeg_Result_16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X33Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_16_XORF_5361,
      O => SSeg_Result(16)
    );
  SSeg_Result_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X33Y22"
    )
    port map (
      I0 => SSeg_Result_16_CYINIT_5360,
      I1 => SSeg_count240hz_16_rt_5358,
      O => SSeg_Result_16_XORF_5361
    );
  SSeg_Result_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X33Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Result_14_CYMUXFAST_5331,
      O => SSeg_Result_16_CYINIT_5360
    );
  SSeg_count240hz_16_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X33Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz(16),
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_count240hz_16_rt_5358
    );
  BTN_2_Count_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      O => BTN_2_Count_0_LOGIC_ZERO_5385
    );
  BTN_2_Count_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      O => BTN_2_Count_0_LOGIC_ONE_5408
    );
  BTN_2_Count_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_0_XORF_5409,
      O => BTN_2_Count_0_DXMUX_5411
    );
  BTN_2_Count_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      I0 => BTN_2_Count_0_CYINIT_5407,
      I1 => BTN_2_Mcount_Count_lut(0),
      O => BTN_2_Count_0_XORF_5409
    );
  BTN_2_Count_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => BTN_2_Count_0_LOGIC_ONE_5408,
      IB => BTN_2_Count_0_CYINIT_5407,
      SEL => BTN_2_Count_0_CYSELF_5398,
      O => BTN_2_Mcount_Count_cy(0)
    );
  BTN_2_Count_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_0_BXINV_5396,
      O => BTN_2_Count_0_CYINIT_5407
    );
  BTN_2_Count_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_lut(0),
      O => BTN_2_Count_0_CYSELF_5398
    );
  BTN_2_Count_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => BTN_2_Count_0_BXINV_5396
    );
  BTN_2_Count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_0_XORG_5388,
      O => BTN_2_Count_0_DYMUX_5390
    );
  BTN_2_Count_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(0),
      I1 => BTN_2_Count_0_G,
      O => BTN_2_Count_0_XORG_5388
    );
  BTN_2_Count_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_0_CYMUXG_5387,
      O => BTN_2_Mcount_Count_cy(1)
    );
  BTN_2_Count_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X65Y67"
    )
    port map (
      IA => BTN_2_Count_0_LOGIC_ZERO_5385,
      IB => BTN_2_Mcount_Count_cy(0),
      SEL => BTN_2_Count_0_CYSELG_5376,
      O => BTN_2_Count_0_CYMUXG_5387
    );
  BTN_2_Count_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_0_G,
      O => BTN_2_Count_0_CYSELG_5376
    );
  BTN_2_Count_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_0_SRINV_5374
    );
  BTN_2_Count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_0_CLKINV_5373
    );
  BTN_2_Count_0_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_0_CEINVNOT
    );
  BTN_2_Count_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      O => BTN_2_Count_2_LOGIC_ZERO_5439
    );
  BTN_2_Count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_2_XORF_5465,
      O => BTN_2_Count_2_DXMUX_5467
    );
  BTN_2_Count_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      I0 => BTN_2_Count_2_CYINIT_5464,
      I1 => BTN_2_Count_2_F,
      O => BTN_2_Count_2_XORF_5465
    );
  BTN_2_Count_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      IA => BTN_2_Count_2_LOGIC_ZERO_5439,
      IB => BTN_2_Count_2_CYINIT_5464,
      SEL => BTN_2_Count_2_CYSELF_5445,
      O => BTN_2_Mcount_Count_cy(2)
    );
  BTN_2_Count_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      IA => BTN_2_Count_2_LOGIC_ZERO_5439,
      IB => BTN_2_Count_2_LOGIC_ZERO_5439,
      SEL => BTN_2_Count_2_CYSELF_5445,
      O => BTN_2_Count_2_CYMUXF2_5440
    );
  BTN_2_Count_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(1),
      O => BTN_2_Count_2_CYINIT_5464
    );
  BTN_2_Count_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_2_F,
      O => BTN_2_Count_2_CYSELF_5445
    );
  BTN_2_Count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_2_XORG_5447,
      O => BTN_2_Count_2_DYMUX_5449
    );
  BTN_2_Count_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(2),
      I1 => BTN_2_Count_2_G,
      O => BTN_2_Count_2_XORG_5447
    );
  BTN_2_Count_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_2_CYMUXFAST_5444,
      O => BTN_2_Mcount_Count_cy(3)
    );
  BTN_2_Count_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(1),
      O => BTN_2_Count_2_FASTCARRY_5442
    );
  BTN_2_Count_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      I0 => BTN_2_Count_2_CYSELG_5430,
      I1 => BTN_2_Count_2_CYSELF_5445,
      O => BTN_2_Count_2_CYAND_5443
    );
  BTN_2_Count_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      IA => BTN_2_Count_2_CYMUXG2_5441,
      IB => BTN_2_Count_2_FASTCARRY_5442,
      SEL => BTN_2_Count_2_CYAND_5443,
      O => BTN_2_Count_2_CYMUXFAST_5444
    );
  BTN_2_Count_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y68"
    )
    port map (
      IA => BTN_2_Count_2_LOGIC_ZERO_5439,
      IB => BTN_2_Count_2_CYMUXF2_5440,
      SEL => BTN_2_Count_2_CYSELG_5430,
      O => BTN_2_Count_2_CYMUXG2_5441
    );
  BTN_2_Count_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_2_G,
      O => BTN_2_Count_2_CYSELG_5430
    );
  BTN_2_Count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_2_SRINV_5428
    );
  BTN_2_Count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_2_CLKINV_5427
    );
  BTN_2_Count_2_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_2_CEINVNOT
    );
  BTN_2_Count_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      O => BTN_2_Count_4_LOGIC_ZERO_5495
    );
  BTN_2_Count_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_4_XORF_5521,
      O => BTN_2_Count_4_DXMUX_5523
    );
  BTN_2_Count_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      I0 => BTN_2_Count_4_CYINIT_5520,
      I1 => BTN_2_Count_4_F,
      O => BTN_2_Count_4_XORF_5521
    );
  BTN_2_Count_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      IA => BTN_2_Count_4_LOGIC_ZERO_5495,
      IB => BTN_2_Count_4_CYINIT_5520,
      SEL => BTN_2_Count_4_CYSELF_5501,
      O => BTN_2_Mcount_Count_cy(4)
    );
  BTN_2_Count_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      IA => BTN_2_Count_4_LOGIC_ZERO_5495,
      IB => BTN_2_Count_4_LOGIC_ZERO_5495,
      SEL => BTN_2_Count_4_CYSELF_5501,
      O => BTN_2_Count_4_CYMUXF2_5496
    );
  BTN_2_Count_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(3),
      O => BTN_2_Count_4_CYINIT_5520
    );
  BTN_2_Count_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_4_F,
      O => BTN_2_Count_4_CYSELF_5501
    );
  BTN_2_Count_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_4_XORG_5503,
      O => BTN_2_Count_4_DYMUX_5505
    );
  BTN_2_Count_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(4),
      I1 => BTN_2_Count_4_G,
      O => BTN_2_Count_4_XORG_5503
    );
  BTN_2_Count_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_4_CYMUXFAST_5500,
      O => BTN_2_Mcount_Count_cy(5)
    );
  BTN_2_Count_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(3),
      O => BTN_2_Count_4_FASTCARRY_5498
    );
  BTN_2_Count_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      I0 => BTN_2_Count_4_CYSELG_5486,
      I1 => BTN_2_Count_4_CYSELF_5501,
      O => BTN_2_Count_4_CYAND_5499
    );
  BTN_2_Count_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      IA => BTN_2_Count_4_CYMUXG2_5497,
      IB => BTN_2_Count_4_FASTCARRY_5498,
      SEL => BTN_2_Count_4_CYAND_5499,
      O => BTN_2_Count_4_CYMUXFAST_5500
    );
  BTN_2_Count_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y69"
    )
    port map (
      IA => BTN_2_Count_4_LOGIC_ZERO_5495,
      IB => BTN_2_Count_4_CYMUXF2_5496,
      SEL => BTN_2_Count_4_CYSELG_5486,
      O => BTN_2_Count_4_CYMUXG2_5497
    );
  BTN_2_Count_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_4_G,
      O => BTN_2_Count_4_CYSELG_5486
    );
  BTN_2_Count_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_4_SRINV_5484
    );
  BTN_2_Count_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_4_CLKINV_5483
    );
  BTN_2_Count_4_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_4_CEINVNOT
    );
  BTN_2_Count_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      O => BTN_2_Count_6_LOGIC_ZERO_5551
    );
  BTN_2_Count_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_6_XORF_5577,
      O => BTN_2_Count_6_DXMUX_5579
    );
  BTN_2_Count_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      I0 => BTN_2_Count_6_CYINIT_5576,
      I1 => BTN_2_Count_6_F,
      O => BTN_2_Count_6_XORF_5577
    );
  BTN_2_Count_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      IA => BTN_2_Count_6_LOGIC_ZERO_5551,
      IB => BTN_2_Count_6_CYINIT_5576,
      SEL => BTN_2_Count_6_CYSELF_5557,
      O => BTN_2_Mcount_Count_cy(6)
    );
  BTN_2_Count_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      IA => BTN_2_Count_6_LOGIC_ZERO_5551,
      IB => BTN_2_Count_6_LOGIC_ZERO_5551,
      SEL => BTN_2_Count_6_CYSELF_5557,
      O => BTN_2_Count_6_CYMUXF2_5552
    );
  BTN_2_Count_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(5),
      O => BTN_2_Count_6_CYINIT_5576
    );
  BTN_2_Count_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_6_F,
      O => BTN_2_Count_6_CYSELF_5557
    );
  BTN_2_Count_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_6_XORG_5559,
      O => BTN_2_Count_6_DYMUX_5561
    );
  BTN_2_Count_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(6),
      I1 => BTN_2_Count_6_G,
      O => BTN_2_Count_6_XORG_5559
    );
  BTN_2_Count_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_6_CYMUXFAST_5556,
      O => BTN_2_Mcount_Count_cy(7)
    );
  BTN_2_Count_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(5),
      O => BTN_2_Count_6_FASTCARRY_5554
    );
  BTN_2_Count_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      I0 => BTN_2_Count_6_CYSELG_5542,
      I1 => BTN_2_Count_6_CYSELF_5557,
      O => BTN_2_Count_6_CYAND_5555
    );
  BTN_2_Count_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      IA => BTN_2_Count_6_CYMUXG2_5553,
      IB => BTN_2_Count_6_FASTCARRY_5554,
      SEL => BTN_2_Count_6_CYAND_5555,
      O => BTN_2_Count_6_CYMUXFAST_5556
    );
  BTN_2_Count_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y70"
    )
    port map (
      IA => BTN_2_Count_6_LOGIC_ZERO_5551,
      IB => BTN_2_Count_6_CYMUXF2_5552,
      SEL => BTN_2_Count_6_CYSELG_5542,
      O => BTN_2_Count_6_CYMUXG2_5553
    );
  BTN_2_Count_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_6_G,
      O => BTN_2_Count_6_CYSELG_5542
    );
  BTN_2_Count_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_6_SRINV_5540
    );
  BTN_2_Count_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_6_CLKINV_5539
    );
  BTN_2_Count_6_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_6_CEINVNOT
    );
  BTN_2_Count_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      O => BTN_2_Count_8_LOGIC_ZERO_5607
    );
  BTN_2_Count_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_8_XORF_5633,
      O => BTN_2_Count_8_DXMUX_5635
    );
  BTN_2_Count_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      I0 => BTN_2_Count_8_CYINIT_5632,
      I1 => BTN_2_Count_8_F,
      O => BTN_2_Count_8_XORF_5633
    );
  BTN_2_Count_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      IA => BTN_2_Count_8_LOGIC_ZERO_5607,
      IB => BTN_2_Count_8_CYINIT_5632,
      SEL => BTN_2_Count_8_CYSELF_5613,
      O => BTN_2_Mcount_Count_cy(8)
    );
  BTN_2_Count_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      IA => BTN_2_Count_8_LOGIC_ZERO_5607,
      IB => BTN_2_Count_8_LOGIC_ZERO_5607,
      SEL => BTN_2_Count_8_CYSELF_5613,
      O => BTN_2_Count_8_CYMUXF2_5608
    );
  BTN_2_Count_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(7),
      O => BTN_2_Count_8_CYINIT_5632
    );
  BTN_2_Count_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_8_F,
      O => BTN_2_Count_8_CYSELF_5613
    );
  BTN_2_Count_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_8_XORG_5615,
      O => BTN_2_Count_8_DYMUX_5617
    );
  BTN_2_Count_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(8),
      I1 => BTN_2_Count_8_G,
      O => BTN_2_Count_8_XORG_5615
    );
  BTN_2_Count_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_8_CYMUXFAST_5612,
      O => BTN_2_Mcount_Count_cy(9)
    );
  BTN_2_Count_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(7),
      O => BTN_2_Count_8_FASTCARRY_5610
    );
  BTN_2_Count_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      I0 => BTN_2_Count_8_CYSELG_5598,
      I1 => BTN_2_Count_8_CYSELF_5613,
      O => BTN_2_Count_8_CYAND_5611
    );
  BTN_2_Count_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      IA => BTN_2_Count_8_CYMUXG2_5609,
      IB => BTN_2_Count_8_FASTCARRY_5610,
      SEL => BTN_2_Count_8_CYAND_5611,
      O => BTN_2_Count_8_CYMUXFAST_5612
    );
  BTN_2_Count_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y71"
    )
    port map (
      IA => BTN_2_Count_8_LOGIC_ZERO_5607,
      IB => BTN_2_Count_8_CYMUXF2_5608,
      SEL => BTN_2_Count_8_CYSELG_5598,
      O => BTN_2_Count_8_CYMUXG2_5609
    );
  BTN_2_Count_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_8_G,
      O => BTN_2_Count_8_CYSELG_5598
    );
  BTN_2_Count_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_8_SRINV_5596
    );
  BTN_2_Count_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_8_CLKINV_5595
    );
  BTN_2_Count_8_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_8_CEINVNOT
    );
  BTN_2_Count_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      O => BTN_2_Count_10_LOGIC_ZERO_5663
    );
  BTN_2_Count_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_10_XORF_5689,
      O => BTN_2_Count_10_DXMUX_5691
    );
  BTN_2_Count_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      I0 => BTN_2_Count_10_CYINIT_5688,
      I1 => BTN_2_Count_10_F,
      O => BTN_2_Count_10_XORF_5689
    );
  BTN_2_Count_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      IA => BTN_2_Count_10_LOGIC_ZERO_5663,
      IB => BTN_2_Count_10_CYINIT_5688,
      SEL => BTN_2_Count_10_CYSELF_5669,
      O => BTN_2_Mcount_Count_cy(10)
    );
  BTN_2_Count_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      IA => BTN_2_Count_10_LOGIC_ZERO_5663,
      IB => BTN_2_Count_10_LOGIC_ZERO_5663,
      SEL => BTN_2_Count_10_CYSELF_5669,
      O => BTN_2_Count_10_CYMUXF2_5664
    );
  BTN_2_Count_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(9),
      O => BTN_2_Count_10_CYINIT_5688
    );
  BTN_2_Count_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_10_F,
      O => BTN_2_Count_10_CYSELF_5669
    );
  BTN_2_Count_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_10_XORG_5671,
      O => BTN_2_Count_10_DYMUX_5673
    );
  BTN_2_Count_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(10),
      I1 => BTN_2_Count_10_G,
      O => BTN_2_Count_10_XORG_5671
    );
  BTN_2_Count_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_10_CYMUXFAST_5668,
      O => BTN_2_Mcount_Count_cy(11)
    );
  BTN_2_Count_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(9),
      O => BTN_2_Count_10_FASTCARRY_5666
    );
  BTN_2_Count_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      I0 => BTN_2_Count_10_CYSELG_5654,
      I1 => BTN_2_Count_10_CYSELF_5669,
      O => BTN_2_Count_10_CYAND_5667
    );
  BTN_2_Count_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      IA => BTN_2_Count_10_CYMUXG2_5665,
      IB => BTN_2_Count_10_FASTCARRY_5666,
      SEL => BTN_2_Count_10_CYAND_5667,
      O => BTN_2_Count_10_CYMUXFAST_5668
    );
  BTN_2_Count_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y72"
    )
    port map (
      IA => BTN_2_Count_10_LOGIC_ZERO_5663,
      IB => BTN_2_Count_10_CYMUXF2_5664,
      SEL => BTN_2_Count_10_CYSELG_5654,
      O => BTN_2_Count_10_CYMUXG2_5665
    );
  BTN_2_Count_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_10_G,
      O => BTN_2_Count_10_CYSELG_5654
    );
  BTN_2_Count_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_10_SRINV_5652
    );
  BTN_2_Count_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_10_CLKINV_5651
    );
  BTN_2_Count_10_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y72",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_10_CEINVNOT
    );
  BTN_2_Count_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      O => BTN_2_Count_12_LOGIC_ZERO_5719
    );
  BTN_2_Count_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_12_XORF_5745,
      O => BTN_2_Count_12_DXMUX_5747
    );
  BTN_2_Count_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      I0 => BTN_2_Count_12_CYINIT_5744,
      I1 => BTN_2_Count_12_F,
      O => BTN_2_Count_12_XORF_5745
    );
  BTN_2_Count_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      IA => BTN_2_Count_12_LOGIC_ZERO_5719,
      IB => BTN_2_Count_12_CYINIT_5744,
      SEL => BTN_2_Count_12_CYSELF_5725,
      O => BTN_2_Mcount_Count_cy(12)
    );
  BTN_2_Count_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      IA => BTN_2_Count_12_LOGIC_ZERO_5719,
      IB => BTN_2_Count_12_LOGIC_ZERO_5719,
      SEL => BTN_2_Count_12_CYSELF_5725,
      O => BTN_2_Count_12_CYMUXF2_5720
    );
  BTN_2_Count_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(11),
      O => BTN_2_Count_12_CYINIT_5744
    );
  BTN_2_Count_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_12_F,
      O => BTN_2_Count_12_CYSELF_5725
    );
  BTN_2_Count_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_12_XORG_5727,
      O => BTN_2_Count_12_DYMUX_5729
    );
  BTN_2_Count_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(12),
      I1 => BTN_2_Count_12_G,
      O => BTN_2_Count_12_XORG_5727
    );
  BTN_2_Count_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_12_CYMUXFAST_5724,
      O => BTN_2_Mcount_Count_cy(13)
    );
  BTN_2_Count_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(11),
      O => BTN_2_Count_12_FASTCARRY_5722
    );
  BTN_2_Count_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      I0 => BTN_2_Count_12_CYSELG_5710,
      I1 => BTN_2_Count_12_CYSELF_5725,
      O => BTN_2_Count_12_CYAND_5723
    );
  BTN_2_Count_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      IA => BTN_2_Count_12_CYMUXG2_5721,
      IB => BTN_2_Count_12_FASTCARRY_5722,
      SEL => BTN_2_Count_12_CYAND_5723,
      O => BTN_2_Count_12_CYMUXFAST_5724
    );
  BTN_2_Count_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y73"
    )
    port map (
      IA => BTN_2_Count_12_LOGIC_ZERO_5719,
      IB => BTN_2_Count_12_CYMUXF2_5720,
      SEL => BTN_2_Count_12_CYSELG_5710,
      O => BTN_2_Count_12_CYMUXG2_5721
    );
  BTN_2_Count_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_12_G,
      O => BTN_2_Count_12_CYSELG_5710
    );
  BTN_2_Count_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_12_SRINV_5708
    );
  BTN_2_Count_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_12_CLKINV_5707
    );
  BTN_2_Count_12_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_12_CEINVNOT
    );
  BTN_2_Count_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      O => BTN_2_Count_14_LOGIC_ZERO_5775
    );
  BTN_2_Count_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_14_XORF_5801,
      O => BTN_2_Count_14_DXMUX_5803
    );
  BTN_2_Count_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      I0 => BTN_2_Count_14_CYINIT_5800,
      I1 => BTN_2_Count_14_F,
      O => BTN_2_Count_14_XORF_5801
    );
  BTN_2_Count_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      IA => BTN_2_Count_14_LOGIC_ZERO_5775,
      IB => BTN_2_Count_14_CYINIT_5800,
      SEL => BTN_2_Count_14_CYSELF_5781,
      O => BTN_2_Mcount_Count_cy(14)
    );
  BTN_2_Count_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      IA => BTN_2_Count_14_LOGIC_ZERO_5775,
      IB => BTN_2_Count_14_LOGIC_ZERO_5775,
      SEL => BTN_2_Count_14_CYSELF_5781,
      O => BTN_2_Count_14_CYMUXF2_5776
    );
  BTN_2_Count_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(13),
      O => BTN_2_Count_14_CYINIT_5800
    );
  BTN_2_Count_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_14_F,
      O => BTN_2_Count_14_CYSELF_5781
    );
  BTN_2_Count_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_14_XORG_5783,
      O => BTN_2_Count_14_DYMUX_5785
    );
  BTN_2_Count_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(14),
      I1 => BTN_2_Count_14_G,
      O => BTN_2_Count_14_XORG_5783
    );
  BTN_2_Count_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_14_CYMUXFAST_5780,
      O => BTN_2_Mcount_Count_cy(15)
    );
  BTN_2_Count_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(13),
      O => BTN_2_Count_14_FASTCARRY_5778
    );
  BTN_2_Count_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      I0 => BTN_2_Count_14_CYSELG_5766,
      I1 => BTN_2_Count_14_CYSELF_5781,
      O => BTN_2_Count_14_CYAND_5779
    );
  BTN_2_Count_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      IA => BTN_2_Count_14_CYMUXG2_5777,
      IB => BTN_2_Count_14_FASTCARRY_5778,
      SEL => BTN_2_Count_14_CYAND_5779,
      O => BTN_2_Count_14_CYMUXFAST_5780
    );
  BTN_2_Count_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y74"
    )
    port map (
      IA => BTN_2_Count_14_LOGIC_ZERO_5775,
      IB => BTN_2_Count_14_CYMUXF2_5776,
      SEL => BTN_2_Count_14_CYSELG_5766,
      O => BTN_2_Count_14_CYMUXG2_5777
    );
  BTN_2_Count_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_14_G,
      O => BTN_2_Count_14_CYSELG_5766
    );
  BTN_2_Count_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_14_SRINV_5764
    );
  BTN_2_Count_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_14_CLKINV_5763
    );
  BTN_2_Count_14_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y74",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_14_CEINVNOT
    );
  BTN_2_Count_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      O => BTN_2_Count_16_LOGIC_ZERO_5831
    );
  BTN_2_Count_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_16_XORF_5857,
      O => BTN_2_Count_16_DXMUX_5859
    );
  BTN_2_Count_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      I0 => BTN_2_Count_16_CYINIT_5856,
      I1 => BTN_2_Count_16_F,
      O => BTN_2_Count_16_XORF_5857
    );
  BTN_2_Count_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      IA => BTN_2_Count_16_LOGIC_ZERO_5831,
      IB => BTN_2_Count_16_CYINIT_5856,
      SEL => BTN_2_Count_16_CYSELF_5837,
      O => BTN_2_Mcount_Count_cy(16)
    );
  BTN_2_Count_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      IA => BTN_2_Count_16_LOGIC_ZERO_5831,
      IB => BTN_2_Count_16_LOGIC_ZERO_5831,
      SEL => BTN_2_Count_16_CYSELF_5837,
      O => BTN_2_Count_16_CYMUXF2_5832
    );
  BTN_2_Count_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(15),
      O => BTN_2_Count_16_CYINIT_5856
    );
  BTN_2_Count_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_16_F,
      O => BTN_2_Count_16_CYSELF_5837
    );
  BTN_2_Count_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_16_XORG_5839,
      O => BTN_2_Count_16_DYMUX_5841
    );
  BTN_2_Count_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(16),
      I1 => BTN_2_Count_16_G,
      O => BTN_2_Count_16_XORG_5839
    );
  BTN_2_Count_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_16_CYMUXFAST_5836,
      O => BTN_2_Mcount_Count_cy(17)
    );
  BTN_2_Count_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(15),
      O => BTN_2_Count_16_FASTCARRY_5834
    );
  BTN_2_Count_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      I0 => BTN_2_Count_16_CYSELG_5822,
      I1 => BTN_2_Count_16_CYSELF_5837,
      O => BTN_2_Count_16_CYAND_5835
    );
  BTN_2_Count_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      IA => BTN_2_Count_16_CYMUXG2_5833,
      IB => BTN_2_Count_16_FASTCARRY_5834,
      SEL => BTN_2_Count_16_CYAND_5835,
      O => BTN_2_Count_16_CYMUXFAST_5836
    );
  BTN_2_Count_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y75"
    )
    port map (
      IA => BTN_2_Count_16_LOGIC_ZERO_5831,
      IB => BTN_2_Count_16_CYMUXF2_5832,
      SEL => BTN_2_Count_16_CYSELG_5822,
      O => BTN_2_Count_16_CYMUXG2_5833
    );
  BTN_2_Count_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_16_G,
      O => BTN_2_Count_16_CYSELG_5822
    );
  BTN_2_Count_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_16_SRINV_5820
    );
  BTN_2_Count_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_16_CLKINV_5819
    );
  BTN_2_Count_16_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y75",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_16_CEINVNOT
    );
  BTN_2_Count_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      O => BTN_2_Count_18_LOGIC_ZERO_5887
    );
  BTN_2_Count_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_18_XORF_5913,
      O => BTN_2_Count_18_DXMUX_5915
    );
  BTN_2_Count_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      I0 => BTN_2_Count_18_CYINIT_5912,
      I1 => BTN_2_Count_18_F,
      O => BTN_2_Count_18_XORF_5913
    );
  BTN_2_Count_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      IA => BTN_2_Count_18_LOGIC_ZERO_5887,
      IB => BTN_2_Count_18_CYINIT_5912,
      SEL => BTN_2_Count_18_CYSELF_5893,
      O => BTN_2_Mcount_Count_cy(18)
    );
  BTN_2_Count_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      IA => BTN_2_Count_18_LOGIC_ZERO_5887,
      IB => BTN_2_Count_18_LOGIC_ZERO_5887,
      SEL => BTN_2_Count_18_CYSELF_5893,
      O => BTN_2_Count_18_CYMUXF2_5888
    );
  BTN_2_Count_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(17),
      O => BTN_2_Count_18_CYINIT_5912
    );
  BTN_2_Count_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_18_F,
      O => BTN_2_Count_18_CYSELF_5893
    );
  BTN_2_Count_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_18_XORG_5895,
      O => BTN_2_Count_18_DYMUX_5897
    );
  BTN_2_Count_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      I0 => BTN_2_Mcount_Count_cy(18),
      I1 => BTN_2_Count_18_G,
      O => BTN_2_Count_18_XORG_5895
    );
  BTN_2_Count_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Mcount_Count_cy(17),
      O => BTN_2_Count_18_FASTCARRY_5890
    );
  BTN_2_Count_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      I0 => BTN_2_Count_18_CYSELG_5878,
      I1 => BTN_2_Count_18_CYSELF_5893,
      O => BTN_2_Count_18_CYAND_5891
    );
  BTN_2_Count_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      IA => BTN_2_Count_18_CYMUXG2_5889,
      IB => BTN_2_Count_18_FASTCARRY_5890,
      SEL => BTN_2_Count_18_CYAND_5891,
      O => BTN_2_Count_18_CYMUXFAST_5892
    );
  BTN_2_Count_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X65Y76"
    )
    port map (
      IA => BTN_2_Count_18_LOGIC_ZERO_5887,
      IB => BTN_2_Count_18_CYMUXF2_5888,
      SEL => BTN_2_Count_18_CYSELG_5878,
      O => BTN_2_Count_18_CYMUXG2_5889
    );
  BTN_2_Count_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_18_G,
      O => BTN_2_Count_18_CYSELG_5878
    );
  BTN_2_Count_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_18_SRINV_5876
    );
  BTN_2_Count_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_18_CLKINV_5875
    );
  BTN_2_Count_18_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y76",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_18_CEINVNOT
    );
  BTN_2_Count_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_20_XORF_5940,
      O => BTN_2_Count_20_DXMUX_5942
    );
  BTN_2_Count_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X65Y77"
    )
    port map (
      I0 => BTN_2_Count_20_CYINIT_5939,
      I1 => BTN_2_Count_20_rt_5937,
      O => BTN_2_Count_20_XORF_5940
    );
  BTN_2_Count_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_18_CYMUXFAST_5892,
      O => BTN_2_Count_20_CYINIT_5939
    );
  BTN_2_Count_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count_and0000_0,
      O => BTN_2_Count_20_SRINV_5929
    );
  BTN_2_Count_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_2_Count_20_CLKINV_5928
    );
  BTN_2_Count_20_CEINV : X_INV
    generic map(
      LOC => "SLICE_X65Y77",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_2_Count(20),
      O => BTN_2_Count_20_CEINVNOT
    );
  BTN_3_Count_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y61"
    )
    port map (
      O => BTN_3_Count_0_LOGIC_ZERO_5970
    );
  BTN_3_Count_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X53Y61"
    )
    port map (
      O => BTN_3_Count_0_LOGIC_ONE_5993
    );
  BTN_3_Count_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_0_XORF_5994,
      O => BTN_3_Count_0_DXMUX_5996
    );
  BTN_3_Count_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y61"
    )
    port map (
      I0 => BTN_3_Count_0_CYINIT_5992,
      I1 => BTN_3_Mcount_Count_lut(0),
      O => BTN_3_Count_0_XORF_5994
    );
  BTN_3_Count_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y61"
    )
    port map (
      IA => BTN_3_Count_0_LOGIC_ONE_5993,
      IB => BTN_3_Count_0_CYINIT_5992,
      SEL => BTN_3_Count_0_CYSELF_5983,
      O => BTN_3_Mcount_Count_cy(0)
    );
  BTN_3_Count_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_0_BXINV_5981,
      O => BTN_3_Count_0_CYINIT_5992
    );
  BTN_3_Count_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_lut(0),
      O => BTN_3_Count_0_CYSELF_5983
    );
  BTN_3_Count_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => '0',
      O => BTN_3_Count_0_BXINV_5981
    );
  BTN_3_Count_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_0_XORG_5973,
      O => BTN_3_Count_0_DYMUX_5975
    );
  BTN_3_Count_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y61"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(0),
      I1 => BTN_3_Count_0_G,
      O => BTN_3_Count_0_XORG_5973
    );
  BTN_3_Count_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_0_CYMUXG_5972,
      O => BTN_3_Mcount_Count_cy(1)
    );
  BTN_3_Count_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X53Y61"
    )
    port map (
      IA => BTN_3_Count_0_LOGIC_ZERO_5970,
      IB => BTN_3_Mcount_Count_cy(0),
      SEL => BTN_3_Count_0_CYSELG_5961,
      O => BTN_3_Count_0_CYMUXG_5972
    );
  BTN_3_Count_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_0_G,
      O => BTN_3_Count_0_CYSELG_5961
    );
  BTN_3_Count_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_0_SRINV_5959
    );
  BTN_3_Count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_0_CLKINV_5958
    );
  BTN_3_Count_0_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_0_CEINVNOT
    );
  BTN_3_Count_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      O => BTN_3_Count_2_LOGIC_ZERO_6024
    );
  BTN_3_Count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_2_XORF_6050,
      O => BTN_3_Count_2_DXMUX_6052
    );
  BTN_3_Count_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      I0 => BTN_3_Count_2_CYINIT_6049,
      I1 => BTN_3_Count_2_F,
      O => BTN_3_Count_2_XORF_6050
    );
  BTN_3_Count_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      IA => BTN_3_Count_2_LOGIC_ZERO_6024,
      IB => BTN_3_Count_2_CYINIT_6049,
      SEL => BTN_3_Count_2_CYSELF_6030,
      O => BTN_3_Mcount_Count_cy(2)
    );
  BTN_3_Count_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      IA => BTN_3_Count_2_LOGIC_ZERO_6024,
      IB => BTN_3_Count_2_LOGIC_ZERO_6024,
      SEL => BTN_3_Count_2_CYSELF_6030,
      O => BTN_3_Count_2_CYMUXF2_6025
    );
  BTN_3_Count_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(1),
      O => BTN_3_Count_2_CYINIT_6049
    );
  BTN_3_Count_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_2_F,
      O => BTN_3_Count_2_CYSELF_6030
    );
  BTN_3_Count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_2_XORG_6032,
      O => BTN_3_Count_2_DYMUX_6034
    );
  BTN_3_Count_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(2),
      I1 => BTN_3_Count_2_G,
      O => BTN_3_Count_2_XORG_6032
    );
  BTN_3_Count_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_2_CYMUXFAST_6029,
      O => BTN_3_Mcount_Count_cy(3)
    );
  BTN_3_Count_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(1),
      O => BTN_3_Count_2_FASTCARRY_6027
    );
  BTN_3_Count_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      I0 => BTN_3_Count_2_CYSELG_6015,
      I1 => BTN_3_Count_2_CYSELF_6030,
      O => BTN_3_Count_2_CYAND_6028
    );
  BTN_3_Count_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      IA => BTN_3_Count_2_CYMUXG2_6026,
      IB => BTN_3_Count_2_FASTCARRY_6027,
      SEL => BTN_3_Count_2_CYAND_6028,
      O => BTN_3_Count_2_CYMUXFAST_6029
    );
  BTN_3_Count_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y62"
    )
    port map (
      IA => BTN_3_Count_2_LOGIC_ZERO_6024,
      IB => BTN_3_Count_2_CYMUXF2_6025,
      SEL => BTN_3_Count_2_CYSELG_6015,
      O => BTN_3_Count_2_CYMUXG2_6026
    );
  BTN_3_Count_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_2_G,
      O => BTN_3_Count_2_CYSELG_6015
    );
  BTN_3_Count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_2_SRINV_6013
    );
  BTN_3_Count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_2_CLKINV_6012
    );
  BTN_3_Count_2_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y62",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_2_CEINVNOT
    );
  BTN_3_Count_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      O => BTN_3_Count_4_LOGIC_ZERO_6080
    );
  BTN_3_Count_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_4_XORF_6106,
      O => BTN_3_Count_4_DXMUX_6108
    );
  BTN_3_Count_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      I0 => BTN_3_Count_4_CYINIT_6105,
      I1 => BTN_3_Count_4_F,
      O => BTN_3_Count_4_XORF_6106
    );
  BTN_3_Count_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      IA => BTN_3_Count_4_LOGIC_ZERO_6080,
      IB => BTN_3_Count_4_CYINIT_6105,
      SEL => BTN_3_Count_4_CYSELF_6086,
      O => BTN_3_Mcount_Count_cy(4)
    );
  BTN_3_Count_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      IA => BTN_3_Count_4_LOGIC_ZERO_6080,
      IB => BTN_3_Count_4_LOGIC_ZERO_6080,
      SEL => BTN_3_Count_4_CYSELF_6086,
      O => BTN_3_Count_4_CYMUXF2_6081
    );
  BTN_3_Count_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(3),
      O => BTN_3_Count_4_CYINIT_6105
    );
  BTN_3_Count_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_4_F,
      O => BTN_3_Count_4_CYSELF_6086
    );
  BTN_3_Count_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_4_XORG_6088,
      O => BTN_3_Count_4_DYMUX_6090
    );
  BTN_3_Count_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(4),
      I1 => BTN_3_Count_4_G,
      O => BTN_3_Count_4_XORG_6088
    );
  BTN_3_Count_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_4_CYMUXFAST_6085,
      O => BTN_3_Mcount_Count_cy(5)
    );
  BTN_3_Count_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(3),
      O => BTN_3_Count_4_FASTCARRY_6083
    );
  BTN_3_Count_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      I0 => BTN_3_Count_4_CYSELG_6071,
      I1 => BTN_3_Count_4_CYSELF_6086,
      O => BTN_3_Count_4_CYAND_6084
    );
  BTN_3_Count_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      IA => BTN_3_Count_4_CYMUXG2_6082,
      IB => BTN_3_Count_4_FASTCARRY_6083,
      SEL => BTN_3_Count_4_CYAND_6084,
      O => BTN_3_Count_4_CYMUXFAST_6085
    );
  BTN_3_Count_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y63"
    )
    port map (
      IA => BTN_3_Count_4_LOGIC_ZERO_6080,
      IB => BTN_3_Count_4_CYMUXF2_6081,
      SEL => BTN_3_Count_4_CYSELG_6071,
      O => BTN_3_Count_4_CYMUXG2_6082
    );
  BTN_3_Count_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_4_G,
      O => BTN_3_Count_4_CYSELG_6071
    );
  BTN_3_Count_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_4_SRINV_6069
    );
  BTN_3_Count_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_4_CLKINV_6068
    );
  BTN_3_Count_4_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y63",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_4_CEINVNOT
    );
  BTN_3_Count_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      O => BTN_3_Count_6_LOGIC_ZERO_6136
    );
  BTN_3_Count_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_6_XORF_6162,
      O => BTN_3_Count_6_DXMUX_6164
    );
  BTN_3_Count_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      I0 => BTN_3_Count_6_CYINIT_6161,
      I1 => BTN_3_Count_6_F,
      O => BTN_3_Count_6_XORF_6162
    );
  BTN_3_Count_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      IA => BTN_3_Count_6_LOGIC_ZERO_6136,
      IB => BTN_3_Count_6_CYINIT_6161,
      SEL => BTN_3_Count_6_CYSELF_6142,
      O => BTN_3_Mcount_Count_cy(6)
    );
  BTN_3_Count_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      IA => BTN_3_Count_6_LOGIC_ZERO_6136,
      IB => BTN_3_Count_6_LOGIC_ZERO_6136,
      SEL => BTN_3_Count_6_CYSELF_6142,
      O => BTN_3_Count_6_CYMUXF2_6137
    );
  BTN_3_Count_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(5),
      O => BTN_3_Count_6_CYINIT_6161
    );
  BTN_3_Count_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_6_F,
      O => BTN_3_Count_6_CYSELF_6142
    );
  BTN_3_Count_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_6_XORG_6144,
      O => BTN_3_Count_6_DYMUX_6146
    );
  BTN_3_Count_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(6),
      I1 => BTN_3_Count_6_G,
      O => BTN_3_Count_6_XORG_6144
    );
  BTN_3_Count_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_6_CYMUXFAST_6141,
      O => BTN_3_Mcount_Count_cy(7)
    );
  BTN_3_Count_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(5),
      O => BTN_3_Count_6_FASTCARRY_6139
    );
  BTN_3_Count_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      I0 => BTN_3_Count_6_CYSELG_6127,
      I1 => BTN_3_Count_6_CYSELF_6142,
      O => BTN_3_Count_6_CYAND_6140
    );
  BTN_3_Count_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      IA => BTN_3_Count_6_CYMUXG2_6138,
      IB => BTN_3_Count_6_FASTCARRY_6139,
      SEL => BTN_3_Count_6_CYAND_6140,
      O => BTN_3_Count_6_CYMUXFAST_6141
    );
  BTN_3_Count_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y64"
    )
    port map (
      IA => BTN_3_Count_6_LOGIC_ZERO_6136,
      IB => BTN_3_Count_6_CYMUXF2_6137,
      SEL => BTN_3_Count_6_CYSELG_6127,
      O => BTN_3_Count_6_CYMUXG2_6138
    );
  BTN_3_Count_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_6_G,
      O => BTN_3_Count_6_CYSELG_6127
    );
  BTN_3_Count_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_6_SRINV_6125
    );
  BTN_3_Count_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_6_CLKINV_6124
    );
  BTN_3_Count_6_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_6_CEINVNOT
    );
  BTN_3_Count_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      O => BTN_3_Count_8_LOGIC_ZERO_6192
    );
  BTN_3_Count_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_8_XORF_6218,
      O => BTN_3_Count_8_DXMUX_6220
    );
  BTN_3_Count_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      I0 => BTN_3_Count_8_CYINIT_6217,
      I1 => BTN_3_Count_8_F,
      O => BTN_3_Count_8_XORF_6218
    );
  BTN_3_Count_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      IA => BTN_3_Count_8_LOGIC_ZERO_6192,
      IB => BTN_3_Count_8_CYINIT_6217,
      SEL => BTN_3_Count_8_CYSELF_6198,
      O => BTN_3_Mcount_Count_cy(8)
    );
  BTN_3_Count_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      IA => BTN_3_Count_8_LOGIC_ZERO_6192,
      IB => BTN_3_Count_8_LOGIC_ZERO_6192,
      SEL => BTN_3_Count_8_CYSELF_6198,
      O => BTN_3_Count_8_CYMUXF2_6193
    );
  BTN_3_Count_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(7),
      O => BTN_3_Count_8_CYINIT_6217
    );
  BTN_3_Count_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_8_F,
      O => BTN_3_Count_8_CYSELF_6198
    );
  BTN_3_Count_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_8_XORG_6200,
      O => BTN_3_Count_8_DYMUX_6202
    );
  BTN_3_Count_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(8),
      I1 => BTN_3_Count_8_G,
      O => BTN_3_Count_8_XORG_6200
    );
  BTN_3_Count_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_8_CYMUXFAST_6197,
      O => BTN_3_Mcount_Count_cy(9)
    );
  BTN_3_Count_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(7),
      O => BTN_3_Count_8_FASTCARRY_6195
    );
  BTN_3_Count_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      I0 => BTN_3_Count_8_CYSELG_6183,
      I1 => BTN_3_Count_8_CYSELF_6198,
      O => BTN_3_Count_8_CYAND_6196
    );
  BTN_3_Count_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      IA => BTN_3_Count_8_CYMUXG2_6194,
      IB => BTN_3_Count_8_FASTCARRY_6195,
      SEL => BTN_3_Count_8_CYAND_6196,
      O => BTN_3_Count_8_CYMUXFAST_6197
    );
  BTN_3_Count_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y65"
    )
    port map (
      IA => BTN_3_Count_8_LOGIC_ZERO_6192,
      IB => BTN_3_Count_8_CYMUXF2_6193,
      SEL => BTN_3_Count_8_CYSELG_6183,
      O => BTN_3_Count_8_CYMUXG2_6194
    );
  BTN_3_Count_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_8_G,
      O => BTN_3_Count_8_CYSELG_6183
    );
  BTN_3_Count_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_8_SRINV_6181
    );
  BTN_3_Count_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_8_CLKINV_6180
    );
  BTN_3_Count_8_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y65",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_8_CEINVNOT
    );
  BTN_3_Count_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      O => BTN_3_Count_10_LOGIC_ZERO_6248
    );
  BTN_3_Count_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_10_XORF_6274,
      O => BTN_3_Count_10_DXMUX_6276
    );
  BTN_3_Count_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      I0 => BTN_3_Count_10_CYINIT_6273,
      I1 => BTN_3_Count_10_F,
      O => BTN_3_Count_10_XORF_6274
    );
  BTN_3_Count_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => BTN_3_Count_10_LOGIC_ZERO_6248,
      IB => BTN_3_Count_10_CYINIT_6273,
      SEL => BTN_3_Count_10_CYSELF_6254,
      O => BTN_3_Mcount_Count_cy(10)
    );
  BTN_3_Count_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => BTN_3_Count_10_LOGIC_ZERO_6248,
      IB => BTN_3_Count_10_LOGIC_ZERO_6248,
      SEL => BTN_3_Count_10_CYSELF_6254,
      O => BTN_3_Count_10_CYMUXF2_6249
    );
  BTN_3_Count_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(9),
      O => BTN_3_Count_10_CYINIT_6273
    );
  BTN_3_Count_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_10_F,
      O => BTN_3_Count_10_CYSELF_6254
    );
  BTN_3_Count_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_10_XORG_6256,
      O => BTN_3_Count_10_DYMUX_6258
    );
  BTN_3_Count_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(10),
      I1 => BTN_3_Count_10_G,
      O => BTN_3_Count_10_XORG_6256
    );
  BTN_3_Count_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_10_CYMUXFAST_6253,
      O => BTN_3_Mcount_Count_cy(11)
    );
  BTN_3_Count_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(9),
      O => BTN_3_Count_10_FASTCARRY_6251
    );
  BTN_3_Count_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      I0 => BTN_3_Count_10_CYSELG_6239,
      I1 => BTN_3_Count_10_CYSELF_6254,
      O => BTN_3_Count_10_CYAND_6252
    );
  BTN_3_Count_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => BTN_3_Count_10_CYMUXG2_6250,
      IB => BTN_3_Count_10_FASTCARRY_6251,
      SEL => BTN_3_Count_10_CYAND_6252,
      O => BTN_3_Count_10_CYMUXFAST_6253
    );
  BTN_3_Count_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y66"
    )
    port map (
      IA => BTN_3_Count_10_LOGIC_ZERO_6248,
      IB => BTN_3_Count_10_CYMUXF2_6249,
      SEL => BTN_3_Count_10_CYSELG_6239,
      O => BTN_3_Count_10_CYMUXG2_6250
    );
  BTN_3_Count_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_10_G,
      O => BTN_3_Count_10_CYSELG_6239
    );
  BTN_3_Count_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_10_SRINV_6237
    );
  BTN_3_Count_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_10_CLKINV_6236
    );
  BTN_3_Count_10_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y66",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_10_CEINVNOT
    );
  BTN_3_Count_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      O => BTN_3_Count_12_LOGIC_ZERO_6304
    );
  BTN_3_Count_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_12_XORF_6330,
      O => BTN_3_Count_12_DXMUX_6332
    );
  BTN_3_Count_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      I0 => BTN_3_Count_12_CYINIT_6329,
      I1 => BTN_3_Count_12_F,
      O => BTN_3_Count_12_XORF_6330
    );
  BTN_3_Count_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => BTN_3_Count_12_LOGIC_ZERO_6304,
      IB => BTN_3_Count_12_CYINIT_6329,
      SEL => BTN_3_Count_12_CYSELF_6310,
      O => BTN_3_Mcount_Count_cy(12)
    );
  BTN_3_Count_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => BTN_3_Count_12_LOGIC_ZERO_6304,
      IB => BTN_3_Count_12_LOGIC_ZERO_6304,
      SEL => BTN_3_Count_12_CYSELF_6310,
      O => BTN_3_Count_12_CYMUXF2_6305
    );
  BTN_3_Count_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(11),
      O => BTN_3_Count_12_CYINIT_6329
    );
  BTN_3_Count_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_12_F,
      O => BTN_3_Count_12_CYSELF_6310
    );
  BTN_3_Count_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_12_XORG_6312,
      O => BTN_3_Count_12_DYMUX_6314
    );
  BTN_3_Count_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(12),
      I1 => BTN_3_Count_12_G,
      O => BTN_3_Count_12_XORG_6312
    );
  BTN_3_Count_12_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_12_CYMUXFAST_6309,
      O => BTN_3_Mcount_Count_cy(13)
    );
  BTN_3_Count_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(11),
      O => BTN_3_Count_12_FASTCARRY_6307
    );
  BTN_3_Count_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      I0 => BTN_3_Count_12_CYSELG_6295,
      I1 => BTN_3_Count_12_CYSELF_6310,
      O => BTN_3_Count_12_CYAND_6308
    );
  BTN_3_Count_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => BTN_3_Count_12_CYMUXG2_6306,
      IB => BTN_3_Count_12_FASTCARRY_6307,
      SEL => BTN_3_Count_12_CYAND_6308,
      O => BTN_3_Count_12_CYMUXFAST_6309
    );
  BTN_3_Count_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y67"
    )
    port map (
      IA => BTN_3_Count_12_LOGIC_ZERO_6304,
      IB => BTN_3_Count_12_CYMUXF2_6305,
      SEL => BTN_3_Count_12_CYSELG_6295,
      O => BTN_3_Count_12_CYMUXG2_6306
    );
  BTN_3_Count_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_12_G,
      O => BTN_3_Count_12_CYSELG_6295
    );
  BTN_3_Count_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_12_SRINV_6293
    );
  BTN_3_Count_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_12_CLKINV_6292
    );
  BTN_3_Count_12_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y67",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_12_CEINVNOT
    );
  BTN_3_Count_14_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      O => BTN_3_Count_14_LOGIC_ZERO_6360
    );
  BTN_3_Count_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_14_XORF_6386,
      O => BTN_3_Count_14_DXMUX_6388
    );
  BTN_3_Count_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => BTN_3_Count_14_CYINIT_6385,
      I1 => BTN_3_Count_14_F,
      O => BTN_3_Count_14_XORF_6386
    );
  BTN_3_Count_14_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => BTN_3_Count_14_LOGIC_ZERO_6360,
      IB => BTN_3_Count_14_CYINIT_6385,
      SEL => BTN_3_Count_14_CYSELF_6366,
      O => BTN_3_Mcount_Count_cy(14)
    );
  BTN_3_Count_14_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => BTN_3_Count_14_LOGIC_ZERO_6360,
      IB => BTN_3_Count_14_LOGIC_ZERO_6360,
      SEL => BTN_3_Count_14_CYSELF_6366,
      O => BTN_3_Count_14_CYMUXF2_6361
    );
  BTN_3_Count_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(13),
      O => BTN_3_Count_14_CYINIT_6385
    );
  BTN_3_Count_14_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_14_F,
      O => BTN_3_Count_14_CYSELF_6366
    );
  BTN_3_Count_14_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_14_XORG_6368,
      O => BTN_3_Count_14_DYMUX_6370
    );
  BTN_3_Count_14_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(14),
      I1 => BTN_3_Count_14_G,
      O => BTN_3_Count_14_XORG_6368
    );
  BTN_3_Count_14_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_14_CYMUXFAST_6365,
      O => BTN_3_Mcount_Count_cy(15)
    );
  BTN_3_Count_14_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(13),
      O => BTN_3_Count_14_FASTCARRY_6363
    );
  BTN_3_Count_14_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      I0 => BTN_3_Count_14_CYSELG_6351,
      I1 => BTN_3_Count_14_CYSELF_6366,
      O => BTN_3_Count_14_CYAND_6364
    );
  BTN_3_Count_14_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => BTN_3_Count_14_CYMUXG2_6362,
      IB => BTN_3_Count_14_FASTCARRY_6363,
      SEL => BTN_3_Count_14_CYAND_6364,
      O => BTN_3_Count_14_CYMUXFAST_6365
    );
  BTN_3_Count_14_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y68"
    )
    port map (
      IA => BTN_3_Count_14_LOGIC_ZERO_6360,
      IB => BTN_3_Count_14_CYMUXF2_6361,
      SEL => BTN_3_Count_14_CYSELG_6351,
      O => BTN_3_Count_14_CYMUXG2_6362
    );
  BTN_3_Count_14_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_14_G,
      O => BTN_3_Count_14_CYSELG_6351
    );
  BTN_3_Count_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_14_SRINV_6349
    );
  BTN_3_Count_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_14_CLKINV_6348
    );
  BTN_3_Count_14_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_14_CEINVNOT
    );
  BTN_3_Count_16_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      O => BTN_3_Count_16_LOGIC_ZERO_6416
    );
  BTN_3_Count_16_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_16_XORF_6442,
      O => BTN_3_Count_16_DXMUX_6444
    );
  BTN_3_Count_16_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => BTN_3_Count_16_CYINIT_6441,
      I1 => BTN_3_Count_16_F,
      O => BTN_3_Count_16_XORF_6442
    );
  BTN_3_Count_16_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => BTN_3_Count_16_LOGIC_ZERO_6416,
      IB => BTN_3_Count_16_CYINIT_6441,
      SEL => BTN_3_Count_16_CYSELF_6422,
      O => BTN_3_Mcount_Count_cy(16)
    );
  BTN_3_Count_16_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => BTN_3_Count_16_LOGIC_ZERO_6416,
      IB => BTN_3_Count_16_LOGIC_ZERO_6416,
      SEL => BTN_3_Count_16_CYSELF_6422,
      O => BTN_3_Count_16_CYMUXF2_6417
    );
  BTN_3_Count_16_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(15),
      O => BTN_3_Count_16_CYINIT_6441
    );
  BTN_3_Count_16_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_16_F,
      O => BTN_3_Count_16_CYSELF_6422
    );
  BTN_3_Count_16_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_16_XORG_6424,
      O => BTN_3_Count_16_DYMUX_6426
    );
  BTN_3_Count_16_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(16),
      I1 => BTN_3_Count_16_G,
      O => BTN_3_Count_16_XORG_6424
    );
  BTN_3_Count_16_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_16_CYMUXFAST_6421,
      O => BTN_3_Mcount_Count_cy(17)
    );
  BTN_3_Count_16_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(15),
      O => BTN_3_Count_16_FASTCARRY_6419
    );
  BTN_3_Count_16_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      I0 => BTN_3_Count_16_CYSELG_6407,
      I1 => BTN_3_Count_16_CYSELF_6422,
      O => BTN_3_Count_16_CYAND_6420
    );
  BTN_3_Count_16_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => BTN_3_Count_16_CYMUXG2_6418,
      IB => BTN_3_Count_16_FASTCARRY_6419,
      SEL => BTN_3_Count_16_CYAND_6420,
      O => BTN_3_Count_16_CYMUXFAST_6421
    );
  BTN_3_Count_16_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y69"
    )
    port map (
      IA => BTN_3_Count_16_LOGIC_ZERO_6416,
      IB => BTN_3_Count_16_CYMUXF2_6417,
      SEL => BTN_3_Count_16_CYSELG_6407,
      O => BTN_3_Count_16_CYMUXG2_6418
    );
  BTN_3_Count_16_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_16_G,
      O => BTN_3_Count_16_CYSELG_6407
    );
  BTN_3_Count_16_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_16_SRINV_6405
    );
  BTN_3_Count_16_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_16_CLKINV_6404
    );
  BTN_3_Count_16_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y69",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_16_CEINVNOT
    );
  BTN_3_Count_18_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      O => BTN_3_Count_18_LOGIC_ZERO_6472
    );
  BTN_3_Count_18_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_18_XORF_6498,
      O => BTN_3_Count_18_DXMUX_6500
    );
  BTN_3_Count_18_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      I0 => BTN_3_Count_18_CYINIT_6497,
      I1 => BTN_3_Count_18_F,
      O => BTN_3_Count_18_XORF_6498
    );
  BTN_3_Count_18_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => BTN_3_Count_18_LOGIC_ZERO_6472,
      IB => BTN_3_Count_18_CYINIT_6497,
      SEL => BTN_3_Count_18_CYSELF_6478,
      O => BTN_3_Mcount_Count_cy(18)
    );
  BTN_3_Count_18_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => BTN_3_Count_18_LOGIC_ZERO_6472,
      IB => BTN_3_Count_18_LOGIC_ZERO_6472,
      SEL => BTN_3_Count_18_CYSELF_6478,
      O => BTN_3_Count_18_CYMUXF2_6473
    );
  BTN_3_Count_18_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(17),
      O => BTN_3_Count_18_CYINIT_6497
    );
  BTN_3_Count_18_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_18_F,
      O => BTN_3_Count_18_CYSELF_6478
    );
  BTN_3_Count_18_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_18_XORG_6480,
      O => BTN_3_Count_18_DYMUX_6482
    );
  BTN_3_Count_18_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      I0 => BTN_3_Mcount_Count_cy(18),
      I1 => BTN_3_Count_18_G,
      O => BTN_3_Count_18_XORG_6480
    );
  BTN_3_Count_18_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Mcount_Count_cy(17),
      O => BTN_3_Count_18_FASTCARRY_6475
    );
  BTN_3_Count_18_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      I0 => BTN_3_Count_18_CYSELG_6463,
      I1 => BTN_3_Count_18_CYSELF_6478,
      O => BTN_3_Count_18_CYAND_6476
    );
  BTN_3_Count_18_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => BTN_3_Count_18_CYMUXG2_6474,
      IB => BTN_3_Count_18_FASTCARRY_6475,
      SEL => BTN_3_Count_18_CYAND_6476,
      O => BTN_3_Count_18_CYMUXFAST_6477
    );
  BTN_3_Count_18_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X53Y70"
    )
    port map (
      IA => BTN_3_Count_18_LOGIC_ZERO_6472,
      IB => BTN_3_Count_18_CYMUXF2_6473,
      SEL => BTN_3_Count_18_CYSELG_6463,
      O => BTN_3_Count_18_CYMUXG2_6474
    );
  BTN_3_Count_18_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_18_G,
      O => BTN_3_Count_18_CYSELG_6463
    );
  BTN_3_Count_18_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_18_SRINV_6461
    );
  BTN_3_Count_18_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_18_CLKINV_6460
    );
  BTN_3_Count_18_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y70",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_18_CEINVNOT
    );
  BTN_3_Count_20_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_20_XORF_6525,
      O => BTN_3_Count_20_DXMUX_6527
    );
  BTN_3_Count_20_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X53Y71"
    )
    port map (
      I0 => BTN_3_Count_20_CYINIT_6524,
      I1 => BTN_3_Count_20_rt_6522,
      O => BTN_3_Count_20_XORF_6525
    );
  BTN_3_Count_20_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_18_CYMUXFAST_6477,
      O => BTN_3_Count_20_CYINIT_6524
    );
  BTN_3_Count_20_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count_and0000_0,
      O => BTN_3_Count_20_SRINV_6514
    );
  BTN_3_Count_20_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => BTN_3_Count_20_CLKINV_6513
    );
  BTN_3_Count_20_CEINV : X_INV
    generic map(
      LOC => "SLICE_X53Y71",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN_3_Count(20),
      O => BTN_3_Count_20_CEINVNOT
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y18"
    )
    port map (
      O => SSeg_count240hz_cmp_eq0000_wg_cy_1_LOGIC_ZERO_6547
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y18"
    )
    port map (
      IA => SSeg_count240hz_cmp_eq0000_wg_cy_1_LOGIC_ZERO_6547,
      IB => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYINIT_6561,
      SEL => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELF_6552,
      O => SSeg_count240hz_cmp_eq0000_wg_cy(0)
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_cy_1_BXINV_6550,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYINIT_6561
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_lut(0),
      O => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELF_6552
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X35Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => SSeg_count240hz_cmp_eq0000_wg_cy_1_BXINV_6550
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X35Y18"
    )
    port map (
      IA => SSeg_count240hz_cmp_eq0000_wg_cy_1_LOGIC_ZERO_6547,
      IB => SSeg_count240hz_cmp_eq0000_wg_cy(0),
      SEL => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELG_6541,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYMUXG_6549
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_lut(1),
      O => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYSELG_6541
    );
  SSeg_count240hz_cmp_eq0000_wg_lut_1_Q : X_LUT4
    generic map(
      INIT => X"2000",
      LOC => "SLICE_X35Y18"
    )
    port map (
      ADR0 => SSeg_count240hz(5),
      ADR1 => SSeg_count240hz(3),
      ADR2 => SSeg_count240hz(7),
      ADR3 => SSeg_count240hz(6),
      O => SSeg_count240hz_cmp_eq0000_wg_lut(1)
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y19"
    )
    port map (
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_LOGIC_ZERO_6579
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y19"
    )
    port map (
      IA => SSeg_count240hz_cmp_eq0000_wg_cy_3_LOGIC_ZERO_6579,
      IB => SSeg_count240hz_cmp_eq0000_wg_cy_3_LOGIC_ZERO_6579,
      SEL => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELF_6585,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXF2_6580
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_lut(2),
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELF_6585
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X35Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_cy_1_CYMUXG_6549,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_FASTCARRY_6582
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X35Y19"
    )
    port map (
      I0 => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELG_6573,
      I1 => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELF_6585,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYAND_6583
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X35Y19"
    )
    port map (
      IA => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXG2_6581,
      IB => SSeg_count240hz_cmp_eq0000_wg_cy_3_FASTCARRY_6582,
      SEL => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYAND_6583,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXFAST_6584
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X35Y19"
    )
    port map (
      IA => SSeg_count240hz_cmp_eq0000_wg_cy_3_LOGIC_ZERO_6579,
      IB => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXF2_6580,
      SEL => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELG_6573,
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXG2_6581
    );
  SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X35Y19",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_lut(3),
      O => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYSELG_6573
    );
  SSeg_count240hz_cmp_eq0000_wg_lut_3_Q : X_LUT4
    generic map(
      INIT => X"0100",
      LOC => "SLICE_X35Y19"
    )
    port map (
      ADR0 => SSeg_count240hz(0),
      ADR1 => SSeg_count240hz(13),
      ADR2 => SSeg_count240hz(11),
      ADR3 => SSeg_count240hz(12),
      O => SSeg_count240hz_cmp_eq0000_wg_lut(3)
    );
  SSeg_count240hz_cmp_eq0000_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X35Y20"
    )
    port map (
      O => SSeg_count240hz_cmp_eq0000_LOGIC_ZERO_6606
    );
  SSeg_count240hz_cmp_eq0000_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X35Y20"
    )
    port map (
      IA => SSeg_count240hz_cmp_eq0000_LOGIC_ZERO_6606,
      IB => SSeg_count240hz_cmp_eq0000_CYINIT_6605,
      SEL => SSeg_count240hz_cmp_eq0000_CYSELF_6599,
      O => SSeg_count240hz_cmp_eq0000
    );
  SSeg_count240hz_cmp_eq0000_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X35Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_cy_3_CYMUXFAST_6584,
      O => SSeg_count240hz_cmp_eq0000_CYINIT_6605
    );
  SSeg_count240hz_cmp_eq0000_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X35Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_count240hz_cmp_eq0000_wg_lut(4),
      O => SSeg_count240hz_cmp_eq0000_CYSELF_6599
    );
  SSeg_count240hz_cmp_eq0000_wg_lut_4_Q : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X35Y20"
    )
    port map (
      ADR0 => SSeg_count240hz(16),
      ADR1 => SSeg_count240hz(2),
      ADR2 => SSeg_count240hz(15),
      ADR3 => SSeg_count240hz(14),
      O => SSeg_count240hz_cmp_eq0000_wg_lut(4)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD29",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK,
      O => CLK_INBUF
    );
  AN_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => AN_0_O,
      O => AN(0)
    );
  AN_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => AN_1_O,
      O => AN(1)
    );
  AN_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => AN_2_O,
      O => AN(2)
    );
  AN_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => AN_3_O,
      O => AN(3)
    );
  SW_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(0),
      O => SW_0_INBUF
    );
  SW_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD78",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_0_INBUF,
      O => SW_0_IBUF_1741
    );
  SW_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(1),
      O => SW_1_INBUF
    );
  SW_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_1_INBUF,
      O => SW_1_IBUF_1740
    );
  SW_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(2),
      O => SW_2_INBUF
    );
  SW_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_2_INBUF,
      O => SW_2_IBUF_1744
    );
  SW_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(3),
      O => SW_3_INBUF
    );
  SW_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_3_INBUF,
      O => SW_3_IBUF_1743
    );
  SW_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(4),
      O => SW_4_INBUF
    );
  SW_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_4_INBUF,
      O => SW_4_IBUF_1749
    );
  SW_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(5),
      O => SW_5_INBUF
    );
  SW_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_5_INBUF,
      O => SW_5_IBUF_1748
    );
  SW_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(6),
      O => SW_6_INBUF
    );
  SW_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_6_INBUF,
      O => SW_6_IBUF_1754
    );
  SW_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW(7),
      O => SW_7_INBUF
    );
  SW_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD112",
      PATHPULSE => 638 ps
    )
    port map (
      I => SW_7_INBUF,
      O => SW_7_IBUF_1753
    );
  BTN_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD59",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN(0),
      O => BTN_0_INBUF
    );
  BTN_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD64",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN(1),
      O => BTN_1_INBUF
    );
  BTN_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD68",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN(2),
      O => BTN_2_INBUF
    );
  BTN_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD73",
      PATHPULSE => 638 ps
    )
    port map (
      I => BTN(3),
      O => BTN_3_INBUF
    );
  SEG_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => SEG_0_O,
      O => SEG(0)
    );
  SEG_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => SEG_1_O,
      O => SEG(1)
    );
  SEG_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => SEG_2_O,
      O => SEG(2)
    );
  SEG_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => SEG_3_O,
      O => SEG(3)
    );
  SEG_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => SEG_4_O,
      O => SEG(4)
    );
  SEG_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => SEG_5_O,
      O => SEG(5)
    );
  SEG_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD77"
    )
    port map (
      I => SEG_6_O,
      O => SEG(6)
    );
  CLK_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y11"
    )
    port map (
      I0 => CLK_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => CLK_BUFGP_BUFG_S_INVNOT,
      O => CLK_BUFGP
    );
  CLK_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => CLK_BUFGP_BUFG_S_INVNOT
    );
  CLK_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y11",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_INBUF,
      O => CLK_BUFGP_BUFG_I0_INV
    );
  N21_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => N21_F5MUX_6801,
      O => N21
    );
  N21_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y79"
    )
    port map (
      IA => ALU_Mux_ALU_OUT_0_51,
      IB => N21_F,
      SEL => N21_BXINV_6790,
      O => N21_F5MUX_6801
    );
  N21_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y79",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(2),
      O => N21_BXINV_6790
    );
  ALU_Mux_ALU_OUT_0_511 : X_LUT4
    generic map(
      INIT => X"0032",
      LOC => "SLICE_X66Y79"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => UXCntl_Unit_VALB(0),
      ADR2 => N23,
      ADR3 => UXCntl_Unit_VALB(1),
      O => ALU_Mux_ALU_OUT_0_51
    );
  SSeg_Mmux_hexnum_mux0001257_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001257_F5MUX_6826,
      O => SSeg_Mmux_hexnum_mux0001257
    );
  SSeg_Mmux_hexnum_mux0001257_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y35"
    )
    port map (
      IA => N100,
      IB => N101,
      SEL => SSeg_Mmux_hexnum_mux0001257_BXINV_6819,
      O => SSeg_Mmux_hexnum_mux0001257_F5MUX_6826
    );
  SSeg_Mmux_hexnum_mux0001257_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(1),
      O => SSeg_Mmux_hexnum_mux0001257_BXINV_6819
    );
  SSeg_Mmux_hexnum_mux0001257_F : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => UXCntl_Unit_VALB(0),
      ADR3 => UXCntl_Unit_VALA(4),
      O => N100
    );
  SSeg_Mmux_hexnum_mux0001828_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001828_F5MUX_6851,
      O => SSeg_Mmux_hexnum_mux0001828
    );
  SSeg_Mmux_hexnum_mux0001828_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y23"
    )
    port map (
      IA => N98,
      IB => N99,
      SEL => SSeg_Mmux_hexnum_mux0001828_BXINV_6844,
      O => SSeg_Mmux_hexnum_mux0001828_F5MUX_6851
    );
  SSeg_Mmux_hexnum_mux0001828_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_OPCODE(2),
      O => SSeg_Mmux_hexnum_mux0001828_BXINV_6844
    );
  SSeg_Mmux_hexnum_mux0001828_F : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X64Y23"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(3),
      ADR1 => UXCntl_Unit_VALB(3),
      ADR2 => VCC,
      ADR3 => SSeg_Mmux_hexnum_mux0001825_0,
      O => N98
    );
  SSeg_Mmux_hexnum_mux0001686_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux0001686_F5MUX_6876,
      O => SSeg_Mmux_hexnum_mux0001686
    );
  SSeg_Mmux_hexnum_mux0001686_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y25"
    )
    port map (
      IA => N108,
      IB => N109,
      SEL => SSeg_Mmux_hexnum_mux0001686_BXINV_6869,
      O => SSeg_Mmux_hexnum_mux0001686_F5MUX_6876
    );
  SSeg_Mmux_hexnum_mux0001686_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(2),
      O => SSeg_Mmux_hexnum_mux0001686_BXINV_6869
    );
  SSeg_Mmux_hexnum_mux0001686_F : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X67Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALA(3),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALB(0),
      O => N108
    );
  SSeg_Mmux_hexnum_mux00014107_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014107_F5MUX_6901,
      O => SSeg_Mmux_hexnum_mux00014107
    );
  SSeg_Mmux_hexnum_mux00014107_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y31"
    )
    port map (
      IA => N102,
      IB => N103,
      SEL => SSeg_Mmux_hexnum_mux00014107_BXINV_6894,
      O => SSeg_Mmux_hexnum_mux00014107_F5MUX_6901
    );
  SSeg_Mmux_hexnum_mux00014107_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(0),
      O => SSeg_Mmux_hexnum_mux00014107_BXINV_6894
    );
  SSeg_Mmux_hexnum_mux00014107_F : X_LUT4
    generic map(
      INIT => X"EC20",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(1),
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => UXCntl_Unit_VALA(3),
      ADR3 => N11,
      O => N102
    );
  SSeg_Mmux_hexnum_mux00014107_G : X_LUT4
    generic map(
      INIT => X"7250",
      LOC => "SLICE_X66Y31"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(1),
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => SSeg_Mmux_hexnum_mux0001476_0,
      ADR3 => UXCntl_Unit_VALA(4),
      O => N103
    );
  SSeg_Mmux_hexnum_mux00018194_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018194_F5MUX_6926,
      O => SSeg_Mmux_hexnum_mux00018194
    );
  SSeg_Mmux_hexnum_mux00018194_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y25"
    )
    port map (
      IA => N104,
      IB => N105,
      SEL => SSeg_Mmux_hexnum_mux00018194_BXINV_6919,
      O => SSeg_Mmux_hexnum_mux00018194_F5MUX_6926
    );
  SSeg_Mmux_hexnum_mux00018194_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(0),
      O => SSeg_Mmux_hexnum_mux00018194_BXINV_6919
    );
  SSeg_Mmux_hexnum_mux00018194_F : X_LUT4
    generic map(
      INIT => X"F2F0",
      LOC => "SLICE_X65Y25"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(3),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => SSeg_Mmux_hexnum_mux00018143_0,
      ADR3 => UXCntl_Unit_VALB(2),
      O => N104
    );
  SSeg_Mmux_hexnum_mux00018194_G : X_LUT4
    generic map(
      INIT => X"F0F8",
      LOC => "SLICE_X65Y25"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(4),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => SSeg_Mmux_hexnum_mux00018187_0,
      ADR3 => UXCntl_Unit_VALB(2),
      O => N105
    );
  SSeg_Mmux_hexnum_mux00018290_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00018290_F5MUX_6951,
      O => SSeg_Mmux_hexnum_mux00018290
    );
  SSeg_Mmux_hexnum_mux00018290_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y28"
    )
    port map (
      IA => N96,
      IB => N97,
      SEL => SSeg_Mmux_hexnum_mux00018290_BXINV_6944,
      O => SSeg_Mmux_hexnum_mux00018290_F5MUX_6951
    );
  SSeg_Mmux_hexnum_mux00018290_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_pos(0),
      O => SSeg_Mmux_hexnum_mux00018290_BXINV_6944
    );
  SSeg_Mmux_hexnum_mux00018290_G : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => arith(3),
      ADR1 => SSeg_Mmux_hexnum_mux0001878_0,
      ADR2 => N30,
      ADR3 => SSeg_Mmux_hexnum_mux0001845_0,
      O => N97
    );
  SSeg_Mmux_hexnum_mux00018290_F : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X67Y28"
    )
    port map (
      ADR0 => arith(7),
      ADR1 => SSeg_Mmux_hexnum_mux00018252_0,
      ADR2 => N30,
      ADR3 => SSeg_Mmux_hexnum_mux00018120_0,
      O => N96
    );
  N68_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X65Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => N68_F5MUX_6976,
      O => N68
    );
  N68_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X65Y20"
    )
    port map (
      IA => N106,
      IB => N107,
      SEL => N68_BXINV_6969,
      O => N68_F5MUX_6976
    );
  N68_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X65Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(2),
      O => N68_BXINV_6969
    );
  SSeg_Mmux_hexnum_mux00016263_SW0_F : X_LUT4
    generic map(
      INIT => X"08FF",
      LOC => "SLICE_X65Y20"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(5),
      ADR1 => UXCntl_Unit_VALB(0),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => N78_0,
      O => N106
    );
  SSeg_Mmux_hexnum_mux00016263_SW0_G : X_LUT4
    generic map(
      INIT => X"0ACC",
      LOC => "SLICE_X65Y20"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => N12,
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALB(0),
      O => N107
    );
  SSeg_Mmux_hexnum_mux00012171_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012171_F5MUX_7001,
      O => SSeg_Mmux_hexnum_mux00012171
    );
  SSeg_Mmux_hexnum_mux00012171_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X64Y34"
    )
    port map (
      IA => SSeg_Mmux_hexnum_mux000121712_6991,
      IB => SSeg_Mmux_hexnum_mux000121711_6999,
      SEL => SSeg_Mmux_hexnum_mux00012171_BXINV_6993,
      O => SSeg_Mmux_hexnum_mux00012171_F5MUX_7001
    );
  SSeg_Mmux_hexnum_mux00012171_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X64Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(0),
      O => SSeg_Mmux_hexnum_mux00012171_BXINV_6993
    );
  SSeg_Mmux_hexnum_mux000121712 : X_LUT4
    generic map(
      INIT => X"4000",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(2),
      ADR1 => UXCntl_Unit_VALA(6),
      ADR2 => N23,
      ADR3 => UXCntl_Unit_VALB(1),
      O => SSeg_Mmux_hexnum_mux000121712_6991
    );
  SSeg_Mmux_hexnum_mux00014312_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014312_F5MUX_7026,
      O => SSeg_Mmux_hexnum_mux00014312
    );
  SSeg_Mmux_hexnum_mux00014312_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X67Y20"
    )
    port map (
      IA => SSeg_Mmux_hexnum_mux000143122_7017,
      IB => SSeg_Mmux_hexnum_mux000143121_7024,
      SEL => SSeg_Mmux_hexnum_mux00014312_BXINV_7019,
      O => SSeg_Mmux_hexnum_mux00014312_F5MUX_7026
    );
  SSeg_Mmux_hexnum_mux00014312_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_OPCODE(2),
      O => SSeg_Mmux_hexnum_mux00014312_BXINV_7019
    );
  SSeg_Mmux_hexnum_mux000143122 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALB(5),
      ADR2 => VCC,
      ADR3 => UXCntl_Unit_VALA(5),
      O => SSeg_Mmux_hexnum_mux000143122_7017
    );
  SSeg_Mmux_hexnum_mux00016175_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016175_F5MUX_7051,
      O => SSeg_Mmux_hexnum_mux00016175
    );
  SSeg_Mmux_hexnum_mux00016175_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X66Y33"
    )
    port map (
      IA => SSeg_Mmux_hexnum_mux000161751_7038,
      IB => SSeg_Mmux_hexnum_mux00016175_F,
      SEL => SSeg_Mmux_hexnum_mux00016175_BXINV_7040,
      O => SSeg_Mmux_hexnum_mux00016175_F5MUX_7051
    );
  SSeg_Mmux_hexnum_mux00016175_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => UXCntl_Unit_VALB(2),
      O => SSeg_Mmux_hexnum_mux00016175_BXINV_7040
    );
  SSeg_Mmux_hexnum_mux000161751 : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X66Y33"
    )
    port map (
      ADR0 => N23,
      ADR1 => UXCntl_Unit_VALB(0),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALA(7),
      O => SSeg_Mmux_hexnum_mux000161751_7038
    );
  SSeg_hexnum_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_hexnum_mux0001(0),
      O => SSeg_hexnum_0_DXMUX_7079
    );
  SSeg_hexnum_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00012292_O_pack_1,
      O => SSeg_Mmux_hexnum_mux00012292_O
    );
  SSeg_hexnum_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_hexnum_0_CLKINV_7062
    );
  SSeg_Mmux_hexnum_mux00012292 : X_LUT4
    generic map(
      INIT => X"FCB8",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux00012111_0,
      ADR1 => SSeg_pos(0),
      ADR2 => SSeg_Mmux_hexnum_mux00012263_0,
      ADR3 => SSeg_Mmux_hexnum_mux0001222_0,
      O => SSeg_Mmux_hexnum_mux00012292_O_pack_1
    );
  SSeg_hexnum_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_hexnum_mux0001(1),
      O => SSeg_hexnum_1_DXMUX_7109
    );
  SSeg_hexnum_1_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00014384_SW0_O_pack_2,
      O => SSeg_Mmux_hexnum_mux00014384_SW0_O
    );
  SSeg_hexnum_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y38",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_hexnum_1_CLKINV_7093
    );
  SSeg_Mmux_hexnum_mux00014384_SW0 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux00014147_0,
      ADR1 => VCC,
      ADR2 => SSeg_pos(1),
      ADR3 => SSeg_DP_OUT_1865,
      O => SSeg_Mmux_hexnum_mux00014384_SW0_O_pack_2
    );
  SSeg_hexnum_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_hexnum_mux0001(2),
      O => SSeg_hexnum_2_DXMUX_7139
    );
  SSeg_hexnum_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mmux_hexnum_mux00016330_O_pack_1,
      O => SSeg_Mmux_hexnum_mux00016330_O
    );
  SSeg_hexnum_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_hexnum_2_CLKINV_7122
    );
  SSeg_Mmux_hexnum_mux00016330 : X_LUT4
    generic map(
      INIT => X"FE0E",
      LOC => "SLICE_X66Y28"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux00016180_0,
      ADR1 => SSeg_Mmux_hexnum_mux00016289_0,
      ADR2 => SSeg_pos(0),
      ADR3 => N62_0,
      O => SSeg_Mmux_hexnum_mux00016330_O_pack_1
    );
  SSeg_hexnum_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_hexnum_mux0001(3),
      O => SSeg_hexnum_3_DYMUX_7157
    );
  SSeg_hexnum_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_hexnum_3_CLKINV_7147
    );
  SSeg_Mmux_hexnum_mux00018298 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X67Y31"
    )
    port map (
      ADR0 => SSeg_pos(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_Mmux_hexnum_mux00018290,
      O => SSeg_hexnum_mux0001(3)
    );
  SSeg_AN_OUT_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mrom_AN_OUT_mux00011,
      O => SSeg_AN_OUT_1_DXMUX_7191
    );
  SSeg_AN_OUT_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mrom_AN_OUT_mux0001,
      O => SSeg_AN_OUT_1_DYMUX_7178
    );
  SSeg_AN_OUT_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X67Y61",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_AN_OUT_1_CLKINV_7168
    );
  SSeg_Mrom_AN_OUT_mux000111 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X67Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SSeg_pos(0),
      ADR3 => SSeg_pos(1),
      O => SSeg_Mrom_AN_OUT_mux0001
    );
  SSeg_AN_OUT_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mrom_AN_OUT_mux00013,
      O => SSeg_AN_OUT_3_DXMUX_7225
    );
  SSeg_AN_OUT_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X66Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mrom_AN_OUT_mux00012,
      O => SSeg_AN_OUT_3_DYMUX_7212
    );
  SSeg_AN_OUT_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X66Y81",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_clk240hz_1793,
      O => SSeg_AN_OUT_3_CLKINV_7202
    );
  SSeg_Mrom_AN_OUT_mux000121 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X66Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_pos(1),
      ADR2 => VCC,
      ADR3 => SSeg_pos(0),
      O => SSeg_Mrom_AN_OUT_mux00012
    );
  SSeg_count240hz_11_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_11,
      O => SSeg_count240hz_11_DXMUX_7259
    );
  SSeg_count240hz_11_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_10,
      O => SSeg_count240hz_11_DYMUX_7246
    );
  SSeg_count240hz_11_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y18",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_11_CLKINV_7236
    );
  SSeg_Mcount_count240hz_eqn_101 : X_LUT4
    generic map(
      INIT => X"0F00",
      LOC => "SLICE_X32Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => SSeg_Result(10),
      O => SSeg_Mcount_count240hz_eqn_10
    );
  SSeg_count240hz_13_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_13,
      O => SSeg_count240hz_13_DXMUX_7293
    );
  SSeg_count240hz_13_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X32Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_Mcount_count240hz_eqn_12,
      O => SSeg_count240hz_13_DYMUX_7280
    );
  SSeg_count240hz_13_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X32Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => CLK_BUFGP,
      O => SSeg_count240hz_13_CLKINV_7270
    );
  SSeg_Mcount_count240hz_eqn_121 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X32Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(12),
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_12
    );
  SSeg_count240hz_14 : X_FF
    generic map(
      LOC => "SLICE_X32Y21",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_15_DYMUX_2072,
      CE => VCC,
      CLK => SSeg_count240hz_15_CLKINV_2062,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(14)
    );
  SSeg_Mcount_count240hz_eqn_151 : X_LUT4
    generic map(
      INIT => X"00AA",
      LOC => "SLICE_X32Y21"
    )
    port map (
      ADR0 => SSeg_Result(15),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz_cmp_eq0000,
      O => SSeg_Mcount_count240hz_eqn_15
    );
  SSeg_count240hz_15 : X_FF
    generic map(
      LOC => "SLICE_X32Y21",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_15_DXMUX_2085,
      CE => VCC,
      CLK => SSeg_count240hz_15_CLKINV_2062,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(15)
    );
  SSeg_count240hz_16 : X_FF
    generic map(
      LOC => "SLICE_X35Y22",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_16_DYMUX_2103,
      CE => VCC,
      CLK => SSeg_count240hz_16_CLKINV_2093,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(16)
    );
  SSeg_Mmux_hexnum_mux0001845 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X67Y26"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux000186_0,
      ADR1 => Load_Store_Unit_reg(3),
      ADR2 => SSeg_Mmux_hexnum_mux0001834_1814,
      ADR3 => N31,
      O => SSeg_Mmux_hexnum_mux0001845_2782
    );
  SSeg_Mmux_hexnum_mux00014256 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X66Y20"
    )
    port map (
      ADR0 => N24,
      ADR1 => N22,
      ADR2 => UXCntl_Unit_VALA(3),
      ADR3 => UXCntl_Unit_VALA(2),
      O => SSeg_Mmux_hexnum_mux00014256_2806
    );
  SSeg_Mmux_hexnum_mux00016215_SW0 : X_LUT4
    generic map(
      INIT => X"47FF",
      LOC => "SLICE_X66Y21"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(3),
      ADR1 => UXCntl_Unit_VALB(0),
      ADR2 => UXCntl_Unit_VALA(4),
      ADR3 => UXCntl_Unit_VALB(1),
      O => N78
    );
  SSeg_Mmux_hexnum_mux0001878 : X_LUT4
    generic map(
      INIT => X"CC88",
      LOC => "SLICE_X66Y22"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux0001860_0,
      ADR1 => N23,
      ADR2 => VCC,
      ADR3 => SSeg_Mmux_hexnum_mux0001866_1823,
      O => SSeg_Mmux_hexnum_mux0001878_2854
    );
  SSeg_Mmux_hexnum_mux00018240_SW0 : X_LUT4
    generic map(
      INIT => X"01CD",
      LOC => "SLICE_X64Y24"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(7),
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => UXCntl_Unit_VALA(7),
      ADR3 => SSeg_Mmux_hexnum_mux00018194,
      O => N80
    );
  SSeg_Mmux_hexnum_mux00012263 : X_LUT4
    generic map(
      INIT => X"FCFC",
      LOC => "SLICE_X64Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Mmux_hexnum_mux00012181_0,
      ADR2 => SSeg_Mmux_hexnum_mux00012253_1829,
      ADR3 => VCC,
      O => SSeg_Mmux_hexnum_mux00012263_2902
    );
  SSeg_Mmux_hexnum_mux00012229 : X_LUT4
    generic map(
      INIT => X"FEEE",
      LOC => "SLICE_X66Y24"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux00012205_0,
      ADR1 => SSeg_Mmux_hexnum_mux00012226_0,
      ADR2 => UXCntl_Unit_OPCODE(2),
      ADR3 => SSeg_Mmux_hexnum_mux00012196_1833,
      O => SSeg_Mmux_hexnum_mux00012229_2926
    );
  UXCntl_Unit_VALB_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X64Y22",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_3_DYMUX_2372,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_2_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(2)
    );
  UXCntl_Unit_VALB_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X64Y22",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_3_DXMUX_2377,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_3_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(3)
    );
  UXCntl_Unit_VALA_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y18",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_7_DYMUX_2388,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_6_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(6)
    );
  UXCntl_Unit_VALA_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y18",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_7_DXMUX_2393,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_7_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(7)
    );
  UXCntl_Unit_VALB_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X64Y20",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_5_DYMUX_2404,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_4_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(4)
    );
  UXCntl_Unit_VALB_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X64Y20",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_5_DXMUX_2409,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_5_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(5)
    );
  UXCntl_Unit_VALB_6 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y21",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_7_DYMUX_2420,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_6_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(6)
    );
  UXCntl_Unit_VALB_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y21",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_7_DXMUX_2425,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_7_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(7)
    );
  Load_Store_Unit_w_en_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"1000",
      LOC => "SLICE_X64Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(0),
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => UXCntl_Unit_OPCODE(3),
      ADR3 => UXCntl_Unit_OPCODE(1),
      O => Load_Store_Unit_w_en
    );
  SSeg_Mrom_segnum11 : X_LUT4
    generic map(
      INIT => X"4086",
      LOC => "SLICE_X67Y48"
    )
    port map (
      ADR0 => SSeg_hexnum(2),
      ADR1 => SSeg_hexnum(0),
      ADR2 => SSeg_hexnum(3),
      ADR3 => SSeg_hexnum(1),
      O => SEG_0_OBUF_2474
    );
  BTN_2_OUTPUT_not00011 : X_LUT4
    generic map(
      INIT => X"C030",
      LOC => "SLICE_X64Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_D_STATE(1),
      ADR2 => BTN_2_Count(20),
      ADR3 => BTN_2_D_STATE(0),
      O => BTN_2_OUTPUT_not0001
    );
  UXCntl_Unit_OPCODE_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X64Y39",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_OPCODE_1_DYMUX_2508,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_OPCODE_0_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_OPCODE(0)
    );
  UXCntl_Unit_OPCODE_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X64Y39",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_OPCODE_1_DXMUX_2513,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_OPCODE_1_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_OPCODE(1)
    );
  UXCntl_Unit_OPCODE_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y36",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_OPCODE_3_DYMUX_2524,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_OPCODE_2_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_OPCODE(2)
    );
  UXCntl_Unit_OPCODE_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y36",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_OPCODE_3_DXMUX_2529,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_OPCODE_3_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_OPCODE(3)
    );
  SSeg_Mmux_hexnum_mux00014201 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X66Y30"
    )
    port map (
      ADR0 => N28,
      ADR1 => UXCntl_Unit_VALB(5),
      ADR2 => N21,
      ADR3 => UXCntl_Unit_VALA(5),
      O => SSeg_Mmux_hexnum_mux00014201_2554
    );
  SSeg_Mmux_hexnum_mux0001422 : X_LUT4
    generic map(
      INIT => X"3232",
      LOC => "SLICE_X66Y36"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => UXCntl_Unit_OPCODE(2),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => VCC,
      O => SSeg_Mmux_hexnum_mux0001422_2578
    );
  SSeg_Mmux_hexnum_mux0001476 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X67Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(2),
      ADR1 => UXCntl_Unit_VALA(2),
      ADR2 => UXCntl_Unit_VALA(6),
      ADR3 => VCC,
      O => SSeg_Mmux_hexnum_mux0001476_2602
    );
  SSeg_Mmux_hexnum_mux00016157 : X_LUT4
    generic map(
      INIT => X"F800",
      LOC => "SLICE_X66Y26"
    )
    port map (
      ADR0 => N28,
      ADR1 => UXCntl_Unit_VALB(6),
      ADR2 => N21,
      ADR3 => UXCntl_Unit_VALA(6),
      O => SSeg_Mmux_hexnum_mux00016157_2626
    );
  SSeg_count240hz_0 : X_FF
    generic map(
      LOC => "SLICE_X35Y15",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_1_DYMUX_2124,
      CE => VCC,
      CLK => SSeg_count240hz_1_CLKINV_2114,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(0)
    );
  SSeg_Mcount_count240hz_eqn_17 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X35Y15"
    )
    port map (
      ADR0 => SSeg_Result(1),
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_1
    );
  SSeg_count240hz_1 : X_FF
    generic map(
      LOC => "SLICE_X35Y15",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_1_DXMUX_2137,
      CE => VCC,
      CLK => SSeg_count240hz_1_CLKINV_2114,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(1)
    );
  SSeg_count240hz_2 : X_FF
    generic map(
      LOC => "SLICE_X35Y14",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_3_DYMUX_2158,
      CE => VCC,
      CLK => SSeg_count240hz_3_CLKINV_2148,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(2)
    );
  SSeg_Mcount_count240hz_eqn_31 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X35Y14"
    )
    port map (
      ADR0 => SSeg_Result(3),
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_3
    );
  SSeg_count240hz_3 : X_FF
    generic map(
      LOC => "SLICE_X35Y14",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_3_DXMUX_2171,
      CE => VCC,
      CLK => SSeg_count240hz_3_CLKINV_2148,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(3)
    );
  SSeg_count240hz_4 : X_FF
    generic map(
      LOC => "SLICE_X34Y19",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_5_DYMUX_2192,
      CE => VCC,
      CLK => SSeg_count240hz_5_CLKINV_2182,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(4)
    );
  SSeg_Mcount_count240hz_eqn_51 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X34Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz_cmp_eq0000,
      ADR2 => VCC,
      ADR3 => SSeg_Result(5),
      O => SSeg_Mcount_count240hz_eqn_5
    );
  SSeg_count240hz_5 : X_FF
    generic map(
      LOC => "SLICE_X34Y19",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_5_DXMUX_2205,
      CE => VCC,
      CLK => SSeg_count240hz_5_CLKINV_2182,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(5)
    );
  SSeg_count240hz_6 : X_FF
    generic map(
      LOC => "SLICE_X35Y17",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_7_DYMUX_2226,
      CE => VCC,
      CLK => SSeg_count240hz_7_CLKINV_2216,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(6)
    );
  SSeg_Mcount_count240hz_eqn_71 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X35Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(7),
      ADR2 => VCC,
      ADR3 => SSeg_count240hz_cmp_eq0000,
      O => SSeg_Mcount_count240hz_eqn_7
    );
  SSeg_count240hz_7 : X_FF
    generic map(
      LOC => "SLICE_X35Y17",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_7_DXMUX_2239,
      CE => VCC,
      CLK => SSeg_count240hz_7_CLKINV_2216,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(7)
    );
  SSeg_count240hz_8 : X_FF
    generic map(
      LOC => "SLICE_X32Y19",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_9_DYMUX_2260,
      CE => VCC,
      CLK => SSeg_count240hz_9_CLKINV_2250,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(8)
    );
  SSeg_Mcount_count240hz_eqn_91 : X_LUT4
    generic map(
      INIT => X"0C0C",
      LOC => "SLICE_X32Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(9),
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_9
    );
  SSeg_count240hz_9 : X_FF
    generic map(
      LOC => "SLICE_X32Y19",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_9_DXMUX_2273,
      CE => VCC,
      CLK => SSeg_count240hz_9_CLKINV_2250,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(9)
    );
  ALU_Mux_ALU_OUT_5_131 : X_LUT4
    generic map(
      INIT => X"000C",
      LOC => "SLICE_X67Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => UXCntl_Unit_VALB(0),
      O => N27
    );
  UXCntl_Unit_VALA_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y39",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_1_DYMUX_2308,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_0_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(0)
    );
  UXCntl_Unit_VALA_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y39",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_1_DXMUX_2313,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_1_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(1)
    );
  UXCntl_Unit_VALA_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y23",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_3_DYMUX_2324,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_2_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(2)
    );
  UXCntl_Unit_VALA_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y23",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_3_DXMUX_2329,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_3_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(3)
    );
  UXCntl_Unit_VALB_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y38",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_1_DYMUX_2340,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_0_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(0)
    );
  UXCntl_Unit_VALB_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y38",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALB_1_DXMUX_2345,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALB_1_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALB(1)
    );
  UXCntl_Unit_VALA_4 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y19",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_5_DYMUX_2356,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_4_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(4)
    );
  UXCntl_Unit_VALA_5 : X_LATCHE
    generic map(
      LOC => "SLICE_X65Y19",
      INIT => '0'
    )
    port map (
      I => UXCntl_Unit_VALA_5_DXMUX_2361,
      GE => VCC,
      CLK => NlwInverterSignal_UXCntl_Unit_VALA_5_CLK,
      SET => GND,
      RST => GND,
      O => UXCntl_Unit_VALA(5)
    );
  UXCntl_Unit_OPCODE_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0002",
      LOC => "SLICE_X54Y52"
    )
    port map (
      ADR0 => BTN_1_OUTPUT_1792,
      ADR1 => BTN_3_OUTPUT_1790,
      ADR2 => BTN_2_OUTPUT_1791,
      ADR3 => BTN_0_OUTPUT_1789,
      O => UXCntl_Unit_OPCODE_cmp_eq0000
    );
  SSeg_clk240hz : X_FF
    generic map(
      LOC => "SLICE_X34Y22",
      INIT => '0'
    )
    port map (
      I => SSeg_clk240hz_DYMUX_2660,
      CE => SSeg_clk240hz_CEINV_2657,
      CLK => SSeg_clk240hz_CLKINV_2658,
      SET => GND,
      RST => GND,
      O => SSeg_clk240hz_1793
    );
  SSeg_Mmux_hexnum_mux0001222 : X_LUT4
    generic map(
      INIT => X"FEFA",
      LOC => "SLICE_X66Y37"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux000126_0,
      ADR1 => N31,
      ADR2 => SSeg_Mmux_hexnum_mux0001219_1796,
      ADR3 => Load_Store_Unit_reg(0),
      O => SSeg_Mmux_hexnum_mux0001222_2686
    );
  SSeg_Mmux_hexnum_mux0001285_SW0 : X_LUT4
    generic map(
      INIT => X"0C00",
      LOC => "SLICE_X67Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => UXCntl_Unit_VALB(2),
      ADR3 => UXCntl_Unit_VALA(3),
      O => N82
    );
  SSeg_Mmux_hexnum_mux00012111 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X67Y35"
    )
    port map (
      ADR0 => N30,
      ADR1 => N23,
      ADR2 => arith(0),
      ADR3 => SSeg_Mmux_hexnum_mux0001285_1805,
      O => SSeg_Mmux_hexnum_mux00012111_2734
    );
  SSeg_Mmux_hexnum_mux0001655 : X_LUT4
    generic map(
      INIT => X"FEFC",
      LOC => "SLICE_X64Y31"
    )
    port map (
      ADR0 => Load_Store_Unit_reg(2),
      ADR1 => SSeg_Mmux_hexnum_mux000166_0,
      ADR2 => SSeg_Mmux_hexnum_mux0001643_1810,
      ADR3 => N31,
      O => SSeg_Mmux_hexnum_mux0001655_2758
    );
  SSeg_Mmux_hexnum_mux00018143 : X_LUT4
    generic map(
      INIT => X"88C0",
      LOC => "SLICE_X65Y24"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => UXCntl_Unit_VALA(5),
      ADR3 => UXCntl_Unit_VALB(2),
      O => SSeg_Mmux_hexnum_mux00018143_2950
    );
  SSeg_Mmux_hexnum_mux00016330_SW0 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X67Y27"
    )
    port map (
      ADR0 => N30,
      ADR1 => SSeg_Mmux_hexnum_mux0001655_0,
      ADR2 => arith(2),
      ADR3 => SSeg_Mmux_hexnum_mux00016107_1838,
      O => N62
    );
  BTN_0_Count_and00001 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X66Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_0_D_STATE(0),
      ADR2 => VCC,
      ADR3 => BTN_0_D_STATE(1),
      O => BTN_0_Count_and0000
    );
  SSeg_Mmux_hexnum_mux00018120 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X66Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N31,
      ADR2 => VCC,
      ADR3 => Load_Store_Unit_reg(7),
      O => SSeg_Mmux_hexnum_mux00018120_3022
    );
  SSeg_Mmux_hexnum_mux00016289 : X_LUT4
    generic map(
      INIT => X"EAC0",
      LOC => "SLICE_X64Y28"
    )
    port map (
      ADR0 => N26_0,
      ADR1 => arith(6),
      ADR2 => N30,
      ADR3 => SSeg_Mmux_hexnum_mux00016263_1853,
      O => SSeg_Mmux_hexnum_mux00016289_3046
    );
  ALU_Mux_ALU_OUT_0_71 : X_LUT4
    generic map(
      INIT => X"0808",
      LOC => "SLICE_X64Y26"
    )
    port map (
      ADR0 => UXCntl_Unit_OPCODE(1),
      ADR1 => UXCntl_Unit_OPCODE(0),
      ADR2 => UXCntl_Unit_OPCODE(3),
      ADR3 => VCC,
      O => N26
    );
  SSeg_Mmux_hexnum_mux00018252 : X_LUT4
    generic map(
      INIT => X"FAF8",
      LOC => "SLICE_X64Y25"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(7),
      ADR1 => N21,
      ADR2 => SSeg_Mmux_hexnum_mux00018240_1857,
      ADR3 => SSeg_Mmux_hexnum_mux00018124_0,
      O => SSeg_Mmux_hexnum_mux00018252_3094
    );
  BTN_1_Count_15 : X_SFF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_14_DYMUX_4153,
      CE => BTN_1_Count_14_CEINVNOT,
      CLK => BTN_1_Count_14_CLKINV_4131,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_14_SRINV_4132,
      O => BTN_1_Count(15)
    );
  BTN_1_Count_14 : X_SFF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_14_DXMUX_4171,
      CE => BTN_1_Count_14_CEINVNOT,
      CLK => BTN_1_Count_14_CLKINV_4131,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_14_SRINV_4132,
      O => BTN_1_Count(14)
    );
  BTN_1_Count_17 : X_SFF
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_16_DYMUX_4209,
      CE => BTN_1_Count_16_CEINVNOT,
      CLK => BTN_1_Count_16_CLKINV_4187,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_16_SRINV_4188,
      O => BTN_1_Count(17)
    );
  BTN_1_Count_16 : X_SFF
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_16_DXMUX_4227,
      CE => BTN_1_Count_16_CEINVNOT,
      CLK => BTN_1_Count_16_CLKINV_4187,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_16_SRINV_4188,
      O => BTN_1_Count(16)
    );
  BTN_3_OUTPUT_not00011 : X_LUT4
    generic map(
      INIT => X"A00A",
      LOC => "SLICE_X53Y60"
    )
    port map (
      ADR0 => BTN_3_Count(20),
      ADR1 => VCC,
      ADR2 => BTN_3_D_STATE(0),
      ADR3 => BTN_3_D_STATE(1),
      O => BTN_3_OUTPUT_not0001
    );
  SSeg_DP_OUT : X_FF
    generic map(
      LOC => "SLICE_X66Y39",
      INIT => '1'
    )
    port map (
      I => SSeg_DP_OUT_DYMUX_3126,
      CE => VCC,
      CLK => SSeg_DP_OUT_CLKINV_3124,
      SET => GND,
      RST => GND,
      O => SSeg_DP_OUT_1865
    );
  SSeg_Mmux_hexnum_mux0001643_SW0 : X_LUT4
    generic map(
      INIT => X"FA11",
      LOC => "SLICE_X65Y30"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(2),
      ADR1 => UXCntl_Unit_VALA(2),
      ADR2 => N92,
      ADR3 => UXCntl_Unit_OPCODE(2),
      O => N88
    );
  Load_Store_Unit_reg_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y36",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_1_DYMUX_3163,
      CE => Load_Store_Unit_reg_1_CEINV_3160,
      CLK => Load_Store_Unit_reg_1_CLKINV_3161,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(0)
    );
  Load_Store_Unit_reg_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y36",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_1_DXMUX_3169,
      CE => Load_Store_Unit_reg_1_CEINV_3160,
      CLK => Load_Store_Unit_reg_1_CLKINV_3161,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(1)
    );
  Load_Store_Unit_reg_2 : X_FF
    generic map(
      LOC => "SLICE_X65Y31",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_3_DYMUX_3183,
      CE => Load_Store_Unit_reg_3_CEINV_3180,
      CLK => Load_Store_Unit_reg_3_CLKINV_3181,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(2)
    );
  Load_Store_Unit_reg_3 : X_FF
    generic map(
      LOC => "SLICE_X65Y31",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_3_DXMUX_3189,
      CE => Load_Store_Unit_reg_3_CEINV_3180,
      CLK => Load_Store_Unit_reg_3_CLKINV_3181,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(3)
    );
  Load_Store_Unit_reg_4 : X_FF
    generic map(
      LOC => "SLICE_X64Y32",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_5_DYMUX_3203,
      CE => Load_Store_Unit_reg_5_CEINV_3200,
      CLK => Load_Store_Unit_reg_5_CLKINV_3201,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(4)
    );
  BTN_1_OUTPUT_not00011 : X_LUT4
    generic map(
      INIT => X"8844",
      LOC => "SLICE_X65Y80"
    )
    port map (
      ADR0 => BTN_1_D_STATE(0),
      ADR1 => BTN_1_Count(20),
      ADR2 => VCC,
      ADR3 => BTN_1_D_STATE(1),
      O => BTN_1_OUTPUT_not0001
    );
  SSeg_Mmux_hexnum_mux00012226 : X_LUT4
    generic map(
      INIT => X"B080",
      LOC => "SLICE_X66Y25"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => UXCntl_Unit_VALB(1),
      ADR2 => N25,
      ADR3 => UXCntl_Unit_VALA(3),
      O => SSeg_Mmux_hexnum_mux00012226_3512
    );
  SSeg_Mmux_hexnum_mux0001825 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X66Y23"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => VCC,
      ADR2 => N22,
      ADR3 => UXCntl_Unit_OPCODE(2),
      O => SSeg_Mmux_hexnum_mux0001825_3536
    );
  SSeg_Mmux_hexnum_mux0001669 : X_LUT4
    generic map(
      INIT => X"F888",
      LOC => "SLICE_X67Y21"
    )
    port map (
      ADR0 => N22,
      ADR1 => UXCntl_Unit_VALA(4),
      ADR2 => UXCntl_Unit_VALA(5),
      ADR3 => N24,
      O => SSeg_Mmux_hexnum_mux0001669_3560
    );
  SSeg_Mmux_hexnum_mux00018187 : X_LUT4
    generic map(
      INIT => X"D1C0",
      LOC => "SLICE_X65Y22"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(1),
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => N12,
      ADR3 => UXCntl_Unit_VALA(6),
      O => SSeg_Mmux_hexnum_mux00018187_3584
    );
  SSeg_Mmux_hexnum_mux00014135 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X66Y29"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux00014107,
      ADR1 => N30,
      ADR2 => N23,
      ADR3 => arith(1),
      O => SSeg_Mmux_hexnum_mux00014135_3608
    );
  Load_Store_Unit_reg_5 : X_FF
    generic map(
      LOC => "SLICE_X64Y32",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_5_DXMUX_3209,
      CE => Load_Store_Unit_reg_5_CEINV_3200,
      CLK => Load_Store_Unit_reg_5_CLKINV_3201,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(5)
    );
  Load_Store_Unit_reg_6 : X_FF
    generic map(
      LOC => "SLICE_X67Y32",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_7_DYMUX_3223,
      CE => Load_Store_Unit_reg_7_CEINV_3220,
      CLK => Load_Store_Unit_reg_7_CLKINV_3221,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(6)
    );
  Load_Store_Unit_reg_7 : X_FF
    generic map(
      LOC => "SLICE_X67Y32",
      INIT => '0'
    )
    port map (
      I => Load_Store_Unit_reg_7_DXMUX_3229,
      CE => Load_Store_Unit_reg_7_CEINV_3220,
      CLK => Load_Store_Unit_reg_7_CLKINV_3221,
      SET => GND,
      RST => GND,
      O => Load_Store_Unit_reg(7)
    );
  BTN_0_D_STATE_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y85",
      INIT => '0'
    )
    port map (
      I => BTN_0_D_STATE_1_DYMUX_3241,
      CE => VCC,
      CLK => BTN_0_D_STATE_1_CLKINV_3239,
      SET => GND,
      RST => GND,
      O => BTN_0_D_STATE(0)
    );
  BTN_0_D_STATE_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y85",
      INIT => '0'
    )
    port map (
      I => BTN_0_D_STATE_1_DXMUX_3246,
      CE => VCC,
      CLK => BTN_0_D_STATE_1_CLKINV_3239,
      SET => GND,
      RST => GND,
      O => BTN_0_D_STATE(1)
    );
  SSeg_Mmux_hexnum_mux00014147 : X_LUT4
    generic map(
      INIT => X"FEF0",
      LOC => "SLICE_X67Y37"
    )
    port map (
      ADR0 => SSeg_Mmux_hexnum_mux0001417_0,
      ADR1 => SSeg_Mmux_hexnum_mux0001422_0,
      ADR2 => N74,
      ADR3 => N26_0,
      O => SSeg_Mmux_hexnum_mux00014147_3271
    );
  SSeg_Mmux_hexnum_mux00014346 : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X66Y27"
    )
    port map (
      ADR0 => Load_Store_Unit_reg(5),
      ADR1 => N31,
      ADR2 => N76,
      ADR3 => SSeg_Mmux_hexnum_mux00014201_0,
      O => SSeg_Mmux_hexnum_mux00014346_3295
    );
  SSeg_Mrom_segnum31 : X_LUT4
    generic map(
      INIT => X"8924",
      LOC => "SLICE_X67Y63"
    )
    port map (
      ADR0 => SSeg_hexnum(1),
      ADR1 => SSeg_hexnum(0),
      ADR2 => SSeg_hexnum(3),
      ADR3 => SSeg_hexnum(2),
      O => SEG_3_OBUF_3319
    );
  SSeg_Mrom_segnum51 : X_LUT4
    generic map(
      INIT => X"0D84",
      LOC => "SLICE_X67Y52"
    )
    port map (
      ADR0 => SSeg_hexnum(2),
      ADR1 => SSeg_hexnum(0),
      ADR2 => SSeg_hexnum(3),
      ADR3 => SSeg_hexnum(1),
      O => SEG_5_OBUF_3343
    );
  BTN_1_D_STATE_0 : X_FF
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => '0'
    )
    port map (
      I => BTN_1_D_STATE_1_DYMUX_3365,
      CE => VCC,
      CLK => BTN_1_D_STATE_1_CLKINV_3363,
      SET => GND,
      RST => GND,
      O => BTN_1_D_STATE(0)
    );
  BTN_1_D_STATE_1 : X_FF
    generic map(
      LOC => "SLICE_X64Y80",
      INIT => '0'
    )
    port map (
      I => BTN_1_D_STATE_1_DXMUX_3370,
      CE => VCC,
      CLK => BTN_1_D_STATE_1_CLKINV_3363,
      SET => GND,
      RST => GND,
      O => BTN_1_D_STATE(1)
    );
  BTN_2_D_STATE_0 : X_FF
    generic map(
      LOC => "SLICE_X64Y69",
      INIT => '0'
    )
    port map (
      I => BTN_2_D_STATE_1_DYMUX_3393,
      CE => VCC,
      CLK => BTN_2_D_STATE_1_CLKINV_3391,
      SET => GND,
      RST => GND,
      O => BTN_2_D_STATE(0)
    );
  BTN_2_D_STATE_1 : X_FF
    generic map(
      LOC => "SLICE_X64Y69",
      INIT => '0'
    )
    port map (
      I => BTN_2_D_STATE_1_DXMUX_3398,
      CE => VCC,
      CLK => BTN_2_D_STATE_1_CLKINV_3391,
      SET => GND,
      RST => GND,
      O => BTN_2_D_STATE(1)
    );
  BTN_3_D_STATE_0 : X_FF
    generic map(
      LOC => "SLICE_X52Y60",
      INIT => '0'
    )
    port map (
      I => BTN_3_D_STATE_1_DYMUX_3409,
      CE => VCC,
      CLK => BTN_3_D_STATE_1_CLKINV_3407,
      SET => GND,
      RST => GND,
      O => BTN_3_D_STATE(0)
    );
  BTN_3_D_STATE_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y60",
      INIT => '0'
    )
    port map (
      I => BTN_3_D_STATE_1_DXMUX_3414,
      CE => VCC,
      CLK => BTN_3_D_STATE_1_CLKINV_3407,
      SET => GND,
      RST => GND,
      O => BTN_3_D_STATE(1)
    );
  SSeg_pos_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y39",
      INIT => '0'
    )
    port map (
      I => SSeg_pos_0_DYMUX_3434,
      CE => VCC,
      CLK => SSeg_pos_0_CLKINV_3424,
      SET => GND,
      RST => GND,
      O => SSeg_pos(1)
    );
  SSeg_pos_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y39",
      INIT => '0'
    )
    port map (
      I => SSeg_pos_0_DXMUX_3439,
      CE => VCC,
      CLK => SSeg_pos_0_CLKINV_3424,
      SET => GND,
      RST => GND,
      O => SSeg_pos(0)
    );
  SSeg_Mmux_hexnum_mux00012181 : X_LUT4
    generic map(
      INIT => X"FFEC",
      LOC => "SLICE_X65Y32"
    )
    port map (
      ADR0 => Load_Store_Unit_reg(4),
      ADR1 => SSeg_Mmux_hexnum_mux00012171,
      ADR2 => N31,
      ADR3 => SSeg_Mmux_hexnum_mux00012151_0,
      O => SSeg_Mmux_hexnum_mux00012181_3464
    );
  SSeg_Mmux_hexnum_mux00012151 : X_LUT4
    generic map(
      INIT => X"C888",
      LOC => "SLICE_X64Y27"
    )
    port map (
      ADR0 => N21,
      ADR1 => UXCntl_Unit_VALA(4),
      ADR2 => N28,
      ADR3 => UXCntl_Unit_VALB(4),
      O => SSeg_Mmux_hexnum_mux00012151_3632
    );
  SSeg_Mmux_hexnum_mux00014346_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"ECA0",
      LOC => "SLICE_X67Y33"
    )
    port map (
      ADR0 => arith(5),
      ADR1 => SSeg_Mmux_hexnum_mux00014312,
      ADR2 => N30,
      ADR3 => N26_0,
      O => N90
    );
  SSeg_Mmux_hexnum_mux0001278 : X_LUT4
    generic map(
      INIT => X"CE02",
      LOC => "SLICE_X66Y34"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(1),
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => UXCntl_Unit_VALB(1),
      ADR3 => N11,
      O => SSeg_Mmux_hexnum_mux0001278_3680
    );
  BTN_0_OUTPUT : X_FF
    generic map(
      LOC => "SLICE_X66Y85",
      INIT => '0'
    )
    port map (
      I => BTN_0_OUTPUT_DYMUX_3690,
      CE => BTN_0_OUTPUT_CEINV_3687,
      CLK => BTN_0_OUTPUT_CLKINV_3688,
      SET => GND,
      RST => GND,
      O => BTN_0_OUTPUT_1789
    );
  BTN_1_Count_1 : X_SFF
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_0_DYMUX_3722,
      CE => BTN_1_Count_0_CEINVNOT,
      CLK => BTN_1_Count_0_CLKINV_3705,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_0_SRINV_3706,
      O => BTN_1_Count(1)
    );
  BTN_1_Mcount_Count_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X67Y70"
    )
    port map (
      ADR0 => BTN_1_Count(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Mcount_Count_lut(0)
    );
  BTN_1_Count_0 : X_SFF
    generic map(
      LOC => "SLICE_X67Y70",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_0_DXMUX_3743,
      CE => BTN_1_Count_0_CEINVNOT,
      CLK => BTN_1_Count_0_CLKINV_3705,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_0_SRINV_3706,
      O => BTN_1_Count(0)
    );
  BTN_1_Count_4 : X_SFF
    generic map(
      LOC => "SLICE_X67Y72",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_4_DXMUX_3879,
      CE => BTN_1_Count_4_CEINVNOT,
      CLK => BTN_1_Count_4_CLKINV_3839,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_4_SRINV_3840,
      O => BTN_1_Count(4)
    );
  BTN_3_OUTPUT : X_FF
    generic map(
      LOC => "SLICE_X52Y61",
      INIT => '0'
    )
    port map (
      I => BTN_3_OUTPUT_DYMUX_3892,
      CE => BTN_3_OUTPUT_CEINV_3889,
      CLK => BTN_3_OUTPUT_CLKINV_3890,
      SET => GND,
      RST => GND,
      O => BTN_3_OUTPUT_1790
    );
  BTN_1_Count_7 : X_SFF
    generic map(
      LOC => "SLICE_X67Y73",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_6_DYMUX_3929,
      CE => BTN_1_Count_6_CEINVNOT,
      CLK => BTN_1_Count_6_CLKINV_3907,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_6_SRINV_3908,
      O => BTN_1_Count(7)
    );
  BTN_1_Count_6 : X_SFF
    generic map(
      LOC => "SLICE_X67Y73",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_6_DXMUX_3947,
      CE => BTN_1_Count_6_CEINVNOT,
      CLK => BTN_1_Count_6_CLKINV_3907,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_6_SRINV_3908,
      O => BTN_1_Count(6)
    );
  BTN_1_Count_9 : X_SFF
    generic map(
      LOC => "SLICE_X67Y74",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_8_DYMUX_3985,
      CE => BTN_1_Count_8_CEINVNOT,
      CLK => BTN_1_Count_8_CLKINV_3963,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_8_SRINV_3964,
      O => BTN_1_Count(9)
    );
  BTN_1_OUTPUT : X_FF
    generic map(
      LOC => "SLICE_X64Y81",
      INIT => '0'
    )
    port map (
      I => BTN_1_OUTPUT_DYMUX_3756,
      CE => BTN_1_OUTPUT_CEINV_3753,
      CLK => BTN_1_OUTPUT_CLKINV_3754,
      SET => GND,
      RST => GND,
      O => BTN_1_OUTPUT_1792
    );
  BTN_1_Count_3 : X_SFF
    generic map(
      LOC => "SLICE_X67Y71",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_2_DYMUX_3793,
      CE => BTN_1_Count_2_CEINVNOT,
      CLK => BTN_1_Count_2_CLKINV_3771,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_2_SRINV_3772,
      O => BTN_1_Count(3)
    );
  BTN_1_Count_2 : X_SFF
    generic map(
      LOC => "SLICE_X67Y71",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_2_DXMUX_3811,
      CE => BTN_1_Count_2_CEINVNOT,
      CLK => BTN_1_Count_2_CLKINV_3771,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_2_SRINV_3772,
      O => BTN_1_Count(2)
    );
  BTN_2_OUTPUT : X_FF
    generic map(
      LOC => "SLICE_X64Y66",
      INIT => '0'
    )
    port map (
      I => BTN_2_OUTPUT_DYMUX_3824,
      CE => BTN_2_OUTPUT_CEINV_3821,
      CLK => BTN_2_OUTPUT_CLKINV_3822,
      SET => GND,
      RST => GND,
      O => BTN_2_OUTPUT_1791
    );
  BTN_1_Count_5 : X_SFF
    generic map(
      LOC => "SLICE_X67Y72",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_4_DYMUX_3861,
      CE => BTN_1_Count_4_CEINVNOT,
      CLK => BTN_1_Count_4_CLKINV_3839,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_4_SRINV_3840,
      O => BTN_1_Count(5)
    );
  BTN_3_Count_11 : X_SFF
    generic map(
      LOC => "SLICE_X53Y66",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_10_DYMUX_6258,
      CE => BTN_3_Count_10_CEINVNOT,
      CLK => BTN_3_Count_10_CLKINV_6236,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_10_SRINV_6237,
      O => BTN_3_Count(11)
    );
  BTN_3_Count_10 : X_SFF
    generic map(
      LOC => "SLICE_X53Y66",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_10_DXMUX_6276,
      CE => BTN_3_Count_10_CEINVNOT,
      CLK => BTN_3_Count_10_CLKINV_6236,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_10_SRINV_6237,
      O => BTN_3_Count(10)
    );
  BTN_3_Count_13 : X_SFF
    generic map(
      LOC => "SLICE_X53Y67",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_12_DYMUX_6314,
      CE => BTN_3_Count_12_CEINVNOT,
      CLK => BTN_3_Count_12_CLKINV_6292,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_12_SRINV_6293,
      O => BTN_3_Count(13)
    );
  BTN_3_Count_12 : X_SFF
    generic map(
      LOC => "SLICE_X53Y67",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_12_DXMUX_6332,
      CE => BTN_3_Count_12_CEINVNOT,
      CLK => BTN_3_Count_12_CLKINV_6292,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_12_SRINV_6293,
      O => BTN_3_Count(12)
    );
  BTN_1_Count_8 : X_SFF
    generic map(
      LOC => "SLICE_X67Y74",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_8_DXMUX_4003,
      CE => BTN_1_Count_8_CEINVNOT,
      CLK => BTN_1_Count_8_CLKINV_3963,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_8_SRINV_3964,
      O => BTN_1_Count(8)
    );
  BTN_1_Count_11 : X_SFF
    generic map(
      LOC => "SLICE_X67Y75",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_10_DYMUX_4041,
      CE => BTN_1_Count_10_CEINVNOT,
      CLK => BTN_1_Count_10_CLKINV_4019,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_10_SRINV_4020,
      O => BTN_1_Count(11)
    );
  BTN_1_Count_10 : X_SFF
    generic map(
      LOC => "SLICE_X67Y75",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_10_DXMUX_4059,
      CE => BTN_1_Count_10_CEINVNOT,
      CLK => BTN_1_Count_10_CLKINV_4019,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_10_SRINV_4020,
      O => BTN_1_Count(10)
    );
  BTN_1_Count_13 : X_SFF
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_12_DYMUX_4097,
      CE => BTN_1_Count_12_CEINVNOT,
      CLK => BTN_1_Count_12_CLKINV_4075,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_12_SRINV_4076,
      O => BTN_1_Count(13)
    );
  BTN_1_Count_12 : X_SFF
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_12_DXMUX_4115,
      CE => BTN_1_Count_12_CEINVNOT,
      CLK => BTN_1_Count_12_CLKINV_4075,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_12_SRINV_4076,
      O => BTN_1_Count(12)
    );
  BTN_1_Count_19 : X_SFF
    generic map(
      LOC => "SLICE_X67Y79",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_18_DYMUX_4265,
      CE => BTN_1_Count_18_CEINVNOT,
      CLK => BTN_1_Count_18_CLKINV_4243,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_18_SRINV_4244,
      O => BTN_1_Count(19)
    );
  BTN_1_Count_18 : X_SFF
    generic map(
      LOC => "SLICE_X67Y79",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_18_DXMUX_4283,
      CE => BTN_1_Count_18_CEINVNOT,
      CLK => BTN_1_Count_18_CLKINV_4243,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_18_SRINV_4244,
      O => BTN_1_Count(18)
    );
  BTN_1_Count_20_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y80"
    )
    port map (
      ADR0 => BTN_1_Count(20),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_20_rt_4305
    );
  BTN_1_Count_20 : X_SFF
    generic map(
      LOC => "SLICE_X67Y80",
      INIT => '0'
    )
    port map (
      I => BTN_1_Count_20_DXMUX_4310,
      CE => BTN_1_Count_20_CEINVNOT,
      CLK => BTN_1_Count_20_CLKINV_4296,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_1_Count_20_SRINV_4297,
      O => BTN_1_Count(20)
    );
  Arith_Unit_Maddsub_arith_lut_0_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X65Y26"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => UXCntl_Unit_VALA(0),
      ADR2 => VCC,
      ADR3 => Arith_Unit_arith_cmp_eq0000_0,
      O => Arith_Unit_Maddsub_arith_lut(0)
    );
  Arith_Unit_Maddsub_arith_lut_2_Q : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X65Y27"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(2),
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => VCC,
      ADR3 => Arith_Unit_arith_cmp_eq0000_0,
      O => Arith_Unit_Maddsub_arith_lut(2)
    );
  Arith_Unit_Maddsub_arith_lut_4_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X65Y28"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(4),
      ADR1 => UXCntl_Unit_VALA(4),
      ADR2 => Arith_Unit_arith_cmp_eq0000_0,
      ADR3 => VCC,
      O => Arith_Unit_Maddsub_arith_lut(4)
    );
  Arith_Unit_Maddsub_arith_lut_6_Q : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X65Y29"
    )
    port map (
      ADR0 => UXCntl_Unit_VALA(6),
      ADR1 => UXCntl_Unit_VALB(6),
      ADR2 => Arith_Unit_arith_cmp_eq0000_0,
      ADR3 => VCC,
      O => Arith_Unit_Maddsub_arith_lut(6)
    );
  BTN_0_Count_1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_0_DYMUX_4488,
      CE => BTN_0_Count_0_CEINVNOT,
      CLK => BTN_0_Count_0_CLKINV_4471,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_0_SRINV_4472,
      O => BTN_0_Count(1)
    );
  BTN_0_Count_8 : X_SFF
    generic map(
      LOC => "SLICE_X65Y85",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_8_DXMUX_4733,
      CE => BTN_0_Count_8_CEINVNOT,
      CLK => BTN_0_Count_8_CLKINV_4693,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_8_SRINV_4694,
      O => BTN_0_Count(8)
    );
  BTN_0_Count_11 : X_SFF
    generic map(
      LOC => "SLICE_X65Y86",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_10_DYMUX_4771,
      CE => BTN_0_Count_10_CEINVNOT,
      CLK => BTN_0_Count_10_CLKINV_4749,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_10_SRINV_4750,
      O => BTN_0_Count(11)
    );
  BTN_0_Count_10 : X_SFF
    generic map(
      LOC => "SLICE_X65Y86",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_10_DXMUX_4789,
      CE => BTN_0_Count_10_CEINVNOT,
      CLK => BTN_0_Count_10_CLKINV_4749,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_10_SRINV_4750,
      O => BTN_0_Count(10)
    );
  BTN_0_Count_13 : X_SFF
    generic map(
      LOC => "SLICE_X65Y87",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_12_DYMUX_4827,
      CE => BTN_0_Count_12_CEINVNOT,
      CLK => BTN_0_Count_12_CLKINV_4805,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_12_SRINV_4806,
      O => BTN_0_Count(13)
    );
  BTN_0_Count_12 : X_SFF
    generic map(
      LOC => "SLICE_X65Y87",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_12_DXMUX_4845,
      CE => BTN_0_Count_12_CEINVNOT,
      CLK => BTN_0_Count_12_CLKINV_4805,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_12_SRINV_4806,
      O => BTN_0_Count(12)
    );
  BTN_0_Count_4 : X_SFF
    generic map(
      LOC => "SLICE_X65Y83",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_4_DXMUX_4621,
      CE => BTN_0_Count_4_CEINVNOT,
      CLK => BTN_0_Count_4_CLKINV_4581,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_4_SRINV_4582,
      O => BTN_0_Count(4)
    );
  BTN_0_Count_7 : X_SFF
    generic map(
      LOC => "SLICE_X65Y84",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_6_DYMUX_4659,
      CE => BTN_0_Count_6_CEINVNOT,
      CLK => BTN_0_Count_6_CLKINV_4637,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_6_SRINV_4638,
      O => BTN_0_Count(7)
    );
  BTN_0_Count_6 : X_SFF
    generic map(
      LOC => "SLICE_X65Y84",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_6_DXMUX_4677,
      CE => BTN_0_Count_6_CEINVNOT,
      CLK => BTN_0_Count_6_CLKINV_4637,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_6_SRINV_4638,
      O => BTN_0_Count(6)
    );
  BTN_0_Count_9 : X_SFF
    generic map(
      LOC => "SLICE_X65Y85",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_8_DYMUX_4715,
      CE => BTN_0_Count_8_CEINVNOT,
      CLK => BTN_0_Count_8_CLKINV_4693,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_8_SRINV_4694,
      O => BTN_0_Count(9)
    );
  BTN_0_Mcount_Count_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"5555",
      LOC => "SLICE_X65Y81"
    )
    port map (
      ADR0 => BTN_0_Count(0),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Mcount_Count_lut(0)
    );
  BTN_0_Count_0 : X_SFF
    generic map(
      LOC => "SLICE_X65Y81",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_0_DXMUX_4509,
      CE => BTN_0_Count_0_CEINVNOT,
      CLK => BTN_0_Count_0_CLKINV_4471,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_0_SRINV_4472,
      O => BTN_0_Count(0)
    );
  BTN_0_Count_3 : X_SFF
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_2_DYMUX_4547,
      CE => BTN_0_Count_2_CEINVNOT,
      CLK => BTN_0_Count_2_CLKINV_4525,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_2_SRINV_4526,
      O => BTN_0_Count(3)
    );
  BTN_0_Count_2 : X_SFF
    generic map(
      LOC => "SLICE_X65Y82",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_2_DXMUX_4565,
      CE => BTN_0_Count_2_CEINVNOT,
      CLK => BTN_0_Count_2_CLKINV_4525,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_2_SRINV_4526,
      O => BTN_0_Count(2)
    );
  BTN_0_Count_5 : X_SFF
    generic map(
      LOC => "SLICE_X65Y83",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_4_DYMUX_4603,
      CE => BTN_0_Count_4_CEINVNOT,
      CLK => BTN_0_Count_4_CLKINV_4581,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_4_SRINV_4582,
      O => BTN_0_Count(5)
    );
  BTN_2_Count_5 : X_SFF
    generic map(
      LOC => "SLICE_X65Y69",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_4_DYMUX_5505,
      CE => BTN_2_Count_4_CEINVNOT,
      CLK => BTN_2_Count_4_CLKINV_5483,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_4_SRINV_5484,
      O => BTN_2_Count(5)
    );
  BTN_2_Count_4 : X_SFF
    generic map(
      LOC => "SLICE_X65Y69",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_4_DXMUX_5523,
      CE => BTN_2_Count_4_CEINVNOT,
      CLK => BTN_2_Count_4_CLKINV_5483,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_4_SRINV_5484,
      O => BTN_2_Count(4)
    );
  BTN_2_Count_7 : X_SFF
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_6_DYMUX_5561,
      CE => BTN_2_Count_6_CEINVNOT,
      CLK => BTN_2_Count_6_CLKINV_5539,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_6_SRINV_5540,
      O => BTN_2_Count(7)
    );
  BTN_2_Count_6 : X_SFF
    generic map(
      LOC => "SLICE_X65Y70",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_6_DXMUX_5579,
      CE => BTN_2_Count_6_CEINVNOT,
      CLK => BTN_2_Count_6_CLKINV_5539,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_6_SRINV_5540,
      O => BTN_2_Count(6)
    );
  BTN_0_Count_18 : X_SFF
    generic map(
      LOC => "SLICE_X65Y90",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_18_DXMUX_5013,
      CE => BTN_0_Count_18_CEINVNOT,
      CLK => BTN_0_Count_18_CLKINV_4973,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_18_SRINV_4974,
      O => BTN_0_Count(18)
    );
  BTN_0_Count_20_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y91"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_0_Count(20),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_20_rt_5035
    );
  BTN_0_Count_20 : X_SFF
    generic map(
      LOC => "SLICE_X65Y91",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_20_DXMUX_5040,
      CE => BTN_0_Count_20_CEINVNOT,
      CLK => BTN_0_Count_20_CLKINV_5026,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_20_SRINV_5027,
      O => BTN_0_Count(20)
    );
  SSeg_Mcount_count240hz_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X33Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(0),
      O => SSeg_Mcount_count240hz_lut(0)
    );
  BTN_0_Count_15 : X_SFF
    generic map(
      LOC => "SLICE_X65Y88",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_14_DYMUX_4883,
      CE => BTN_0_Count_14_CEINVNOT,
      CLK => BTN_0_Count_14_CLKINV_4861,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_14_SRINV_4862,
      O => BTN_0_Count(15)
    );
  BTN_0_Count_14 : X_SFF
    generic map(
      LOC => "SLICE_X65Y88",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_14_DXMUX_4901,
      CE => BTN_0_Count_14_CEINVNOT,
      CLK => BTN_0_Count_14_CLKINV_4861,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_14_SRINV_4862,
      O => BTN_0_Count(14)
    );
  BTN_0_Count_17 : X_SFF
    generic map(
      LOC => "SLICE_X65Y89",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_16_DYMUX_4939,
      CE => BTN_0_Count_16_CEINVNOT,
      CLK => BTN_0_Count_16_CLKINV_4917,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_16_SRINV_4918,
      O => BTN_0_Count(17)
    );
  BTN_0_Count_16 : X_SFF
    generic map(
      LOC => "SLICE_X65Y89",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_16_DXMUX_4957,
      CE => BTN_0_Count_16_CEINVNOT,
      CLK => BTN_0_Count_16_CLKINV_4917,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_16_SRINV_4918,
      O => BTN_0_Count(16)
    );
  BTN_0_Count_19 : X_SFF
    generic map(
      LOC => "SLICE_X65Y90",
      INIT => '0'
    )
    port map (
      I => BTN_0_Count_18_DYMUX_4995,
      CE => BTN_0_Count_18_CEINVNOT,
      CLK => BTN_0_Count_18_CLKINV_4973,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_0_Count_18_SRINV_4974,
      O => BTN_0_Count(19)
    );
  BTN_2_Count_12 : X_SFF
    generic map(
      LOC => "SLICE_X65Y73",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_12_DXMUX_5747,
      CE => BTN_2_Count_12_CEINVNOT,
      CLK => BTN_2_Count_12_CLKINV_5707,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_12_SRINV_5708,
      O => BTN_2_Count(12)
    );
  BTN_2_Count_15 : X_SFF
    generic map(
      LOC => "SLICE_X65Y74",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_14_DYMUX_5785,
      CE => BTN_2_Count_14_CEINVNOT,
      CLK => BTN_2_Count_14_CLKINV_5763,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_14_SRINV_5764,
      O => BTN_2_Count(15)
    );
  BTN_2_Count_14 : X_SFF
    generic map(
      LOC => "SLICE_X65Y74",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_14_DXMUX_5803,
      CE => BTN_2_Count_14_CEINVNOT,
      CLK => BTN_2_Count_14_CLKINV_5763,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_14_SRINV_5764,
      O => BTN_2_Count(14)
    );
  BTN_2_Count_17 : X_SFF
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_16_DYMUX_5841,
      CE => BTN_2_Count_16_CEINVNOT,
      CLK => BTN_2_Count_16_CLKINV_5819,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_16_SRINV_5820,
      O => BTN_2_Count(17)
    );
  BTN_2_Count_1 : X_SFF
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_0_DYMUX_5390,
      CE => BTN_2_Count_0_CEINVNOT,
      CLK => BTN_2_Count_0_CLKINV_5373,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_0_SRINV_5374,
      O => BTN_2_Count(1)
    );
  BTN_2_Mcount_Count_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X65Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(0),
      O => BTN_2_Mcount_Count_lut(0)
    );
  BTN_2_Count_0 : X_SFF
    generic map(
      LOC => "SLICE_X65Y67",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_0_DXMUX_5411,
      CE => BTN_2_Count_0_CEINVNOT,
      CLK => BTN_2_Count_0_CLKINV_5373,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_0_SRINV_5374,
      O => BTN_2_Count(0)
    );
  BTN_2_Count_3 : X_SFF
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_2_DYMUX_5449,
      CE => BTN_2_Count_2_CEINVNOT,
      CLK => BTN_2_Count_2_CLKINV_5427,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_2_SRINV_5428,
      O => BTN_2_Count(3)
    );
  BTN_2_Count_2 : X_SFF
    generic map(
      LOC => "SLICE_X65Y68",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_2_DXMUX_5467,
      CE => BTN_2_Count_2_CEINVNOT,
      CLK => BTN_2_Count_2_CLKINV_5427,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_2_SRINV_5428,
      O => BTN_2_Count(2)
    );
  BTN_3_Count_18 : X_SFF
    generic map(
      LOC => "SLICE_X53Y70",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_18_DXMUX_6500,
      CE => BTN_3_Count_18_CEINVNOT,
      CLK => BTN_3_Count_18_CLKINV_6460,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_18_SRINV_6461,
      O => BTN_3_Count(18)
    );
  BTN_3_Count_20_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_3_Count(20),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_20_rt_6522
    );
  BTN_3_Count_20 : X_SFF
    generic map(
      LOC => "SLICE_X53Y71",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_20_DXMUX_6527,
      CE => BTN_3_Count_20_CEINVNOT,
      CLK => BTN_3_Count_20_CLKINV_6513,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_20_SRINV_6514,
      O => BTN_3_Count(20)
    );
  SSeg_count240hz_cmp_eq0000_wg_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X35Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(4),
      O => SSeg_count240hz_cmp_eq0000_wg_lut(0)
    );
  SSeg_count240hz_cmp_eq0000_wg_lut_2_Q : X_LUT4
    generic map(
      INIT => X"0800",
      LOC => "SLICE_X35Y19"
    )
    port map (
      ADR0 => SSeg_count240hz(9),
      ADR1 => SSeg_count240hz(10),
      ADR2 => SSeg_count240hz(8),
      ADR3 => SSeg_count240hz(1),
      O => SSeg_count240hz_cmp_eq0000_wg_lut(2)
    );
  BTN_2_Count_9 : X_SFF
    generic map(
      LOC => "SLICE_X65Y71",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_8_DYMUX_5617,
      CE => BTN_2_Count_8_CEINVNOT,
      CLK => BTN_2_Count_8_CLKINV_5595,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_8_SRINV_5596,
      O => BTN_2_Count(9)
    );
  BTN_2_Count_8 : X_SFF
    generic map(
      LOC => "SLICE_X65Y71",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_8_DXMUX_5635,
      CE => BTN_2_Count_8_CEINVNOT,
      CLK => BTN_2_Count_8_CLKINV_5595,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_8_SRINV_5596,
      O => BTN_2_Count(8)
    );
  BTN_2_Count_11 : X_SFF
    generic map(
      LOC => "SLICE_X65Y72",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_10_DYMUX_5673,
      CE => BTN_2_Count_10_CEINVNOT,
      CLK => BTN_2_Count_10_CLKINV_5651,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_10_SRINV_5652,
      O => BTN_2_Count(11)
    );
  BTN_2_Count_10 : X_SFF
    generic map(
      LOC => "SLICE_X65Y72",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_10_DXMUX_5691,
      CE => BTN_2_Count_10_CEINVNOT,
      CLK => BTN_2_Count_10_CLKINV_5651,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_10_SRINV_5652,
      O => BTN_2_Count(10)
    );
  BTN_2_Count_13 : X_SFF
    generic map(
      LOC => "SLICE_X65Y73",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_12_DYMUX_5729,
      CE => BTN_2_Count_12_CEINVNOT,
      CLK => BTN_2_Count_12_CLKINV_5707,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_12_SRINV_5708,
      O => BTN_2_Count(13)
    );
  BTN_2_Count_16 : X_SFF
    generic map(
      LOC => "SLICE_X65Y75",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_16_DXMUX_5859,
      CE => BTN_2_Count_16_CEINVNOT,
      CLK => BTN_2_Count_16_CLKINV_5819,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_16_SRINV_5820,
      O => BTN_2_Count(16)
    );
  BTN_2_Count_19 : X_SFF
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_18_DYMUX_5897,
      CE => BTN_2_Count_18_CEINVNOT,
      CLK => BTN_2_Count_18_CLKINV_5875,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_18_SRINV_5876,
      O => BTN_2_Count(19)
    );
  BTN_2_Count_18 : X_SFF
    generic map(
      LOC => "SLICE_X65Y76",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_18_DXMUX_5915,
      CE => BTN_2_Count_18_CEINVNOT,
      CLK => BTN_2_Count_18_CLKINV_5875,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_18_SRINV_5876,
      O => BTN_2_Count(18)
    );
  BTN_2_Count_20_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(20),
      O => BTN_2_Count_20_rt_5937
    );
  BTN_2_Count_20 : X_SFF
    generic map(
      LOC => "SLICE_X65Y77",
      INIT => '0'
    )
    port map (
      I => BTN_2_Count_20_DXMUX_5942,
      CE => BTN_2_Count_20_CEINVNOT,
      CLK => BTN_2_Count_20_CLKINV_5928,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_2_Count_20_SRINV_5929,
      O => BTN_2_Count(20)
    );
  BTN_3_Count_1 : X_SFF
    generic map(
      LOC => "SLICE_X53Y61",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_0_DYMUX_5975,
      CE => BTN_3_Count_0_CEINVNOT,
      CLK => BTN_3_Count_0_CLKINV_5958,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_0_SRINV_5959,
      O => BTN_3_Count(1)
    );
  BTN_3_Mcount_Count_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X53Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_3_Count(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Mcount_Count_lut(0)
    );
  BTN_3_Count_0 : X_SFF
    generic map(
      LOC => "SLICE_X53Y61",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_0_DXMUX_5996,
      CE => BTN_3_Count_0_CEINVNOT,
      CLK => BTN_3_Count_0_CLKINV_5958,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_0_SRINV_5959,
      O => BTN_3_Count(0)
    );
  BTN_3_Count_3 : X_SFF
    generic map(
      LOC => "SLICE_X53Y62",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_2_DYMUX_6034,
      CE => BTN_3_Count_2_CEINVNOT,
      CLK => BTN_3_Count_2_CLKINV_6012,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_2_SRINV_6013,
      O => BTN_3_Count(3)
    );
  BTN_3_Count_2 : X_SFF
    generic map(
      LOC => "SLICE_X53Y62",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_2_DXMUX_6052,
      CE => BTN_3_Count_2_CEINVNOT,
      CLK => BTN_3_Count_2_CLKINV_6012,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_2_SRINV_6013,
      O => BTN_3_Count(2)
    );
  BTN_3_Count_5 : X_SFF
    generic map(
      LOC => "SLICE_X53Y63",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_4_DYMUX_6090,
      CE => BTN_3_Count_4_CEINVNOT,
      CLK => BTN_3_Count_4_CLKINV_6068,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_4_SRINV_6069,
      O => BTN_3_Count(5)
    );
  BTN_3_Count_4 : X_SFF
    generic map(
      LOC => "SLICE_X53Y63",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_4_DXMUX_6108,
      CE => BTN_3_Count_4_CEINVNOT,
      CLK => BTN_3_Count_4_CLKINV_6068,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_4_SRINV_6069,
      O => BTN_3_Count(4)
    );
  BTN_3_Count_7 : X_SFF
    generic map(
      LOC => "SLICE_X53Y64",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_6_DYMUX_6146,
      CE => BTN_3_Count_6_CEINVNOT,
      CLK => BTN_3_Count_6_CLKINV_6124,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_6_SRINV_6125,
      O => BTN_3_Count(7)
    );
  BTN_3_Count_6 : X_SFF
    generic map(
      LOC => "SLICE_X53Y64",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_6_DXMUX_6164,
      CE => BTN_3_Count_6_CEINVNOT,
      CLK => BTN_3_Count_6_CLKINV_6124,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_6_SRINV_6125,
      O => BTN_3_Count(6)
    );
  BTN_3_Count_9 : X_SFF
    generic map(
      LOC => "SLICE_X53Y65",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_8_DYMUX_6202,
      CE => BTN_3_Count_8_CEINVNOT,
      CLK => BTN_3_Count_8_CLKINV_6180,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_8_SRINV_6181,
      O => BTN_3_Count(9)
    );
  BTN_3_Count_8 : X_SFF
    generic map(
      LOC => "SLICE_X53Y65",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_8_DXMUX_6220,
      CE => BTN_3_Count_8_CEINVNOT,
      CLK => BTN_3_Count_8_CLKINV_6180,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_8_SRINV_6181,
      O => BTN_3_Count(8)
    );
  BTN_3_Count_15 : X_SFF
    generic map(
      LOC => "SLICE_X53Y68",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_14_DYMUX_6370,
      CE => BTN_3_Count_14_CEINVNOT,
      CLK => BTN_3_Count_14_CLKINV_6348,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_14_SRINV_6349,
      O => BTN_3_Count(15)
    );
  BTN_3_Count_14 : X_SFF
    generic map(
      LOC => "SLICE_X53Y68",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_14_DXMUX_6388,
      CE => BTN_3_Count_14_CEINVNOT,
      CLK => BTN_3_Count_14_CLKINV_6348,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_14_SRINV_6349,
      O => BTN_3_Count(14)
    );
  BTN_3_Count_17 : X_SFF
    generic map(
      LOC => "SLICE_X53Y69",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_16_DYMUX_6426,
      CE => BTN_3_Count_16_CEINVNOT,
      CLK => BTN_3_Count_16_CLKINV_6404,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_16_SRINV_6405,
      O => BTN_3_Count(17)
    );
  BTN_3_Count_16 : X_SFF
    generic map(
      LOC => "SLICE_X53Y69",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_16_DXMUX_6444,
      CE => BTN_3_Count_16_CEINVNOT,
      CLK => BTN_3_Count_16_CLKINV_6404,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_16_SRINV_6405,
      O => BTN_3_Count(16)
    );
  BTN_3_Count_19 : X_SFF
    generic map(
      LOC => "SLICE_X53Y70",
      INIT => '0'
    )
    port map (
      I => BTN_3_Count_18_DYMUX_6482,
      CE => BTN_3_Count_18_CEINVNOT,
      CLK => BTN_3_Count_18_CLKINV_6460,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => BTN_3_Count_18_SRINV_6461,
      O => BTN_3_Count(19)
    );
  SSeg_Mmux_hexnum_mux0001257_G : X_LUT4
    generic map(
      INIT => X"5410",
      LOC => "SLICE_X66Y35"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => UXCntl_Unit_VALA(2),
      ADR3 => UXCntl_Unit_VALA(6),
      O => N101
    );
  SSeg_Mmux_hexnum_mux0001828_G : X_LUT4
    generic map(
      INIT => X"FF08",
      LOC => "SLICE_X64Y23"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(0),
      ADR1 => N12,
      ADR2 => UXCntl_Unit_VALB(2),
      ADR3 => SSeg_Mmux_hexnum_mux0001825_0,
      O => N99
    );
  SSeg_Mmux_hexnum_mux0001686_G : X_LUT4
    generic map(
      INIT => X"4450",
      LOC => "SLICE_X67Y25"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(1),
      ADR1 => UXCntl_Unit_VALA(7),
      ADR2 => UXCntl_Unit_VALA(6),
      ADR3 => UXCntl_Unit_VALB(0),
      O => N109
    );
  SSeg_Mmux_hexnum_mux000121711 : X_LUT4
    generic map(
      INIT => X"3000",
      LOC => "SLICE_X64Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => UXCntl_Unit_VALB(2),
      ADR2 => N23,
      ADR3 => N11,
      O => SSeg_Mmux_hexnum_mux000121711_6999
    );
  SSeg_Mmux_hexnum_mux000143121 : X_LUT4
    generic map(
      INIT => X"FFCD",
      LOC => "SLICE_X67Y20"
    )
    port map (
      ADR0 => UXCntl_Unit_VALB(1),
      ADR1 => SSeg_Mmux_hexnum_mux00014272_0,
      ADR2 => N94_0,
      ADR3 => SSeg_Mmux_hexnum_mux00014256_0,
      O => SSeg_Mmux_hexnum_mux000143121_7024
    );
  SSeg_Mrom_AN_OUT_mux0001111 : X_LUT4
    generic map(
      INIT => X"F0FF",
      LOC => "SLICE_X67Y61"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SSeg_pos(0),
      ADR3 => SSeg_pos(1),
      O => SSeg_Mrom_AN_OUT_mux00011
    );
  SSeg_AN_OUT_1 : X_FF
    generic map(
      LOC => "SLICE_X67Y61",
      INIT => '0'
    )
    port map (
      I => SSeg_AN_OUT_1_DXMUX_7191,
      CE => VCC,
      CLK => SSeg_AN_OUT_1_CLKINV_7168,
      SET => GND,
      RST => GND,
      O => SSeg_AN_OUT(1)
    );
  SSeg_AN_OUT_2 : X_FF
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => '0'
    )
    port map (
      I => SSeg_AN_OUT_3_DYMUX_7212,
      CE => VCC,
      CLK => SSeg_AN_OUT_3_CLKINV_7202,
      SET => GND,
      RST => GND,
      O => SSeg_AN_OUT(2)
    );
  SSeg_Mrom_AN_OUT_mux000131 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X66Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_pos(1),
      ADR2 => VCC,
      ADR3 => SSeg_pos(0),
      O => SSeg_Mrom_AN_OUT_mux00013
    );
  SSeg_AN_OUT_3 : X_FF
    generic map(
      LOC => "SLICE_X66Y81",
      INIT => '0'
    )
    port map (
      I => SSeg_AN_OUT_3_DXMUX_7225,
      CE => VCC,
      CLK => SSeg_AN_OUT_3_CLKINV_7202,
      SET => GND,
      RST => GND,
      O => SSeg_AN_OUT(3)
    );
  SSeg_count240hz_10 : X_FF
    generic map(
      LOC => "SLICE_X32Y18",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_11_DYMUX_7246,
      CE => VCC,
      CLK => SSeg_count240hz_11_CLKINV_7236,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(10)
    );
  SSeg_Mcount_count240hz_eqn_111 : X_LUT4
    generic map(
      INIT => X"0A0A",
      LOC => "SLICE_X32Y18"
    )
    port map (
      ADR0 => SSeg_Result(11),
      ADR1 => VCC,
      ADR2 => SSeg_count240hz_cmp_eq0000,
      ADR3 => VCC,
      O => SSeg_Mcount_count240hz_eqn_11
    );
  SSeg_count240hz_11 : X_FF
    generic map(
      LOC => "SLICE_X32Y18",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_11_DXMUX_7259,
      CE => VCC,
      CLK => SSeg_count240hz_11_CLKINV_7236,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(11)
    );
  SSeg_count240hz_12 : X_FF
    generic map(
      LOC => "SLICE_X32Y20",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_13_DYMUX_7280,
      CE => VCC,
      CLK => SSeg_count240hz_13_CLKINV_7270,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(12)
    );
  SSeg_Mcount_count240hz_eqn_131 : X_LUT4
    generic map(
      INIT => X"00CC",
      LOC => "SLICE_X32Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_Result(13),
      ADR2 => VCC,
      ADR3 => SSeg_count240hz_cmp_eq0000,
      O => SSeg_Mcount_count240hz_eqn_13
    );
  SSeg_count240hz_13 : X_FF
    generic map(
      LOC => "SLICE_X32Y20",
      INIT => '0'
    )
    port map (
      I => SSeg_count240hz_13_DXMUX_7293,
      CE => VCC,
      CLK => SSeg_count240hz_13_CLKINV_7270,
      SET => GND,
      RST => GND,
      O => SSeg_count240hz(13)
    );
  SSeg_Mmux_hexnum_mux00012300 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X67Y29"
    )
    port map (
      ADR0 => SSeg_pos(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_Mmux_hexnum_mux00012292_O,
      O => SSeg_hexnum_mux0001(0)
    );
  SSeg_hexnum_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y29",
      INIT => '0'
    )
    port map (
      I => SSeg_hexnum_0_DXMUX_7079,
      CE => VCC,
      CLK => SSeg_hexnum_0_CLKINV_7062,
      SET => GND,
      RST => GND,
      O => SSeg_hexnum(0)
    );
  SSeg_Mmux_hexnum_mux00014384 : X_LUT4
    generic map(
      INIT => X"F808",
      LOC => "SLICE_X66Y38"
    )
    port map (
      ADR0 => SSeg_pos(1),
      ADR1 => SSeg_Mmux_hexnum_mux00014346_0,
      ADR2 => SSeg_pos(0),
      ADR3 => SSeg_Mmux_hexnum_mux00014384_SW0_O,
      O => SSeg_hexnum_mux0001(1)
    );
  SSeg_hexnum_1 : X_FF
    generic map(
      LOC => "SLICE_X66Y38",
      INIT => '0'
    )
    port map (
      I => SSeg_hexnum_1_DXMUX_7109,
      CE => VCC,
      CLK => SSeg_hexnum_1_CLKINV_7093,
      SET => GND,
      RST => GND,
      O => SSeg_hexnum(1)
    );
  SSeg_Mmux_hexnum_mux00016338 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X66Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_pos(1),
      ADR2 => VCC,
      ADR3 => SSeg_Mmux_hexnum_mux00016330_O,
      O => SSeg_hexnum_mux0001(2)
    );
  SSeg_hexnum_2 : X_FF
    generic map(
      LOC => "SLICE_X66Y28",
      INIT => '0'
    )
    port map (
      I => SSeg_hexnum_2_DXMUX_7139,
      CE => VCC,
      CLK => SSeg_hexnum_2_CLKINV_7122,
      SET => GND,
      RST => GND,
      O => SSeg_hexnum(2)
    );
  SSeg_hexnum_3 : X_FF
    generic map(
      LOC => "SLICE_X67Y31",
      INIT => '0'
    )
    port map (
      I => SSeg_hexnum_3_DYMUX_7157,
      CE => VCC,
      CLK => SSeg_hexnum_3_CLKINV_7147,
      SET => GND,
      RST => GND,
      O => SSeg_hexnum(3)
    );
  SSeg_AN_OUT_0 : X_FF
    generic map(
      LOC => "SLICE_X67Y61",
      INIT => '0'
    )
    port map (
      I => SSeg_AN_OUT_1_DYMUX_7178,
      CE => VCC,
      CLK => SSeg_AN_OUT_1_CLKINV_7168,
      SET => GND,
      RST => GND,
      O => SSeg_AN_OUT(0)
    );
  BTN_1_Count_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_1_Count(1),
      O => BTN_1_Count_0_G
    );
  BTN_1_Count_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_1_Count(2),
      ADR3 => VCC,
      O => BTN_1_Count_2_F
    );
  BTN_1_Count_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_1_Count(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_2_G
    );
  BTN_1_Count_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_1_Count(4),
      ADR3 => VCC,
      O => BTN_1_Count_4_F
    );
  BTN_1_Count_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_1_Count(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_4_G
    );
  BTN_1_Count_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y73"
    )
    port map (
      ADR0 => BTN_1_Count(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_6_F
    );
  BTN_1_Count_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_1_Count(7),
      O => BTN_1_Count_6_G
    );
  BTN_1_Count_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_1_Count(8),
      ADR3 => VCC,
      O => BTN_1_Count_8_F
    );
  BTN_1_Count_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_1_Count(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_8_G
    );
  BTN_1_Count_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y75"
    )
    port map (
      ADR0 => BTN_1_Count(10),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_10_F
    );
  BTN_1_Count_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_1_Count(11),
      O => BTN_1_Count_10_G
    );
  BTN_1_Count_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_1_Count(12),
      ADR3 => VCC,
      O => BTN_1_Count_12_F
    );
  BTN_1_Count_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_1_Count(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_12_G
    );
  BTN_1_Count_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y77"
    )
    port map (
      ADR0 => BTN_1_Count(14),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_14_F
    );
  BTN_1_Count_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y77"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_1_Count(15),
      O => BTN_1_Count_14_G
    );
  BTN_1_Count_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X67Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_1_Count(16),
      ADR3 => VCC,
      O => BTN_1_Count_16_F
    );
  BTN_1_Count_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X67Y78"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_1_Count(17),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_16_G
    );
  BTN_1_Count_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X67Y79"
    )
    port map (
      ADR0 => BTN_1_Count(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_1_Count_18_F
    );
  BTN_1_Count_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X67Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_1_Count(19),
      O => BTN_1_Count_18_G
    );
  BTN_0_Count_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y81"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_0_Count(1),
      O => BTN_0_Count_0_G
    );
  BTN_0_Count_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_0_Count(2),
      ADR3 => VCC,
      O => BTN_0_Count_2_F
    );
  BTN_0_Count_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y82"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_0_Count(3),
      O => BTN_0_Count_2_G
    );
  BTN_0_Count_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y83"
    )
    port map (
      ADR0 => BTN_0_Count(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_4_F
    );
  BTN_0_Count_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y83"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_0_Count(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_4_G
    );
  BTN_0_Count_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_0_Count(6),
      O => BTN_0_Count_6_F
    );
  BTN_0_Count_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y84"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_0_Count(7),
      ADR3 => VCC,
      O => BTN_0_Count_6_G
    );
  BTN_0_Count_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y85"
    )
    port map (
      ADR0 => BTN_0_Count(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_8_F
    );
  BTN_0_Count_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y85"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_0_Count(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_8_G
    );
  BTN_0_Count_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_0_Count(10),
      O => BTN_0_Count_10_F
    );
  BTN_0_Count_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y86"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_0_Count(11),
      ADR3 => VCC,
      O => BTN_0_Count_10_G
    );
  BTN_0_Count_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y87"
    )
    port map (
      ADR0 => BTN_0_Count(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_12_F
    );
  BTN_0_Count_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y87"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_0_Count(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_12_G
    );
  BTN_0_Count_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_0_Count(14),
      ADR3 => VCC,
      O => BTN_0_Count_14_F
    );
  BTN_0_Count_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_0_Count(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_14_G
    );
  BTN_0_Count_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y89"
    )
    port map (
      ADR0 => BTN_0_Count(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_16_F
    );
  BTN_0_Count_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y89"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_0_Count(17),
      O => BTN_0_Count_16_G
    );
  BTN_0_Count_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y90"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_0_Count(18),
      O => BTN_0_Count_18_F
    );
  BTN_0_Count_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y90"
    )
    port map (
      ADR0 => BTN_0_Count(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_0_Count_18_G
    );
  SSeg_Result_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X33Y14"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_0_G
    );
  SSeg_Result_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X33Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SSeg_count240hz(2),
      ADR3 => VCC,
      O => SSeg_Result_2_F
    );
  SSeg_Result_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X33Y15"
    )
    port map (
      ADR0 => SSeg_count240hz(3),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_2_G
    );
  SSeg_Result_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X33Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(4),
      O => SSeg_Result_4_F
    );
  SSeg_Result_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X33Y16"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_4_G
    );
  SSeg_Result_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X33Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(6),
      O => SSeg_Result_6_F
    );
  SSeg_Result_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X33Y17"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_6_G
    );
  SSeg_Result_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X33Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz(8),
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_8_F
    );
  SSeg_Result_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X33Y18"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(9),
      O => SSeg_Result_8_G
    );
  SSeg_Result_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X33Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => SSeg_count240hz(10),
      ADR3 => VCC,
      O => SSeg_Result_10_F
    );
  SSeg_Result_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X33Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(11),
      O => SSeg_Result_10_G
    );
  SSeg_Result_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X33Y20"
    )
    port map (
      ADR0 => SSeg_count240hz(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_12_F
    );
  SSeg_Result_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X33Y20"
    )
    port map (
      ADR0 => SSeg_count240hz(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_12_G
    );
  SSeg_Result_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X33Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => SSeg_count240hz(14),
      O => SSeg_Result_14_F
    );
  SSeg_Result_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X33Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => SSeg_count240hz(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Result_14_G
    );
  BTN_2_Count_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y67"
    )
    port map (
      ADR0 => BTN_2_Count(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_0_G
    );
  BTN_2_Count_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(2),
      O => BTN_2_Count_2_F
    );
  BTN_2_Count_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(3),
      O => BTN_2_Count_2_G
    );
  BTN_2_Count_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y69"
    )
    port map (
      ADR0 => BTN_2_Count(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_4_F
    );
  BTN_2_Count_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_Count(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_4_G
    );
  BTN_2_Count_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(6),
      O => BTN_2_Count_6_F
    );
  BTN_2_Count_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_2_Count(7),
      ADR3 => VCC,
      O => BTN_2_Count_6_G
    );
  BTN_2_Count_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y71"
    )
    port map (
      ADR0 => BTN_2_Count(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_8_F
    );
  BTN_2_Count_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y71"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_Count(9),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_8_G
    );
  BTN_2_Count_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(10),
      O => BTN_2_Count_10_F
    );
  BTN_2_Count_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y72"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_2_Count(11),
      ADR3 => VCC,
      O => BTN_2_Count_10_G
    );
  BTN_2_Count_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y73"
    )
    port map (
      ADR0 => BTN_2_Count(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_12_F
    );
  BTN_2_Count_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y73"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_Count(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_12_G
    );
  BTN_2_Count_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X65Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_2_Count(14),
      O => BTN_2_Count_14_F
    );
  BTN_2_Count_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X65Y74"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_2_Count(15),
      ADR3 => VCC,
      O => BTN_2_Count_14_G
    );
  BTN_2_Count_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y75"
    )
    port map (
      ADR0 => BTN_2_Count(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_16_F
    );
  BTN_2_Count_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y75"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_Count(17),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_16_G
    );
  BTN_2_Count_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X65Y76"
    )
    port map (
      ADR0 => BTN_2_Count(18),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_18_F
    );
  BTN_2_Count_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X65Y76"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_2_Count(19),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_2_Count_18_G
    );
  BTN_3_Count_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y61"
    )
    port map (
      ADR0 => BTN_3_Count(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_0_G
    );
  BTN_3_Count_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_3_Count(2),
      ADR3 => VCC,
      O => BTN_3_Count_2_F
    );
  BTN_3_Count_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y62"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_3_Count(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_2_G
    );
  BTN_3_Count_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y63"
    )
    port map (
      ADR0 => BTN_3_Count(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_4_F
    );
  BTN_3_Count_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y63"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_3_Count(5),
      O => BTN_3_Count_4_G
    );
  BTN_3_Count_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_3_Count(6),
      ADR3 => VCC,
      O => BTN_3_Count_6_F
    );
  BTN_3_Count_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y64"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_3_Count(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_6_G
    );
  BTN_3_Count_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y65"
    )
    port map (
      ADR0 => BTN_3_Count(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_8_F
    );
  BTN_3_Count_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y65"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_3_Count(9),
      O => BTN_3_Count_8_G
    );
  BTN_3_Count_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y66"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_3_Count(10),
      O => BTN_3_Count_10_F
    );
  BTN_3_Count_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y66"
    )
    port map (
      ADR0 => BTN_3_Count(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_10_G
    );
  BTN_3_Count_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_3_Count(12),
      ADR3 => VCC,
      O => BTN_3_Count_12_F
    );
  BTN_3_Count_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y67"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_3_Count(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_12_G
    );
  BTN_3_Count_14_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X53Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => BTN_3_Count(14),
      ADR3 => VCC,
      O => BTN_3_Count_14_F
    );
  BTN_3_Count_14_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X53Y68"
    )
    port map (
      ADR0 => VCC,
      ADR1 => BTN_3_Count(15),
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_14_G
    );
  BTN_3_Count_16_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y69"
    )
    port map (
      ADR0 => BTN_3_Count(16),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_16_F
    );
  BTN_3_Count_16_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y69"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_3_Count(17),
      O => BTN_3_Count_16_G
    );
  BTN_3_Count_18_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X53Y70"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => BTN_3_Count(18),
      O => BTN_3_Count_18_F
    );
  BTN_3_Count_18_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X53Y70"
    )
    port map (
      ADR0 => BTN_3_Count(19),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => BTN_3_Count_18_G
    );
  AN_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_AN_OUT(0),
      O => AN_0_O
    );
  AN_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_AN_OUT(1),
      O => AN_1_O
    );
  AN_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_AN_OUT(2),
      O => AN_2_O
    );
  AN_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 638 ps
    )
    port map (
      I => SSeg_AN_OUT(3),
      O => AN_3_O
    );
  SEG_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD95",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_0_OBUF_2474,
      O => SEG_0_O
    );
  SEG_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_1_OBUF_2467,
      O => SEG_1_O
    );
  SEG_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_2_OBUF_3312,
      O => SEG_2_O
    );
  SEG_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_3_OBUF_3319,
      O => SEG_3_O
    );
  SEG_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_4_OBUF_3336,
      O => SEG_4_O
    );
  SEG_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_5_OBUF_3343,
      O => SEG_5_O
    );
  SEG_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 638 ps
    )
    port map (
      I => SEG_6_OBUF_3355,
      O => SEG_6_O
    );
  N21_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y79"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N21_F
    );
  SSeg_Mmux_hexnum_mux00016175_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"0000",
      LOC => "SLICE_X66Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => SSeg_Mmux_hexnum_mux00016175_F
    );
  NlwBlock_RPN_toplevel_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_RPN_toplevel_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_UXCntl_Unit_VALB_2_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_3_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_2_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_3_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_3_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_3_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_6_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_7_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_6_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_7_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_7_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_7_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_4_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_5_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_4_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_5_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_5_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_5_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_6_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_7_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_6_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_7_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_7_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_7_CLK
    );
  NlwInverterBlock_UXCntl_Unit_OPCODE_0_CLK : X_INV
    port map (
      I => UXCntl_Unit_OPCODE_1_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_OPCODE_0_CLK
    );
  NlwInverterBlock_UXCntl_Unit_OPCODE_1_CLK : X_INV
    port map (
      I => UXCntl_Unit_OPCODE_1_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_OPCODE_1_CLK
    );
  NlwInverterBlock_UXCntl_Unit_OPCODE_2_CLK : X_INV
    port map (
      I => UXCntl_Unit_OPCODE_3_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_OPCODE_2_CLK
    );
  NlwInverterBlock_UXCntl_Unit_OPCODE_3_CLK : X_INV
    port map (
      I => UXCntl_Unit_OPCODE_3_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_OPCODE_3_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_0_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_1_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_0_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_1_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_1_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_1_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_2_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_3_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_2_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_3_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_3_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_3_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_0_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_1_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_0_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALB_1_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALB_1_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALB_1_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_4_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_5_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_4_CLK
    );
  NlwInverterBlock_UXCntl_Unit_VALA_5_CLK : X_INV
    port map (
      I => UXCntl_Unit_VALA_5_CLKINVNOT,
      O => NlwInverterSignal_UXCntl_Unit_VALA_5_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

