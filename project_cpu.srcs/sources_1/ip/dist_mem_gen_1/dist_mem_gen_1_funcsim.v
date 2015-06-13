// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Mon Jan 05 22:29:31 2015
// Host        : running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_funcsim.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0,{}" *) 
(* core_generation_info = "dist_mem_gen_1,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=10,C_DEFAULT_DATA=0,C_DEPTH=1024,C_HAS_CLK=1,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=1,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=0,C_HAS_WE=0,C_MEM_INIT_FILE=dist_mem_gen_1.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=1,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}" *) 
(* NotValidForBitStream *)
module dist_mem_gen_1
   (a,
    clk,
    qspo);
  input [9:0]a;
  input clk;
  output [31:0]qspo;

  wire \<const0> ;
  wire \<const1> ;
  wire [9:0]a;
  wire clk;
  wire [31:0]qspo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_spo_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_FAMILY = "artix7" *) 
   (* C_HAS_D = "0" *) 
   (* C_HAS_DPO = "0" *) 
   (* C_HAS_DPRA = "0" *) 
   (* C_HAS_I_CE = "0" *) 
   (* C_HAS_QDPO = "0" *) 
   (* C_HAS_QDPO_CE = "0" *) 
   (* C_HAS_QDPO_CLK = "0" *) 
   (* C_HAS_QDPO_RST = "0" *) 
   (* C_HAS_QDPO_SRST = "0" *) 
   (* C_HAS_WE = "0" *) 
   (* C_MEM_TYPE = "0" *) 
   (* C_PIPELINE_STAGES = "0" *) 
   (* C_QCE_JOINED = "0" *) 
   (* C_QUALIFY_WE = "0" *) 
   (* C_REG_DPRA_INPUT = "0" *) 
   (* DONT_TOUCH *) 
   (* c_addr_width = "10" *) 
   (* c_default_data = "0" *) 
   (* c_depth = "1024" *) 
   (* c_elaboration_dir = "./" *) 
   (* c_has_clk = "1" *) 
   (* c_has_qspo = "1" *) 
   (* c_has_qspo_ce = "0" *) 
   (* c_has_qspo_rst = "0" *) 
   (* c_has_qspo_srst = "0" *) 
   (* c_has_spo = "0" *) 
   (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
   (* c_parser_type = "1" *) 
   (* c_read_mif = "1" *) 
   (* c_reg_a_d_inputs = "1" *) 
   (* c_sync_enable = "1" *) 
   (* c_width = "32" *) 
   dist_mem_gen_1dist_mem_gen_v8_0__parameterized0 U0
       (.a(a),
        .clk(clk),
        .d({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
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
        .we(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0" *) (* C_FAMILY = "artix7" *) (* C_ADDR_WIDTH = "10" *) 
(* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "1024" *) (* C_HAS_CLK = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "1" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "0" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_1.mif" *) (* C_ELABORATION_DIR = "./" *) (* C_MEM_TYPE = "0" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "1" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) (* C_PARSER_TYPE = "1" *) 
module dist_mem_gen_1dist_mem_gen_v8_0__parameterized0
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
  wire [31:0]qspo;

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
dist_mem_gen_1dist_mem_gen_v8_0_synth \synth_options.dist_mem_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

module dist_mem_gen_1dist_mem_gen_v8_0_synth
   (qspo,
    clk,
    a);
  output [31:0]qspo;
  input clk;
  input [9:0]a;

  wire [9:0]a;
  wire clk;
  wire [31:0]qspo;

dist_mem_gen_1rom__parameterized0 \gen_rom.rom_inst 
       (.a(a),
        .clk(clk),
        .qspo(qspo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module dist_mem_gen_1rom__parameterized0
   (qspo,
    clk,
    a);
  output [31:0]qspo;
  input clk;
  input [9:0]a;

  wire \<const0> ;
  wire \<const1> ;
  wire [9:0]a;
  wire [9:0]a_reg;
  wire clk;
  wire n_0_g0_b0;
  wire n_0_g0_b1;
  wire n_0_g0_b11;
  wire n_0_g0_b12;
  wire n_0_g0_b13;
  wire n_0_g0_b14;
  wire n_0_g0_b16;
  wire n_0_g0_b17;
  wire n_0_g0_b18;
  wire n_0_g0_b19;
  wire n_0_g0_b2;
  wire n_0_g0_b20;
  wire n_0_g0_b21;
  wire n_0_g0_b22;
  wire n_0_g0_b26;
  wire n_0_g0_b27;
  wire n_0_g0_b28;
  wire n_0_g0_b3;
  wire n_0_g0_b31;
  wire n_0_g0_b4;
  wire n_0_g0_b5;
  wire \n_0_qspo_int[0]_i_1 ;
  wire \n_0_qspo_int[11]_i_1 ;
  wire \n_0_qspo_int[12]_i_1 ;
  wire \n_0_qspo_int[13]_i_1 ;
  wire \n_0_qspo_int[14]_i_1 ;
  wire \n_0_qspo_int[16]_i_1 ;
  wire \n_0_qspo_int[17]_i_1 ;
  wire \n_0_qspo_int[18]_i_1 ;
  wire \n_0_qspo_int[19]_i_1 ;
  wire \n_0_qspo_int[1]_i_1 ;
  wire \n_0_qspo_int[20]_i_1 ;
  wire \n_0_qspo_int[21]_i_1 ;
  wire \n_0_qspo_int[22]_i_1 ;
  wire \n_0_qspo_int[26]_i_1 ;
  wire \n_0_qspo_int[27]_i_1 ;
  wire \n_0_qspo_int[28]_i_1 ;
  wire \n_0_qspo_int[2]_i_1 ;
  wire \n_0_qspo_int[31]_i_1 ;
  wire \n_0_qspo_int[3]_i_1 ;
  wire \n_0_qspo_int[4]_i_1 ;
  wire \n_0_qspo_int[5]_i_1 ;
  wire [31:0]qspo;

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
LUT6 #(
    .INIT(64'h0000000555550A15)) 
     g0_b0
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b0));
LUT6 #(
    .INIT(64'h0000001AAAAA6CA6)) 
     g0_b1
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b1));
LUT6 #(
    .INIT(64'h0000000000008540)) 
     g0_b11
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b11));
LUT6 #(
    .INIT(64'h0000000000002640)) 
     g0_b12
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b12));
LUT6 #(
    .INIT(64'h0000000000000780)) 
     g0_b13
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b13));
LUT6 #(
    .INIT(64'h0000000000000800)) 
     g0_b14
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b14));
LUT6 #(
    .INIT(64'h0000000000505015)) 
     g0_b16
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b16));
LUT6 #(
    .INIT(64'h0000000000041FD6)) 
     g0_b17
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b17));
LUT6 #(
    .INIT(64'h0000000000010038)) 
     g0_b18
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b18));
LUT6 #(
    .INIT(64'h000000000000001C)) 
     g0_b19
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b19));
LUT6 #(
    .INIT(64'h0000000000000F38)) 
     g0_b2
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b2));
LUT6 #(
    .INIT(64'h0000000000000020)) 
     g0_b20
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b20));
LUT6 #(
    .INIT(64'h0000000110155FC0)) 
     g0_b21
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b21));
LUT6 #(
    .INIT(64'h0000000151404000)) 
     g0_b22
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b22));
LUT6 #(
    .INIT(64'h000000050554003F)) 
     g0_b26
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b26));
LUT6 #(
    .INIT(64'h0000001AFFAA003F)) 
     g0_b27
       (.I0(a_reg[0]),
        .I1(a_reg[1]),
        .I2(a_reg[2]),
        .I3(a_reg[3]),
        .I4(a_reg[4]),
        .I5(a_reg[5]),
        .O(n_0_g0_b27));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00005100)) 
     g0_b28
       (.I0(a_reg[0]),
        .I1(a_reg[2]),
        .I2(a_reg[3]),
        .I3(a_reg[4]),
        .I4(a_reg[5]),
        .O(n_0_g0_b28));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000040)) 
     g0_b3
       (.I0(a_reg[0]),
        .I1(a_reg[2]),
        .I2(a_reg[3]),
        .I3(a_reg[4]),
        .I4(a_reg[5]),
        .O(n_0_g0_b3));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00000007)) 
     g0_b31
       (.I0(a_reg[1]),
        .I1(a_reg[2]),
        .I2(a_reg[3]),
        .I3(a_reg[4]),
        .I4(a_reg[5]),
        .O(n_0_g0_b31));
LUT4 #(
    .INIT(16'h0008)) 
     g0_b4
       (.I0(a_reg[2]),
        .I1(a_reg[3]),
        .I2(a_reg[4]),
        .I3(a_reg[5]),
        .O(n_0_g0_b4));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00000038)) 
     g0_b5
       (.I0(a_reg[1]),
        .I1(a_reg[2]),
        .I2(a_reg[3]),
        .I3(a_reg[4]),
        .I4(a_reg[5]),
        .O(n_0_g0_b5));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[0]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b0),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[0]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[11]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b11),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[11]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[12]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b12),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[12]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[13]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b13),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[13]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[14]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b14),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[14]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[16]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b16),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[16]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[17]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b17),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[17]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[18]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b18),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[18]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[19]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b19),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[19]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[1]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b1),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[1]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[20]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b20),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[20]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[21]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b21),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[21]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[22]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b22),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[22]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[26]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b26),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[26]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[27]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b27),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[27]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[28]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b28),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[28]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[2]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b2),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[2]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[31]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b31),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[31]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[3]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b3),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[3]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[4]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b4),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[4]_i_1 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \qspo_int[5]_i_1 
       (.I0(a_reg[9]),
        .I1(a_reg[8]),
        .I2(n_0_g0_b5),
        .I3(a_reg[6]),
        .I4(a_reg[7]),
        .O(\n_0_qspo_int[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[0] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[0]_i_1 ),
        .Q(qspo[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[10] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[11] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[11]_i_1 ),
        .Q(qspo[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[12] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[12]_i_1 ),
        .Q(qspo[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[13] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[13]_i_1 ),
        .Q(qspo[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[14] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[14]_i_1 ),
        .Q(qspo[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[15] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[16] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[16]_i_1 ),
        .Q(qspo[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[17] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[17]_i_1 ),
        .Q(qspo[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[18] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[18]_i_1 ),
        .Q(qspo[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[19] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[19]_i_1 ),
        .Q(qspo[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[1] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[1]_i_1 ),
        .Q(qspo[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[20] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[20]_i_1 ),
        .Q(qspo[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[21] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[21]_i_1 ),
        .Q(qspo[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[22] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[22]_i_1 ),
        .Q(qspo[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[23] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[24] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[25] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[26] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[26]_i_1 ),
        .Q(qspo[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[27] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[27]_i_1 ),
        .Q(qspo[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[28] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[28]_i_1 ),
        .Q(qspo[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[29] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[2] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[2]_i_1 ),
        .Q(qspo[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[30] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[31] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[31]_i_1 ),
        .Q(qspo[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[3] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[3]_i_1 ),
        .Q(qspo[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[4] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[4]_i_1 ),
        .Q(qspo[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[5] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\n_0_qspo_int[5]_i_1 ),
        .Q(qspo[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[6] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[7] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[8] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \qspo_int_reg[9] 
       (.C(clk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(qspo[9]),
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
