// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Mon Jan 05 22:27:49 2015
// Host        : running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_funcsim.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0,{}" *) 
(* core_generation_info = "dist_mem_gen_0,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=10,C_DEFAULT_DATA=0,C_DEPTH=1024,C_HAS_CLK=1,C_HAS_D=1,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=1,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=0,C_HAS_WE=1,C_MEM_INIT_FILE=dist_mem_gen_0.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=1,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=1,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    d,
    clk,
    we,
    qspo);
  input [9:0]a;
  input [31:0]d;
  input clk;
  input we;
  output [31:0]qspo;

  wire \<const0> ;
  wire \<const1> ;
  wire [9:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]qspo;
  wire we;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_spo_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_FAMILY = "artix7" *) 
   (* C_HAS_CLK = "1" *) 
   (* C_HAS_D = "1" *) 
   (* C_HAS_DPO = "0" *) 
   (* C_HAS_DPRA = "0" *) 
   (* C_HAS_QDPO = "0" *) 
   (* C_HAS_QDPO_CE = "0" *) 
   (* C_HAS_QDPO_CLK = "0" *) 
   (* C_HAS_QDPO_RST = "0" *) 
   (* C_HAS_QDPO_SRST = "0" *) 
   (* C_HAS_WE = "1" *) 
   (* C_MEM_TYPE = "1" *) 
   (* C_QCE_JOINED = "0" *) 
   (* C_REG_DPRA_INPUT = "0" *) 
   (* DONT_TOUCH *) 
   (* c_addr_width = "10" *) 
   (* c_default_data = "0" *) 
   (* c_depth = "1024" *) 
   (* c_elaboration_dir = "./" *) 
   (* c_has_i_ce = "0" *) 
   (* c_has_qspo = "1" *) 
   (* c_has_qspo_ce = "0" *) 
   (* c_has_qspo_rst = "0" *) 
   (* c_has_qspo_srst = "0" *) 
   (* c_has_spo = "0" *) 
   (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
   (* c_parser_type = "1" *) 
   (* c_pipeline_stages = "0" *) 
   (* c_qualify_we = "0" *) 
   (* c_read_mif = "1" *) 
   (* c_reg_a_d_inputs = "1" *) 
   (* c_sync_enable = "1" *) 
   (* c_width = "32" *) 
   dist_mem_gen_0dist_mem_gen_v8_0__parameterized0 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .i_ce(\<const1> ),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(\<const1> ),
        .qdpo_clk(\<const0> ),
        .qdpo_rst(\<const0> ),
        .qdpo_srst(\<const0> ),
        .qspo(qspo),
        .qspo_ce(\<const1> ),
        .qspo_rst(\<const0> ),
        .qspo_srst(\<const0> ),
        .spo(NLW_U0_spo_UNCONNECTED[31:0]),
        .we(we));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0" *) (* C_FAMILY = "artix7" *) (* C_ADDR_WIDTH = "10" *) 
(* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "1" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "1" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_ELABORATION_DIR = "./" *) (* C_MEM_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "1" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* C_PARSER_TYPE = "1" *) 
module dist_mem_gen_0dist_mem_gen_v8_0__parameterized0
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [9:0]a;
  input [31:0]d;
  input [9:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [9:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]qspo;
  wire we;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15] = \<const0> ;
  assign spo[14] = \<const0> ;
  assign spo[13] = \<const0> ;
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6] = \<const0> ;
  assign spo[5] = \<const0> ;
  assign spo[4] = \<const0> ;
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1] = \<const0> ;
  assign spo[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
dist_mem_gen_0dist_mem_gen_v8_0_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .qspo(qspo),
        .we(we));
endmodule

module dist_mem_gen_0dist_mem_gen_v8_0_synth
   (qspo,
    a,
    clk,
    we,
    d);
  output [31:0]qspo;
  input [9:0]a;
  input clk;
  input we;
  input [31:0]d;

  wire [9:0]a;
  wire clk;
  wire [31:0]d;
  wire [31:0]qspo;
  wire we;

dist_mem_gen_0spram__parameterized0 \gen_sp_ram.spram_inst 
       (.a(a),
        .clk(clk),
        .d(d),
        .qspo(qspo),
        .we(we));
endmodule

(* ORIG_REF_NAME = "spram" *) 
module dist_mem_gen_0spram__parameterized0
   (qspo,
    a,
    clk,
    we,
    d);
  output [31:0]qspo;
  input [9:0]a;
  input clk;
  input we;
  input [31:0]d;

  wire \<const0> ;
  wire \<const1> ;
  wire [9:0]a;
  wire [9:0]a_reg;
  wire clk;
  wire [31:0]d;
  wire [31:0]d_reg;
  wire n_0_ram_reg_0_255_0_0;
  wire n_0_ram_reg_0_255_0_0_i_1;
  wire n_0_ram_reg_0_255_10_10;
  wire n_0_ram_reg_0_255_11_11;
  wire n_0_ram_reg_0_255_12_12;
  wire n_0_ram_reg_0_255_13_13;
  wire n_0_ram_reg_0_255_14_14;
  wire n_0_ram_reg_0_255_15_15;
  wire n_0_ram_reg_0_255_16_16;
  wire n_0_ram_reg_0_255_17_17;
  wire n_0_ram_reg_0_255_18_18;
  wire n_0_ram_reg_0_255_19_19;
  wire n_0_ram_reg_0_255_1_1;
  wire n_0_ram_reg_0_255_20_20;
  wire n_0_ram_reg_0_255_21_21;
  wire n_0_ram_reg_0_255_22_22;
  wire n_0_ram_reg_0_255_23_23;
  wire n_0_ram_reg_0_255_24_24;
  wire n_0_ram_reg_0_255_25_25;
  wire n_0_ram_reg_0_255_26_26;
  wire n_0_ram_reg_0_255_27_27;
  wire n_0_ram_reg_0_255_28_28;
  wire n_0_ram_reg_0_255_29_29;
  wire n_0_ram_reg_0_255_2_2;
  wire n_0_ram_reg_0_255_30_30;
  wire n_0_ram_reg_0_255_31_31;
  wire n_0_ram_reg_0_255_3_3;
  wire n_0_ram_reg_0_255_4_4;
  wire n_0_ram_reg_0_255_5_5;
  wire n_0_ram_reg_0_255_6_6;
  wire n_0_ram_reg_0_255_7_7;
  wire n_0_ram_reg_0_255_8_8;
  wire n_0_ram_reg_0_255_9_9;
  wire n_0_ram_reg_256_511_0_0;
  wire n_0_ram_reg_256_511_0_0_i_1;
  wire n_0_ram_reg_256_511_10_10;
  wire n_0_ram_reg_256_511_11_11;
  wire n_0_ram_reg_256_511_12_12;
  wire n_0_ram_reg_256_511_13_13;
  wire n_0_ram_reg_256_511_14_14;
  wire n_0_ram_reg_256_511_15_15;
  wire n_0_ram_reg_256_511_16_16;
  wire n_0_ram_reg_256_511_17_17;
  wire n_0_ram_reg_256_511_18_18;
  wire n_0_ram_reg_256_511_19_19;
  wire n_0_ram_reg_256_511_1_1;
  wire n_0_ram_reg_256_511_20_20;
  wire n_0_ram_reg_256_511_21_21;
  wire n_0_ram_reg_256_511_22_22;
  wire n_0_ram_reg_256_511_23_23;
  wire n_0_ram_reg_256_511_24_24;
  wire n_0_ram_reg_256_511_25_25;
  wire n_0_ram_reg_256_511_26_26;
  wire n_0_ram_reg_256_511_27_27;
  wire n_0_ram_reg_256_511_28_28;
  wire n_0_ram_reg_256_511_29_29;
  wire n_0_ram_reg_256_511_2_2;
  wire n_0_ram_reg_256_511_30_30;
  wire n_0_ram_reg_256_511_31_31;
  wire n_0_ram_reg_256_511_3_3;
  wire n_0_ram_reg_256_511_4_4;
  wire n_0_ram_reg_256_511_5_5;
  wire n_0_ram_reg_256_511_6_6;
  wire n_0_ram_reg_256_511_7_7;
  wire n_0_ram_reg_256_511_8_8;
  wire n_0_ram_reg_256_511_9_9;
  wire n_0_ram_reg_512_767_0_0;
  wire n_0_ram_reg_512_767_0_0_i_1;
  wire n_0_ram_reg_512_767_10_10;
  wire n_0_ram_reg_512_767_11_11;
  wire n_0_ram_reg_512_767_12_12;
  wire n_0_ram_reg_512_767_13_13;
  wire n_0_ram_reg_512_767_14_14;
  wire n_0_ram_reg_512_767_15_15;
  wire n_0_ram_reg_512_767_16_16;
  wire n_0_ram_reg_512_767_17_17;
  wire n_0_ram_reg_512_767_18_18;
  wire n_0_ram_reg_512_767_19_19;
  wire n_0_ram_reg_512_767_1_1;
  wire n_0_ram_reg_512_767_20_20;
  wire n_0_ram_reg_512_767_21_21;
  wire n_0_ram_reg_512_767_22_22;
  wire n_0_ram_reg_512_767_23_23;
  wire n_0_ram_reg_512_767_24_24;
  wire n_0_ram_reg_512_767_25_25;
  wire n_0_ram_reg_512_767_26_26;
  wire n_0_ram_reg_512_767_27_27;
  wire n_0_ram_reg_512_767_28_28;
  wire n_0_ram_reg_512_767_29_29;
  wire n_0_ram_reg_512_767_2_2;
  wire n_0_ram_reg_512_767_30_30;
  wire n_0_ram_reg_512_767_31_31;
  wire n_0_ram_reg_512_767_3_3;
  wire n_0_ram_reg_512_767_4_4;
  wire n_0_ram_reg_512_767_5_5;
  wire n_0_ram_reg_512_767_6_6;
  wire n_0_ram_reg_512_767_7_7;
  wire n_0_ram_reg_512_767_8_8;
  wire n_0_ram_reg_512_767_9_9;
  wire n_0_ram_reg_768_1023_0_0;
  wire n_0_ram_reg_768_1023_0_0_i_1;
  wire n_0_ram_reg_768_1023_10_10;
  wire n_0_ram_reg_768_1023_11_11;
  wire n_0_ram_reg_768_1023_12_12;
  wire n_0_ram_reg_768_1023_13_13;
  wire n_0_ram_reg_768_1023_14_14;
  wire n_0_ram_reg_768_1023_15_15;
  wire n_0_ram_reg_768_1023_16_16;
  wire n_0_ram_reg_768_1023_17_17;
  wire n_0_ram_reg_768_1023_18_18;
  wire n_0_ram_reg_768_1023_19_19;
  wire n_0_ram_reg_768_1023_1_1;
  wire n_0_ram_reg_768_1023_20_20;
  wire n_0_ram_reg_768_1023_21_21;
  wire n_0_ram_reg_768_1023_22_22;
  wire n_0_ram_reg_768_1023_23_23;
  wire n_0_ram_reg_768_1023_24_24;
  wire n_0_ram_reg_768_1023_25_25;
  wire n_0_ram_reg_768_1023_26_26;
  wire n_0_ram_reg_768_1023_27_27;
  wire n_0_ram_reg_768_1023_28_28;
  wire n_0_ram_reg_768_1023_29_29;
  wire n_0_ram_reg_768_1023_2_2;
  wire n_0_ram_reg_768_1023_30_30;
  wire n_0_ram_reg_768_1023_31_31;
  wire n_0_ram_reg_768_1023_3_3;
  wire n_0_ram_reg_768_1023_4_4;
  wire n_0_ram_reg_768_1023_5_5;
  wire n_0_ram_reg_768_1023_6_6;
  wire n_0_ram_reg_768_1023_7_7;
  wire n_0_ram_reg_768_1023_8_8;
  wire n_0_ram_reg_768_1023_9_9;
  wire [31:0]qspo;
  wire [31:0]qspo_input;
(* RTL_KEEP = "true" *)   wire [31:0]qspo_int;
  wire we;
  wire we_reg;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[0]),
        .Q(a_reg[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[1]),
        .Q(a_reg[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[2]),
        .Q(a_reg[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[3]),
        .Q(a_reg[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[4]),
        .Q(a_reg[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[5]),
        .Q(a_reg[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[6]),
        .Q(a_reg[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[7]),
        .Q(a_reg[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[8]),
        .Q(a_reg[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \a_reg_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(a[9]),
        .Q(a_reg[9]),
        .R(\<const0> ));
FDRE \d_reg_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[0]),
        .Q(d_reg[0]),
        .R(\<const0> ));
FDRE \d_reg_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[10]),
        .Q(d_reg[10]),
        .R(\<const0> ));
FDRE \d_reg_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[11]),
        .Q(d_reg[11]),
        .R(\<const0> ));
FDRE \d_reg_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[12]),
        .Q(d_reg[12]),
        .R(\<const0> ));
FDRE \d_reg_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[13]),
        .Q(d_reg[13]),
        .R(\<const0> ));
FDRE \d_reg_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[14]),
        .Q(d_reg[14]),
        .R(\<const0> ));
FDRE \d_reg_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[15]),
        .Q(d_reg[15]),
        .R(\<const0> ));
FDRE \d_reg_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[16]),
        .Q(d_reg[16]),
        .R(\<const0> ));
FDRE \d_reg_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[17]),
        .Q(d_reg[17]),
        .R(\<const0> ));
FDRE \d_reg_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[18]),
        .Q(d_reg[18]),
        .R(\<const0> ));
FDRE \d_reg_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[19]),
        .Q(d_reg[19]),
        .R(\<const0> ));
FDRE \d_reg_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[1]),
        .Q(d_reg[1]),
        .R(\<const0> ));
FDRE \d_reg_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[20]),
        .Q(d_reg[20]),
        .R(\<const0> ));
FDRE \d_reg_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[21]),
        .Q(d_reg[21]),
        .R(\<const0> ));
FDRE \d_reg_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[22]),
        .Q(d_reg[22]),
        .R(\<const0> ));
FDRE \d_reg_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[23]),
        .Q(d_reg[23]),
        .R(\<const0> ));
FDRE \d_reg_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[24]),
        .Q(d_reg[24]),
        .R(\<const0> ));
FDRE \d_reg_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[25]),
        .Q(d_reg[25]),
        .R(\<const0> ));
FDRE \d_reg_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[26]),
        .Q(d_reg[26]),
        .R(\<const0> ));
FDRE \d_reg_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[27]),
        .Q(d_reg[27]),
        .R(\<const0> ));
FDRE \d_reg_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[28]),
        .Q(d_reg[28]),
        .R(\<const0> ));
FDRE \d_reg_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[29]),
        .Q(d_reg[29]),
        .R(\<const0> ));
FDRE \d_reg_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[2]),
        .Q(d_reg[2]),
        .R(\<const0> ));
FDRE \d_reg_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[30]),
        .Q(d_reg[30]),
        .R(\<const0> ));
FDRE \d_reg_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[31]),
        .Q(d_reg[31]),
        .R(\<const0> ));
FDRE \d_reg_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[3]),
        .Q(d_reg[3]),
        .R(\<const0> ));
FDRE \d_reg_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[4]),
        .Q(d_reg[4]),
        .R(\<const0> ));
FDRE \d_reg_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[5]),
        .Q(d_reg[5]),
        .R(\<const0> ));
FDRE \d_reg_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[6]),
        .Q(d_reg[6]),
        .R(\<const0> ));
FDRE \d_reg_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[7]),
        .Q(d_reg[7]),
        .R(\<const0> ));
FDRE \d_reg_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[8]),
        .Q(d_reg[8]),
        .R(\<const0> ));
FDRE \d_reg_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(d[9]),
        .Q(d_reg[9]),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_0 
       (.I0(qspo_int[31]),
        .O(qspo[31]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_1 
       (.I0(qspo_int[30]),
        .O(qspo[30]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_10 
       (.I0(qspo_int[21]),
        .O(qspo[21]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_11 
       (.I0(qspo_int[20]),
        .O(qspo[20]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_12 
       (.I0(qspo_int[19]),
        .O(qspo[19]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_13 
       (.I0(qspo_int[18]),
        .O(qspo[18]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_14 
       (.I0(qspo_int[17]),
        .O(qspo[17]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_15 
       (.I0(qspo_int[16]),
        .O(qspo[16]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_16 
       (.I0(qspo_int[15]),
        .O(qspo[15]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_17 
       (.I0(qspo_int[14]),
        .O(qspo[14]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_18 
       (.I0(qspo_int[13]),
        .O(qspo[13]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_19 
       (.I0(qspo_int[12]),
        .O(qspo[12]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_2 
       (.I0(qspo_int[29]),
        .O(qspo[29]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_20 
       (.I0(qspo_int[11]),
        .O(qspo[11]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_21 
       (.I0(qspo_int[10]),
        .O(qspo[10]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_22 
       (.I0(qspo_int[9]),
        .O(qspo[9]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_23 
       (.I0(qspo_int[8]),
        .O(qspo[8]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_24 
       (.I0(qspo_int[7]),
        .O(qspo[7]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_25 
       (.I0(qspo_int[6]),
        .O(qspo[6]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_26 
       (.I0(qspo_int[5]),
        .O(qspo[5]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_27 
       (.I0(qspo_int[4]),
        .O(qspo[4]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_28 
       (.I0(qspo_int[3]),
        .O(qspo[3]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_29 
       (.I0(qspo_int[2]),
        .O(qspo[2]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_3 
       (.I0(qspo_int[28]),
        .O(qspo[28]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_30 
       (.I0(qspo_int[1]),
        .O(qspo[1]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_31 
       (.I0(qspo_int[0]),
        .O(qspo[0]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_4 
       (.I0(qspo_int[27]),
        .O(qspo[27]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_5 
       (.I0(qspo_int[26]),
        .O(qspo[26]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_6 
       (.I0(qspo_int[25]),
        .O(qspo[25]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_7 
       (.I0(qspo_int[24]),
        .O(qspo[24]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_8 
       (.I0(qspo_int[23]),
        .O(qspo[23]));
LUT1 #(
    .INIT(2'h2)) 
     \gen_sp_ram.spram_insti_9 
       (.I0(qspo_int[22]),
        .O(qspo[22]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[0]_i_1 
       (.I0(n_0_ram_reg_768_1023_0_0),
        .I1(n_0_ram_reg_512_767_0_0),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_0_0),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_0_0),
        .O(qspo_input[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[10]_i_1 
       (.I0(n_0_ram_reg_768_1023_10_10),
        .I1(n_0_ram_reg_512_767_10_10),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_10_10),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_10_10),
        .O(qspo_input[10]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[11]_i_1 
       (.I0(n_0_ram_reg_768_1023_11_11),
        .I1(n_0_ram_reg_512_767_11_11),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_11_11),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_11_11),
        .O(qspo_input[11]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[12]_i_1 
       (.I0(n_0_ram_reg_768_1023_12_12),
        .I1(n_0_ram_reg_512_767_12_12),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_12_12),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_12_12),
        .O(qspo_input[12]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[13]_i_1 
       (.I0(n_0_ram_reg_768_1023_13_13),
        .I1(n_0_ram_reg_512_767_13_13),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_13_13),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_13_13),
        .O(qspo_input[13]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[14]_i_1 
       (.I0(n_0_ram_reg_768_1023_14_14),
        .I1(n_0_ram_reg_512_767_14_14),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_14_14),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_14_14),
        .O(qspo_input[14]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[15]_i_1 
       (.I0(n_0_ram_reg_768_1023_15_15),
        .I1(n_0_ram_reg_512_767_15_15),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_15_15),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_15_15),
        .O(qspo_input[15]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[16]_i_1 
       (.I0(n_0_ram_reg_768_1023_16_16),
        .I1(n_0_ram_reg_512_767_16_16),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_16_16),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_16_16),
        .O(qspo_input[16]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[17]_i_1 
       (.I0(n_0_ram_reg_768_1023_17_17),
        .I1(n_0_ram_reg_512_767_17_17),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_17_17),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_17_17),
        .O(qspo_input[17]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[18]_i_1 
       (.I0(n_0_ram_reg_768_1023_18_18),
        .I1(n_0_ram_reg_512_767_18_18),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_18_18),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_18_18),
        .O(qspo_input[18]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[19]_i_1 
       (.I0(n_0_ram_reg_768_1023_19_19),
        .I1(n_0_ram_reg_512_767_19_19),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_19_19),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_19_19),
        .O(qspo_input[19]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[1]_i_1 
       (.I0(n_0_ram_reg_768_1023_1_1),
        .I1(n_0_ram_reg_512_767_1_1),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_1_1),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_1_1),
        .O(qspo_input[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[20]_i_1 
       (.I0(n_0_ram_reg_768_1023_20_20),
        .I1(n_0_ram_reg_512_767_20_20),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_20_20),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_20_20),
        .O(qspo_input[20]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[21]_i_1 
       (.I0(n_0_ram_reg_768_1023_21_21),
        .I1(n_0_ram_reg_512_767_21_21),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_21_21),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_21_21),
        .O(qspo_input[21]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[22]_i_1 
       (.I0(n_0_ram_reg_768_1023_22_22),
        .I1(n_0_ram_reg_512_767_22_22),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_22_22),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_22_22),
        .O(qspo_input[22]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[23]_i_1 
       (.I0(n_0_ram_reg_768_1023_23_23),
        .I1(n_0_ram_reg_512_767_23_23),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_23_23),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_23_23),
        .O(qspo_input[23]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[24]_i_1 
       (.I0(n_0_ram_reg_768_1023_24_24),
        .I1(n_0_ram_reg_512_767_24_24),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_24_24),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_24_24),
        .O(qspo_input[24]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[25]_i_1 
       (.I0(n_0_ram_reg_768_1023_25_25),
        .I1(n_0_ram_reg_512_767_25_25),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_25_25),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_25_25),
        .O(qspo_input[25]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[26]_i_1 
       (.I0(n_0_ram_reg_768_1023_26_26),
        .I1(n_0_ram_reg_512_767_26_26),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_26_26),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_26_26),
        .O(qspo_input[26]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[27]_i_1 
       (.I0(n_0_ram_reg_768_1023_27_27),
        .I1(n_0_ram_reg_512_767_27_27),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_27_27),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_27_27),
        .O(qspo_input[27]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[28]_i_1 
       (.I0(n_0_ram_reg_768_1023_28_28),
        .I1(n_0_ram_reg_512_767_28_28),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_28_28),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_28_28),
        .O(qspo_input[28]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[29]_i_1 
       (.I0(n_0_ram_reg_768_1023_29_29),
        .I1(n_0_ram_reg_512_767_29_29),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_29_29),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_29_29),
        .O(qspo_input[29]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[2]_i_1 
       (.I0(n_0_ram_reg_768_1023_2_2),
        .I1(n_0_ram_reg_512_767_2_2),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_2_2),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_2_2),
        .O(qspo_input[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[30]_i_1 
       (.I0(n_0_ram_reg_768_1023_30_30),
        .I1(n_0_ram_reg_512_767_30_30),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_30_30),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_30_30),
        .O(qspo_input[30]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[31]_i_1 
       (.I0(n_0_ram_reg_768_1023_31_31),
        .I1(n_0_ram_reg_512_767_31_31),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_31_31),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_31_31),
        .O(qspo_input[31]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[3]_i_1 
       (.I0(n_0_ram_reg_768_1023_3_3),
        .I1(n_0_ram_reg_512_767_3_3),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_3_3),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_3_3),
        .O(qspo_input[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[4]_i_1 
       (.I0(n_0_ram_reg_768_1023_4_4),
        .I1(n_0_ram_reg_512_767_4_4),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_4_4),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_4_4),
        .O(qspo_input[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[5]_i_1 
       (.I0(n_0_ram_reg_768_1023_5_5),
        .I1(n_0_ram_reg_512_767_5_5),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_5_5),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_5_5),
        .O(qspo_input[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[6]_i_1 
       (.I0(n_0_ram_reg_768_1023_6_6),
        .I1(n_0_ram_reg_512_767_6_6),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_6_6),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_6_6),
        .O(qspo_input[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[7]_i_1 
       (.I0(n_0_ram_reg_768_1023_7_7),
        .I1(n_0_ram_reg_512_767_7_7),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_7_7),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_7_7),
        .O(qspo_input[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[8]_i_1 
       (.I0(n_0_ram_reg_768_1023_8_8),
        .I1(n_0_ram_reg_512_767_8_8),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_8_8),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_8_8),
        .O(qspo_input[8]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \qspo_int[9]_i_1 
       (.I0(n_0_ram_reg_768_1023_9_9),
        .I1(n_0_ram_reg_512_767_9_9),
        .I2(a_reg[9]),
        .I3(n_0_ram_reg_256_511_9_9),
        .I4(a_reg[8]),
        .I5(n_0_ram_reg_0_255_9_9),
        .O(qspo_input[9]));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[0]),
        .Q(qspo_int[0]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[10]),
        .Q(qspo_int[10]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[11]),
        .Q(qspo_int[11]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[12]),
        .Q(qspo_int[12]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[13]),
        .Q(qspo_int[13]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[14]),
        .Q(qspo_int[14]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[15]),
        .Q(qspo_int[15]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[16]),
        .Q(qspo_int[16]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[17]),
        .Q(qspo_int[17]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[18]),
        .Q(qspo_int[18]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[19]),
        .Q(qspo_int[19]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[1]),
        .Q(qspo_int[1]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[20]),
        .Q(qspo_int[20]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[21]),
        .Q(qspo_int[21]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[22]),
        .Q(qspo_int[22]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[23]),
        .Q(qspo_int[23]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[24]),
        .Q(qspo_int[24]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[25]),
        .Q(qspo_int[25]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[26]),
        .Q(qspo_int[26]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[27]),
        .Q(qspo_int[27]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[28]),
        .Q(qspo_int[28]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[29]),
        .Q(qspo_int[29]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[2]),
        .Q(qspo_int[2]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[30]),
        .Q(qspo_int[30]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[31]),
        .Q(qspo_int[31]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[3]),
        .Q(qspo_int[3]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[4]),
        .Q(qspo_int[4]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[5]),
        .Q(qspo_int[5]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[6]),
        .Q(qspo_int[6]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[7]),
        .Q(qspo_int[7]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[8]),
        .Q(qspo_int[8]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   (* keep = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(qspo_input[9]),
        .Q(qspo_int[9]),
        .R(\<const0> ));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_0_0
       (.A(a_reg[7:0]),
        .D(d_reg[0]),
        .O(n_0_ram_reg_0_255_0_0),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
LUT3 #(
    .INIT(8'h02)) 
     ram_reg_0_255_0_0_i_1
       (.I0(we_reg),
        .I1(a_reg[8]),
        .I2(a_reg[9]),
        .O(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_10_10
       (.A(a_reg[7:0]),
        .D(d_reg[10]),
        .O(n_0_ram_reg_0_255_10_10),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_11_11
       (.A(a_reg[7:0]),
        .D(d_reg[11]),
        .O(n_0_ram_reg_0_255_11_11),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_12_12
       (.A(a_reg[7:0]),
        .D(d_reg[12]),
        .O(n_0_ram_reg_0_255_12_12),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_13_13
       (.A(a_reg[7:0]),
        .D(d_reg[13]),
        .O(n_0_ram_reg_0_255_13_13),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_14_14
       (.A(a_reg[7:0]),
        .D(d_reg[14]),
        .O(n_0_ram_reg_0_255_14_14),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_15_15
       (.A(a_reg[7:0]),
        .D(d_reg[15]),
        .O(n_0_ram_reg_0_255_15_15),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_16_16
       (.A(a_reg[7:0]),
        .D(d_reg[16]),
        .O(n_0_ram_reg_0_255_16_16),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_17_17
       (.A(a_reg[7:0]),
        .D(d_reg[17]),
        .O(n_0_ram_reg_0_255_17_17),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_18_18
       (.A(a_reg[7:0]),
        .D(d_reg[18]),
        .O(n_0_ram_reg_0_255_18_18),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_19_19
       (.A(a_reg[7:0]),
        .D(d_reg[19]),
        .O(n_0_ram_reg_0_255_19_19),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_1_1
       (.A(a_reg[7:0]),
        .D(d_reg[1]),
        .O(n_0_ram_reg_0_255_1_1),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_20_20
       (.A(a_reg[7:0]),
        .D(d_reg[20]),
        .O(n_0_ram_reg_0_255_20_20),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_21_21
       (.A(a_reg[7:0]),
        .D(d_reg[21]),
        .O(n_0_ram_reg_0_255_21_21),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_22_22
       (.A(a_reg[7:0]),
        .D(d_reg[22]),
        .O(n_0_ram_reg_0_255_22_22),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_23_23
       (.A(a_reg[7:0]),
        .D(d_reg[23]),
        .O(n_0_ram_reg_0_255_23_23),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_24_24
       (.A(a_reg[7:0]),
        .D(d_reg[24]),
        .O(n_0_ram_reg_0_255_24_24),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_25_25
       (.A(a_reg[7:0]),
        .D(d_reg[25]),
        .O(n_0_ram_reg_0_255_25_25),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_26_26
       (.A(a_reg[7:0]),
        .D(d_reg[26]),
        .O(n_0_ram_reg_0_255_26_26),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_27_27
       (.A(a_reg[7:0]),
        .D(d_reg[27]),
        .O(n_0_ram_reg_0_255_27_27),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_28_28
       (.A(a_reg[7:0]),
        .D(d_reg[28]),
        .O(n_0_ram_reg_0_255_28_28),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_29_29
       (.A(a_reg[7:0]),
        .D(d_reg[29]),
        .O(n_0_ram_reg_0_255_29_29),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_2_2
       (.A(a_reg[7:0]),
        .D(d_reg[2]),
        .O(n_0_ram_reg_0_255_2_2),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_30_30
       (.A(a_reg[7:0]),
        .D(d_reg[30]),
        .O(n_0_ram_reg_0_255_30_30),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_31_31
       (.A(a_reg[7:0]),
        .D(d_reg[31]),
        .O(n_0_ram_reg_0_255_31_31),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_3_3
       (.A(a_reg[7:0]),
        .D(d_reg[3]),
        .O(n_0_ram_reg_0_255_3_3),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_4_4
       (.A(a_reg[7:0]),
        .D(d_reg[4]),
        .O(n_0_ram_reg_0_255_4_4),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_5_5
       (.A(a_reg[7:0]),
        .D(d_reg[5]),
        .O(n_0_ram_reg_0_255_5_5),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_6_6
       (.A(a_reg[7:0]),
        .D(d_reg[6]),
        .O(n_0_ram_reg_0_255_6_6),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_7_7
       (.A(a_reg[7:0]),
        .D(d_reg[7]),
        .O(n_0_ram_reg_0_255_7_7),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_8_8
       (.A(a_reg[7:0]),
        .D(d_reg[8]),
        .O(n_0_ram_reg_0_255_8_8),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_0_255_9_9
       (.A(a_reg[7:0]),
        .D(d_reg[9]),
        .O(n_0_ram_reg_0_255_9_9),
        .WCLK(clk),
        .WE(n_0_ram_reg_0_255_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_0_0
       (.A(a_reg[7:0]),
        .D(d_reg[0]),
        .O(n_0_ram_reg_256_511_0_0),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
LUT3 #(
    .INIT(8'h40)) 
     ram_reg_256_511_0_0_i_1
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(we_reg),
        .O(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_10_10
       (.A(a_reg[7:0]),
        .D(d_reg[10]),
        .O(n_0_ram_reg_256_511_10_10),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_11_11
       (.A(a_reg[7:0]),
        .D(d_reg[11]),
        .O(n_0_ram_reg_256_511_11_11),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_12_12
       (.A(a_reg[7:0]),
        .D(d_reg[12]),
        .O(n_0_ram_reg_256_511_12_12),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_13_13
       (.A(a_reg[7:0]),
        .D(d_reg[13]),
        .O(n_0_ram_reg_256_511_13_13),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_14_14
       (.A(a_reg[7:0]),
        .D(d_reg[14]),
        .O(n_0_ram_reg_256_511_14_14),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_15_15
       (.A(a_reg[7:0]),
        .D(d_reg[15]),
        .O(n_0_ram_reg_256_511_15_15),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_16_16
       (.A(a_reg[7:0]),
        .D(d_reg[16]),
        .O(n_0_ram_reg_256_511_16_16),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_17_17
       (.A(a_reg[7:0]),
        .D(d_reg[17]),
        .O(n_0_ram_reg_256_511_17_17),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_18_18
       (.A(a_reg[7:0]),
        .D(d_reg[18]),
        .O(n_0_ram_reg_256_511_18_18),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_19_19
       (.A(a_reg[7:0]),
        .D(d_reg[19]),
        .O(n_0_ram_reg_256_511_19_19),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_1_1
       (.A(a_reg[7:0]),
        .D(d_reg[1]),
        .O(n_0_ram_reg_256_511_1_1),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_20_20
       (.A(a_reg[7:0]),
        .D(d_reg[20]),
        .O(n_0_ram_reg_256_511_20_20),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_21_21
       (.A(a_reg[7:0]),
        .D(d_reg[21]),
        .O(n_0_ram_reg_256_511_21_21),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_22_22
       (.A(a_reg[7:0]),
        .D(d_reg[22]),
        .O(n_0_ram_reg_256_511_22_22),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_23_23
       (.A(a_reg[7:0]),
        .D(d_reg[23]),
        .O(n_0_ram_reg_256_511_23_23),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_24_24
       (.A(a_reg[7:0]),
        .D(d_reg[24]),
        .O(n_0_ram_reg_256_511_24_24),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_25_25
       (.A(a_reg[7:0]),
        .D(d_reg[25]),
        .O(n_0_ram_reg_256_511_25_25),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_26_26
       (.A(a_reg[7:0]),
        .D(d_reg[26]),
        .O(n_0_ram_reg_256_511_26_26),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_27_27
       (.A(a_reg[7:0]),
        .D(d_reg[27]),
        .O(n_0_ram_reg_256_511_27_27),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_28_28
       (.A(a_reg[7:0]),
        .D(d_reg[28]),
        .O(n_0_ram_reg_256_511_28_28),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_29_29
       (.A(a_reg[7:0]),
        .D(d_reg[29]),
        .O(n_0_ram_reg_256_511_29_29),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_2_2
       (.A(a_reg[7:0]),
        .D(d_reg[2]),
        .O(n_0_ram_reg_256_511_2_2),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_30_30
       (.A(a_reg[7:0]),
        .D(d_reg[30]),
        .O(n_0_ram_reg_256_511_30_30),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_31_31
       (.A(a_reg[7:0]),
        .D(d_reg[31]),
        .O(n_0_ram_reg_256_511_31_31),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_3_3
       (.A(a_reg[7:0]),
        .D(d_reg[3]),
        .O(n_0_ram_reg_256_511_3_3),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_4_4
       (.A(a_reg[7:0]),
        .D(d_reg[4]),
        .O(n_0_ram_reg_256_511_4_4),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_5_5
       (.A(a_reg[7:0]),
        .D(d_reg[5]),
        .O(n_0_ram_reg_256_511_5_5),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_6_6
       (.A(a_reg[7:0]),
        .D(d_reg[6]),
        .O(n_0_ram_reg_256_511_6_6),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_7_7
       (.A(a_reg[7:0]),
        .D(d_reg[7]),
        .O(n_0_ram_reg_256_511_7_7),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_8_8
       (.A(a_reg[7:0]),
        .D(d_reg[8]),
        .O(n_0_ram_reg_256_511_8_8),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_256_511_9_9
       (.A(a_reg[7:0]),
        .D(d_reg[9]),
        .O(n_0_ram_reg_256_511_9_9),
        .WCLK(clk),
        .WE(n_0_ram_reg_256_511_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_0_0
       (.A(a_reg[7:0]),
        .D(d_reg[0]),
        .O(n_0_ram_reg_512_767_0_0),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
LUT3 #(
    .INIT(8'h40)) 
     ram_reg_512_767_0_0_i_1
       (.I0(a_reg[8]),
        .I1(a_reg[9]),
        .I2(we_reg),
        .O(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_10_10
       (.A(a_reg[7:0]),
        .D(d_reg[10]),
        .O(n_0_ram_reg_512_767_10_10),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_11_11
       (.A(a_reg[7:0]),
        .D(d_reg[11]),
        .O(n_0_ram_reg_512_767_11_11),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_12_12
       (.A(a_reg[7:0]),
        .D(d_reg[12]),
        .O(n_0_ram_reg_512_767_12_12),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_13_13
       (.A(a_reg[7:0]),
        .D(d_reg[13]),
        .O(n_0_ram_reg_512_767_13_13),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_14_14
       (.A(a_reg[7:0]),
        .D(d_reg[14]),
        .O(n_0_ram_reg_512_767_14_14),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_15_15
       (.A(a_reg[7:0]),
        .D(d_reg[15]),
        .O(n_0_ram_reg_512_767_15_15),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_16_16
       (.A(a_reg[7:0]),
        .D(d_reg[16]),
        .O(n_0_ram_reg_512_767_16_16),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_17_17
       (.A(a_reg[7:0]),
        .D(d_reg[17]),
        .O(n_0_ram_reg_512_767_17_17),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_18_18
       (.A(a_reg[7:0]),
        .D(d_reg[18]),
        .O(n_0_ram_reg_512_767_18_18),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_19_19
       (.A(a_reg[7:0]),
        .D(d_reg[19]),
        .O(n_0_ram_reg_512_767_19_19),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_1_1
       (.A(a_reg[7:0]),
        .D(d_reg[1]),
        .O(n_0_ram_reg_512_767_1_1),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_20_20
       (.A(a_reg[7:0]),
        .D(d_reg[20]),
        .O(n_0_ram_reg_512_767_20_20),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_21_21
       (.A(a_reg[7:0]),
        .D(d_reg[21]),
        .O(n_0_ram_reg_512_767_21_21),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_22_22
       (.A(a_reg[7:0]),
        .D(d_reg[22]),
        .O(n_0_ram_reg_512_767_22_22),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_23_23
       (.A(a_reg[7:0]),
        .D(d_reg[23]),
        .O(n_0_ram_reg_512_767_23_23),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_24_24
       (.A(a_reg[7:0]),
        .D(d_reg[24]),
        .O(n_0_ram_reg_512_767_24_24),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_25_25
       (.A(a_reg[7:0]),
        .D(d_reg[25]),
        .O(n_0_ram_reg_512_767_25_25),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_26_26
       (.A(a_reg[7:0]),
        .D(d_reg[26]),
        .O(n_0_ram_reg_512_767_26_26),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_27_27
       (.A(a_reg[7:0]),
        .D(d_reg[27]),
        .O(n_0_ram_reg_512_767_27_27),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_28_28
       (.A(a_reg[7:0]),
        .D(d_reg[28]),
        .O(n_0_ram_reg_512_767_28_28),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_29_29
       (.A(a_reg[7:0]),
        .D(d_reg[29]),
        .O(n_0_ram_reg_512_767_29_29),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_2_2
       (.A(a_reg[7:0]),
        .D(d_reg[2]),
        .O(n_0_ram_reg_512_767_2_2),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_30_30
       (.A(a_reg[7:0]),
        .D(d_reg[30]),
        .O(n_0_ram_reg_512_767_30_30),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_31_31
       (.A(a_reg[7:0]),
        .D(d_reg[31]),
        .O(n_0_ram_reg_512_767_31_31),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_3_3
       (.A(a_reg[7:0]),
        .D(d_reg[3]),
        .O(n_0_ram_reg_512_767_3_3),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_4_4
       (.A(a_reg[7:0]),
        .D(d_reg[4]),
        .O(n_0_ram_reg_512_767_4_4),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_5_5
       (.A(a_reg[7:0]),
        .D(d_reg[5]),
        .O(n_0_ram_reg_512_767_5_5),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_6_6
       (.A(a_reg[7:0]),
        .D(d_reg[6]),
        .O(n_0_ram_reg_512_767_6_6),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_7_7
       (.A(a_reg[7:0]),
        .D(d_reg[7]),
        .O(n_0_ram_reg_512_767_7_7),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_8_8
       (.A(a_reg[7:0]),
        .D(d_reg[8]),
        .O(n_0_ram_reg_512_767_8_8),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_512_767_9_9
       (.A(a_reg[7:0]),
        .D(d_reg[9]),
        .O(n_0_ram_reg_512_767_9_9),
        .WCLK(clk),
        .WE(n_0_ram_reg_512_767_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_0_0
       (.A(a_reg[7:0]),
        .D(d_reg[0]),
        .O(n_0_ram_reg_768_1023_0_0),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
LUT3 #(
    .INIT(8'h80)) 
     ram_reg_768_1023_0_0_i_1
       (.I0(we_reg),
        .I1(a_reg[8]),
        .I2(a_reg[9]),
        .O(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_10_10
       (.A(a_reg[7:0]),
        .D(d_reg[10]),
        .O(n_0_ram_reg_768_1023_10_10),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_11_11
       (.A(a_reg[7:0]),
        .D(d_reg[11]),
        .O(n_0_ram_reg_768_1023_11_11),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_12_12
       (.A(a_reg[7:0]),
        .D(d_reg[12]),
        .O(n_0_ram_reg_768_1023_12_12),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_13_13
       (.A(a_reg[7:0]),
        .D(d_reg[13]),
        .O(n_0_ram_reg_768_1023_13_13),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_14_14
       (.A(a_reg[7:0]),
        .D(d_reg[14]),
        .O(n_0_ram_reg_768_1023_14_14),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_15_15
       (.A(a_reg[7:0]),
        .D(d_reg[15]),
        .O(n_0_ram_reg_768_1023_15_15),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_16_16
       (.A(a_reg[7:0]),
        .D(d_reg[16]),
        .O(n_0_ram_reg_768_1023_16_16),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_17_17
       (.A(a_reg[7:0]),
        .D(d_reg[17]),
        .O(n_0_ram_reg_768_1023_17_17),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_18_18
       (.A(a_reg[7:0]),
        .D(d_reg[18]),
        .O(n_0_ram_reg_768_1023_18_18),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_19_19
       (.A(a_reg[7:0]),
        .D(d_reg[19]),
        .O(n_0_ram_reg_768_1023_19_19),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_1_1
       (.A(a_reg[7:0]),
        .D(d_reg[1]),
        .O(n_0_ram_reg_768_1023_1_1),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_20_20
       (.A(a_reg[7:0]),
        .D(d_reg[20]),
        .O(n_0_ram_reg_768_1023_20_20),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_21_21
       (.A(a_reg[7:0]),
        .D(d_reg[21]),
        .O(n_0_ram_reg_768_1023_21_21),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_22_22
       (.A(a_reg[7:0]),
        .D(d_reg[22]),
        .O(n_0_ram_reg_768_1023_22_22),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_23_23
       (.A(a_reg[7:0]),
        .D(d_reg[23]),
        .O(n_0_ram_reg_768_1023_23_23),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_24_24
       (.A(a_reg[7:0]),
        .D(d_reg[24]),
        .O(n_0_ram_reg_768_1023_24_24),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_25_25
       (.A(a_reg[7:0]),
        .D(d_reg[25]),
        .O(n_0_ram_reg_768_1023_25_25),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_26_26
       (.A(a_reg[7:0]),
        .D(d_reg[26]),
        .O(n_0_ram_reg_768_1023_26_26),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_27_27
       (.A(a_reg[7:0]),
        .D(d_reg[27]),
        .O(n_0_ram_reg_768_1023_27_27),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_28_28
       (.A(a_reg[7:0]),
        .D(d_reg[28]),
        .O(n_0_ram_reg_768_1023_28_28),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_29_29
       (.A(a_reg[7:0]),
        .D(d_reg[29]),
        .O(n_0_ram_reg_768_1023_29_29),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_2_2
       (.A(a_reg[7:0]),
        .D(d_reg[2]),
        .O(n_0_ram_reg_768_1023_2_2),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_30_30
       (.A(a_reg[7:0]),
        .D(d_reg[30]),
        .O(n_0_ram_reg_768_1023_30_30),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_31_31
       (.A(a_reg[7:0]),
        .D(d_reg[31]),
        .O(n_0_ram_reg_768_1023_31_31),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_3_3
       (.A(a_reg[7:0]),
        .D(d_reg[3]),
        .O(n_0_ram_reg_768_1023_3_3),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_4_4
       (.A(a_reg[7:0]),
        .D(d_reg[4]),
        .O(n_0_ram_reg_768_1023_4_4),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_5_5
       (.A(a_reg[7:0]),
        .D(d_reg[5]),
        .O(n_0_ram_reg_768_1023_5_5),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_6_6
       (.A(a_reg[7:0]),
        .D(d_reg[6]),
        .O(n_0_ram_reg_768_1023_6_6),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_7_7
       (.A(a_reg[7:0]),
        .D(d_reg[7]),
        .O(n_0_ram_reg_768_1023_7_7),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_8_8
       (.A(a_reg[7:0]),
        .D(d_reg[8]),
        .O(n_0_ram_reg_768_1023_8_8),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
     ram_reg_768_1023_9_9
       (.A(a_reg[7:0]),
        .D(d_reg[9]),
        .O(n_0_ram_reg_768_1023_9_9),
        .WCLK(clk),
        .WE(n_0_ram_reg_768_1023_0_0_i_1));
FDRE we_reg_reg
       (.C(clk),
        .CE(\<const1> ),
        .D(we),
        .Q(we_reg),
        .R(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
