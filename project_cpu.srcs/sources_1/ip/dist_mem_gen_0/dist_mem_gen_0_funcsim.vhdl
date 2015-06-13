-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Mon Jan 05 22:27:50 2015
-- Host        : running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_funcsim.vhdl
-- Design      : dist_mem_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \dist_mem_gen_0spram__parameterized0\ is
  port (
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dist_mem_gen_0spram__parameterized0\ : entity is "spram";
end \dist_mem_gen_0spram__parameterized0\;

architecture STRUCTURE of \dist_mem_gen_0spram__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal a_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal d_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal n_0_ram_reg_0_255_0_0 : STD_LOGIC;
  signal n_0_ram_reg_0_255_0_0_i_1 : STD_LOGIC;
  signal n_0_ram_reg_0_255_10_10 : STD_LOGIC;
  signal n_0_ram_reg_0_255_11_11 : STD_LOGIC;
  signal n_0_ram_reg_0_255_12_12 : STD_LOGIC;
  signal n_0_ram_reg_0_255_13_13 : STD_LOGIC;
  signal n_0_ram_reg_0_255_14_14 : STD_LOGIC;
  signal n_0_ram_reg_0_255_15_15 : STD_LOGIC;
  signal n_0_ram_reg_0_255_16_16 : STD_LOGIC;
  signal n_0_ram_reg_0_255_17_17 : STD_LOGIC;
  signal n_0_ram_reg_0_255_18_18 : STD_LOGIC;
  signal n_0_ram_reg_0_255_19_19 : STD_LOGIC;
  signal n_0_ram_reg_0_255_1_1 : STD_LOGIC;
  signal n_0_ram_reg_0_255_20_20 : STD_LOGIC;
  signal n_0_ram_reg_0_255_21_21 : STD_LOGIC;
  signal n_0_ram_reg_0_255_22_22 : STD_LOGIC;
  signal n_0_ram_reg_0_255_23_23 : STD_LOGIC;
  signal n_0_ram_reg_0_255_24_24 : STD_LOGIC;
  signal n_0_ram_reg_0_255_25_25 : STD_LOGIC;
  signal n_0_ram_reg_0_255_26_26 : STD_LOGIC;
  signal n_0_ram_reg_0_255_27_27 : STD_LOGIC;
  signal n_0_ram_reg_0_255_28_28 : STD_LOGIC;
  signal n_0_ram_reg_0_255_29_29 : STD_LOGIC;
  signal n_0_ram_reg_0_255_2_2 : STD_LOGIC;
  signal n_0_ram_reg_0_255_30_30 : STD_LOGIC;
  signal n_0_ram_reg_0_255_31_31 : STD_LOGIC;
  signal n_0_ram_reg_0_255_3_3 : STD_LOGIC;
  signal n_0_ram_reg_0_255_4_4 : STD_LOGIC;
  signal n_0_ram_reg_0_255_5_5 : STD_LOGIC;
  signal n_0_ram_reg_0_255_6_6 : STD_LOGIC;
  signal n_0_ram_reg_0_255_7_7 : STD_LOGIC;
  signal n_0_ram_reg_0_255_8_8 : STD_LOGIC;
  signal n_0_ram_reg_0_255_9_9 : STD_LOGIC;
  signal n_0_ram_reg_256_511_0_0 : STD_LOGIC;
  signal n_0_ram_reg_256_511_0_0_i_1 : STD_LOGIC;
  signal n_0_ram_reg_256_511_10_10 : STD_LOGIC;
  signal n_0_ram_reg_256_511_11_11 : STD_LOGIC;
  signal n_0_ram_reg_256_511_12_12 : STD_LOGIC;
  signal n_0_ram_reg_256_511_13_13 : STD_LOGIC;
  signal n_0_ram_reg_256_511_14_14 : STD_LOGIC;
  signal n_0_ram_reg_256_511_15_15 : STD_LOGIC;
  signal n_0_ram_reg_256_511_16_16 : STD_LOGIC;
  signal n_0_ram_reg_256_511_17_17 : STD_LOGIC;
  signal n_0_ram_reg_256_511_18_18 : STD_LOGIC;
  signal n_0_ram_reg_256_511_19_19 : STD_LOGIC;
  signal n_0_ram_reg_256_511_1_1 : STD_LOGIC;
  signal n_0_ram_reg_256_511_20_20 : STD_LOGIC;
  signal n_0_ram_reg_256_511_21_21 : STD_LOGIC;
  signal n_0_ram_reg_256_511_22_22 : STD_LOGIC;
  signal n_0_ram_reg_256_511_23_23 : STD_LOGIC;
  signal n_0_ram_reg_256_511_24_24 : STD_LOGIC;
  signal n_0_ram_reg_256_511_25_25 : STD_LOGIC;
  signal n_0_ram_reg_256_511_26_26 : STD_LOGIC;
  signal n_0_ram_reg_256_511_27_27 : STD_LOGIC;
  signal n_0_ram_reg_256_511_28_28 : STD_LOGIC;
  signal n_0_ram_reg_256_511_29_29 : STD_LOGIC;
  signal n_0_ram_reg_256_511_2_2 : STD_LOGIC;
  signal n_0_ram_reg_256_511_30_30 : STD_LOGIC;
  signal n_0_ram_reg_256_511_31_31 : STD_LOGIC;
  signal n_0_ram_reg_256_511_3_3 : STD_LOGIC;
  signal n_0_ram_reg_256_511_4_4 : STD_LOGIC;
  signal n_0_ram_reg_256_511_5_5 : STD_LOGIC;
  signal n_0_ram_reg_256_511_6_6 : STD_LOGIC;
  signal n_0_ram_reg_256_511_7_7 : STD_LOGIC;
  signal n_0_ram_reg_256_511_8_8 : STD_LOGIC;
  signal n_0_ram_reg_256_511_9_9 : STD_LOGIC;
  signal n_0_ram_reg_512_767_0_0 : STD_LOGIC;
  signal n_0_ram_reg_512_767_0_0_i_1 : STD_LOGIC;
  signal n_0_ram_reg_512_767_10_10 : STD_LOGIC;
  signal n_0_ram_reg_512_767_11_11 : STD_LOGIC;
  signal n_0_ram_reg_512_767_12_12 : STD_LOGIC;
  signal n_0_ram_reg_512_767_13_13 : STD_LOGIC;
  signal n_0_ram_reg_512_767_14_14 : STD_LOGIC;
  signal n_0_ram_reg_512_767_15_15 : STD_LOGIC;
  signal n_0_ram_reg_512_767_16_16 : STD_LOGIC;
  signal n_0_ram_reg_512_767_17_17 : STD_LOGIC;
  signal n_0_ram_reg_512_767_18_18 : STD_LOGIC;
  signal n_0_ram_reg_512_767_19_19 : STD_LOGIC;
  signal n_0_ram_reg_512_767_1_1 : STD_LOGIC;
  signal n_0_ram_reg_512_767_20_20 : STD_LOGIC;
  signal n_0_ram_reg_512_767_21_21 : STD_LOGIC;
  signal n_0_ram_reg_512_767_22_22 : STD_LOGIC;
  signal n_0_ram_reg_512_767_23_23 : STD_LOGIC;
  signal n_0_ram_reg_512_767_24_24 : STD_LOGIC;
  signal n_0_ram_reg_512_767_25_25 : STD_LOGIC;
  signal n_0_ram_reg_512_767_26_26 : STD_LOGIC;
  signal n_0_ram_reg_512_767_27_27 : STD_LOGIC;
  signal n_0_ram_reg_512_767_28_28 : STD_LOGIC;
  signal n_0_ram_reg_512_767_29_29 : STD_LOGIC;
  signal n_0_ram_reg_512_767_2_2 : STD_LOGIC;
  signal n_0_ram_reg_512_767_30_30 : STD_LOGIC;
  signal n_0_ram_reg_512_767_31_31 : STD_LOGIC;
  signal n_0_ram_reg_512_767_3_3 : STD_LOGIC;
  signal n_0_ram_reg_512_767_4_4 : STD_LOGIC;
  signal n_0_ram_reg_512_767_5_5 : STD_LOGIC;
  signal n_0_ram_reg_512_767_6_6 : STD_LOGIC;
  signal n_0_ram_reg_512_767_7_7 : STD_LOGIC;
  signal n_0_ram_reg_512_767_8_8 : STD_LOGIC;
  signal n_0_ram_reg_512_767_9_9 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_0_0 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_0_0_i_1 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_10_10 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_11_11 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_12_12 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_13_13 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_14_14 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_15_15 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_16_16 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_17_17 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_18_18 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_19_19 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_1_1 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_20_20 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_21_21 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_22_22 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_23_23 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_24_24 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_25_25 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_26_26 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_27_27 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_28_28 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_29_29 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_2_2 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_30_30 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_31_31 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_3_3 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_4_4 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_5_5 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_6_6 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_7_7 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_8_8 : STD_LOGIC;
  signal n_0_ram_reg_768_1023_9_9 : STD_LOGIC;
  signal qspo_input : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal qspo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal we_reg : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute keep : string;
  attribute keep of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute keep of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute keep of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute keep of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute keep of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute keep of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute keep of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[16]\ : label is "no";
  attribute keep of \qspo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[17]\ : label is "no";
  attribute keep of \qspo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[18]\ : label is "no";
  attribute keep of \qspo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[19]\ : label is "no";
  attribute keep of \qspo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute keep of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[20]\ : label is "no";
  attribute keep of \qspo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[21]\ : label is "no";
  attribute keep of \qspo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[22]\ : label is "no";
  attribute keep of \qspo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[23]\ : label is "no";
  attribute keep of \qspo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[24]\ : label is "no";
  attribute keep of \qspo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[25]\ : label is "no";
  attribute keep of \qspo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[26]\ : label is "no";
  attribute keep of \qspo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[27]\ : label is "no";
  attribute keep of \qspo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[28]\ : label is "no";
  attribute keep of \qspo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[29]\ : label is "no";
  attribute keep of \qspo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute keep of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[30]\ : label is "no";
  attribute keep of \qspo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[31]\ : label is "no";
  attribute keep of \qspo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute keep of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute keep of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute keep of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute keep of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute keep of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute keep of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute keep of \qspo_int_reg[9]\ : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\a_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(0),
      Q => a_reg(0),
      R => \<const0>\
    );
\a_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(1),
      Q => a_reg(1),
      R => \<const0>\
    );
\a_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(2),
      Q => a_reg(2),
      R => \<const0>\
    );
\a_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(3),
      Q => a_reg(3),
      R => \<const0>\
    );
\a_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(4),
      Q => a_reg(4),
      R => \<const0>\
    );
\a_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(5),
      Q => a_reg(5),
      R => \<const0>\
    );
\a_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(6),
      Q => a_reg(6),
      R => \<const0>\
    );
\a_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(7),
      Q => a_reg(7),
      R => \<const0>\
    );
\a_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(8),
      Q => a_reg(8),
      R => \<const0>\
    );
\a_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => a(9),
      Q => a_reg(9),
      R => \<const0>\
    );
\d_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(0),
      Q => d_reg(0),
      R => \<const0>\
    );
\d_reg_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(10),
      Q => d_reg(10),
      R => \<const0>\
    );
\d_reg_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(11),
      Q => d_reg(11),
      R => \<const0>\
    );
\d_reg_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(12),
      Q => d_reg(12),
      R => \<const0>\
    );
\d_reg_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(13),
      Q => d_reg(13),
      R => \<const0>\
    );
\d_reg_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(14),
      Q => d_reg(14),
      R => \<const0>\
    );
\d_reg_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(15),
      Q => d_reg(15),
      R => \<const0>\
    );
\d_reg_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(16),
      Q => d_reg(16),
      R => \<const0>\
    );
\d_reg_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(17),
      Q => d_reg(17),
      R => \<const0>\
    );
\d_reg_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(18),
      Q => d_reg(18),
      R => \<const0>\
    );
\d_reg_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(19),
      Q => d_reg(19),
      R => \<const0>\
    );
\d_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(1),
      Q => d_reg(1),
      R => \<const0>\
    );
\d_reg_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(20),
      Q => d_reg(20),
      R => \<const0>\
    );
\d_reg_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(21),
      Q => d_reg(21),
      R => \<const0>\
    );
\d_reg_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(22),
      Q => d_reg(22),
      R => \<const0>\
    );
\d_reg_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(23),
      Q => d_reg(23),
      R => \<const0>\
    );
\d_reg_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(24),
      Q => d_reg(24),
      R => \<const0>\
    );
\d_reg_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(25),
      Q => d_reg(25),
      R => \<const0>\
    );
\d_reg_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(26),
      Q => d_reg(26),
      R => \<const0>\
    );
\d_reg_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(27),
      Q => d_reg(27),
      R => \<const0>\
    );
\d_reg_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(28),
      Q => d_reg(28),
      R => \<const0>\
    );
\d_reg_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(29),
      Q => d_reg(29),
      R => \<const0>\
    );
\d_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(2),
      Q => d_reg(2),
      R => \<const0>\
    );
\d_reg_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(30),
      Q => d_reg(30),
      R => \<const0>\
    );
\d_reg_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(31),
      Q => d_reg(31),
      R => \<const0>\
    );
\d_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(3),
      Q => d_reg(3),
      R => \<const0>\
    );
\d_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(4),
      Q => d_reg(4),
      R => \<const0>\
    );
\d_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(5),
      Q => d_reg(5),
      R => \<const0>\
    );
\d_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(6),
      Q => d_reg(6),
      R => \<const0>\
    );
\d_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(7),
      Q => d_reg(7),
      R => \<const0>\
    );
\d_reg_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(8),
      Q => d_reg(8),
      R => \<const0>\
    );
\d_reg_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => d(9),
      Q => d_reg(9),
      R => \<const0>\
    );
\gen_sp_ram.spram_insti_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(31),
      O => qspo(31)
    );
\gen_sp_ram.spram_insti_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(30),
      O => qspo(30)
    );
\gen_sp_ram.spram_insti_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(21),
      O => qspo(21)
    );
\gen_sp_ram.spram_insti_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(20),
      O => qspo(20)
    );
\gen_sp_ram.spram_insti_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(19),
      O => qspo(19)
    );
\gen_sp_ram.spram_insti_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(18),
      O => qspo(18)
    );
\gen_sp_ram.spram_insti_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(17),
      O => qspo(17)
    );
\gen_sp_ram.spram_insti_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(16),
      O => qspo(16)
    );
\gen_sp_ram.spram_insti_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(15),
      O => qspo(15)
    );
\gen_sp_ram.spram_insti_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(14),
      O => qspo(14)
    );
\gen_sp_ram.spram_insti_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(13),
      O => qspo(13)
    );
\gen_sp_ram.spram_insti_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(12),
      O => qspo(12)
    );
\gen_sp_ram.spram_insti_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(29),
      O => qspo(29)
    );
\gen_sp_ram.spram_insti_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(11),
      O => qspo(11)
    );
\gen_sp_ram.spram_insti_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(10),
      O => qspo(10)
    );
\gen_sp_ram.spram_insti_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(9),
      O => qspo(9)
    );
\gen_sp_ram.spram_insti_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(8),
      O => qspo(8)
    );
\gen_sp_ram.spram_insti_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(7),
      O => qspo(7)
    );
\gen_sp_ram.spram_insti_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(6),
      O => qspo(6)
    );
\gen_sp_ram.spram_insti_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(5),
      O => qspo(5)
    );
\gen_sp_ram.spram_insti_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(4),
      O => qspo(4)
    );
\gen_sp_ram.spram_insti_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(3),
      O => qspo(3)
    );
\gen_sp_ram.spram_insti_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(2),
      O => qspo(2)
    );
\gen_sp_ram.spram_insti_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(28),
      O => qspo(28)
    );
\gen_sp_ram.spram_insti_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(1),
      O => qspo(1)
    );
\gen_sp_ram.spram_insti_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(0),
      O => qspo(0)
    );
\gen_sp_ram.spram_insti_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(27),
      O => qspo(27)
    );
\gen_sp_ram.spram_insti_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(26),
      O => qspo(26)
    );
\gen_sp_ram.spram_insti_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(25),
      O => qspo(25)
    );
\gen_sp_ram.spram_insti_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(24),
      O => qspo(24)
    );
\gen_sp_ram.spram_insti_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(23),
      O => qspo(23)
    );
\gen_sp_ram.spram_insti_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => qspo_int(22),
      O => qspo(22)
    );
\qspo_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_0_0,
      I1 => n_0_ram_reg_512_767_0_0,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_0_0,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_0_0,
      O => qspo_input(0)
    );
\qspo_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_10_10,
      I1 => n_0_ram_reg_512_767_10_10,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_10_10,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_10_10,
      O => qspo_input(10)
    );
\qspo_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_11_11,
      I1 => n_0_ram_reg_512_767_11_11,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_11_11,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_11_11,
      O => qspo_input(11)
    );
\qspo_int[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_12_12,
      I1 => n_0_ram_reg_512_767_12_12,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_12_12,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_12_12,
      O => qspo_input(12)
    );
\qspo_int[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_13_13,
      I1 => n_0_ram_reg_512_767_13_13,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_13_13,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_13_13,
      O => qspo_input(13)
    );
\qspo_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_14_14,
      I1 => n_0_ram_reg_512_767_14_14,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_14_14,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_14_14,
      O => qspo_input(14)
    );
\qspo_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_15_15,
      I1 => n_0_ram_reg_512_767_15_15,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_15_15,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_15_15,
      O => qspo_input(15)
    );
\qspo_int[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_16_16,
      I1 => n_0_ram_reg_512_767_16_16,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_16_16,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_16_16,
      O => qspo_input(16)
    );
\qspo_int[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_17_17,
      I1 => n_0_ram_reg_512_767_17_17,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_17_17,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_17_17,
      O => qspo_input(17)
    );
\qspo_int[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_18_18,
      I1 => n_0_ram_reg_512_767_18_18,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_18_18,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_18_18,
      O => qspo_input(18)
    );
\qspo_int[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_19_19,
      I1 => n_0_ram_reg_512_767_19_19,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_19_19,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_19_19,
      O => qspo_input(19)
    );
\qspo_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_1_1,
      I1 => n_0_ram_reg_512_767_1_1,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_1_1,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_1_1,
      O => qspo_input(1)
    );
\qspo_int[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_20_20,
      I1 => n_0_ram_reg_512_767_20_20,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_20_20,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_20_20,
      O => qspo_input(20)
    );
\qspo_int[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_21_21,
      I1 => n_0_ram_reg_512_767_21_21,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_21_21,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_21_21,
      O => qspo_input(21)
    );
\qspo_int[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_22_22,
      I1 => n_0_ram_reg_512_767_22_22,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_22_22,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_22_22,
      O => qspo_input(22)
    );
\qspo_int[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_23_23,
      I1 => n_0_ram_reg_512_767_23_23,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_23_23,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_23_23,
      O => qspo_input(23)
    );
\qspo_int[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_24_24,
      I1 => n_0_ram_reg_512_767_24_24,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_24_24,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_24_24,
      O => qspo_input(24)
    );
\qspo_int[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_25_25,
      I1 => n_0_ram_reg_512_767_25_25,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_25_25,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_25_25,
      O => qspo_input(25)
    );
\qspo_int[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_26_26,
      I1 => n_0_ram_reg_512_767_26_26,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_26_26,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_26_26,
      O => qspo_input(26)
    );
\qspo_int[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_27_27,
      I1 => n_0_ram_reg_512_767_27_27,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_27_27,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_27_27,
      O => qspo_input(27)
    );
\qspo_int[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_28_28,
      I1 => n_0_ram_reg_512_767_28_28,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_28_28,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_28_28,
      O => qspo_input(28)
    );
\qspo_int[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_29_29,
      I1 => n_0_ram_reg_512_767_29_29,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_29_29,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_29_29,
      O => qspo_input(29)
    );
\qspo_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_2_2,
      I1 => n_0_ram_reg_512_767_2_2,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_2_2,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_2_2,
      O => qspo_input(2)
    );
\qspo_int[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_30_30,
      I1 => n_0_ram_reg_512_767_30_30,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_30_30,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_30_30,
      O => qspo_input(30)
    );
\qspo_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_31_31,
      I1 => n_0_ram_reg_512_767_31_31,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_31_31,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_31_31,
      O => qspo_input(31)
    );
\qspo_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_3_3,
      I1 => n_0_ram_reg_512_767_3_3,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_3_3,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_3_3,
      O => qspo_input(3)
    );
\qspo_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_4_4,
      I1 => n_0_ram_reg_512_767_4_4,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_4_4,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_4_4,
      O => qspo_input(4)
    );
\qspo_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_5_5,
      I1 => n_0_ram_reg_512_767_5_5,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_5_5,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_5_5,
      O => qspo_input(5)
    );
\qspo_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_6_6,
      I1 => n_0_ram_reg_512_767_6_6,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_6_6,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_6_6,
      O => qspo_input(6)
    );
\qspo_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_7_7,
      I1 => n_0_ram_reg_512_767_7_7,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_7_7,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_7_7,
      O => qspo_input(7)
    );
\qspo_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_8_8,
      I1 => n_0_ram_reg_512_767_8_8,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_8_8,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_8_8,
      O => qspo_input(8)
    );
\qspo_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => n_0_ram_reg_768_1023_9_9,
      I1 => n_0_ram_reg_512_767_9_9,
      I2 => a_reg(9),
      I3 => n_0_ram_reg_256_511_9_9,
      I4 => a_reg(8),
      I5 => n_0_ram_reg_0_255_9_9,
      O => qspo_input(9)
    );
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(0),
      Q => qspo_int(0),
      R => \<const0>\
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(10),
      Q => qspo_int(10),
      R => \<const0>\
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(11),
      Q => qspo_int(11),
      R => \<const0>\
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(12),
      Q => qspo_int(12),
      R => \<const0>\
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(13),
      Q => qspo_int(13),
      R => \<const0>\
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(14),
      Q => qspo_int(14),
      R => \<const0>\
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(15),
      Q => qspo_int(15),
      R => \<const0>\
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(16),
      Q => qspo_int(16),
      R => \<const0>\
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(17),
      Q => qspo_int(17),
      R => \<const0>\
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(18),
      Q => qspo_int(18),
      R => \<const0>\
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(19),
      Q => qspo_int(19),
      R => \<const0>\
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(1),
      Q => qspo_int(1),
      R => \<const0>\
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(20),
      Q => qspo_int(20),
      R => \<const0>\
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(21),
      Q => qspo_int(21),
      R => \<const0>\
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(22),
      Q => qspo_int(22),
      R => \<const0>\
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(23),
      Q => qspo_int(23),
      R => \<const0>\
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(24),
      Q => qspo_int(24),
      R => \<const0>\
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(25),
      Q => qspo_int(25),
      R => \<const0>\
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(26),
      Q => qspo_int(26),
      R => \<const0>\
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(27),
      Q => qspo_int(27),
      R => \<const0>\
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(28),
      Q => qspo_int(28),
      R => \<const0>\
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(29),
      Q => qspo_int(29),
      R => \<const0>\
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(2),
      Q => qspo_int(2),
      R => \<const0>\
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(30),
      Q => qspo_int(30),
      R => \<const0>\
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(31),
      Q => qspo_int(31),
      R => \<const0>\
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(3),
      Q => qspo_int(3),
      R => \<const0>\
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(4),
      Q => qspo_int(4),
      R => \<const0>\
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(5),
      Q => qspo_int(5),
      R => \<const0>\
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(6),
      Q => qspo_int(6),
      R => \<const0>\
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(7),
      Q => qspo_int(7),
      R => \<const0>\
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(8),
      Q => qspo_int(8),
      R => \<const0>\
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => qspo_input(9),
      Q => qspo_int(9),
      R => \<const0>\
    );
ram_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(0),
      O => n_0_ram_reg_0_255_0_0,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => we_reg,
      I1 => a_reg(8),
      I2 => a_reg(9),
      O => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(10),
      O => n_0_ram_reg_0_255_10_10,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(11),
      O => n_0_ram_reg_0_255_11_11,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(12),
      O => n_0_ram_reg_0_255_12_12,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(13),
      O => n_0_ram_reg_0_255_13_13,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(14),
      O => n_0_ram_reg_0_255_14_14,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(15),
      O => n_0_ram_reg_0_255_15_15,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(16),
      O => n_0_ram_reg_0_255_16_16,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(17),
      O => n_0_ram_reg_0_255_17_17,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(18),
      O => n_0_ram_reg_0_255_18_18,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(19),
      O => n_0_ram_reg_0_255_19_19,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(1),
      O => n_0_ram_reg_0_255_1_1,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(20),
      O => n_0_ram_reg_0_255_20_20,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(21),
      O => n_0_ram_reg_0_255_21_21,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(22),
      O => n_0_ram_reg_0_255_22_22,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(23),
      O => n_0_ram_reg_0_255_23_23,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(24),
      O => n_0_ram_reg_0_255_24_24,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(25),
      O => n_0_ram_reg_0_255_25_25,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(26),
      O => n_0_ram_reg_0_255_26_26,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(27),
      O => n_0_ram_reg_0_255_27_27,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(28),
      O => n_0_ram_reg_0_255_28_28,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(29),
      O => n_0_ram_reg_0_255_29_29,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(2),
      O => n_0_ram_reg_0_255_2_2,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(30),
      O => n_0_ram_reg_0_255_30_30,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(31),
      O => n_0_ram_reg_0_255_31_31,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(3),
      O => n_0_ram_reg_0_255_3_3,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(4),
      O => n_0_ram_reg_0_255_4_4,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(5),
      O => n_0_ram_reg_0_255_5_5,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(6),
      O => n_0_ram_reg_0_255_6_6,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(7),
      O => n_0_ram_reg_0_255_7_7,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(8),
      O => n_0_ram_reg_0_255_8_8,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(9),
      O => n_0_ram_reg_0_255_9_9,
      WCLK => clk,
      WE => n_0_ram_reg_0_255_0_0_i_1
    );
ram_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(0),
      O => n_0_ram_reg_256_511_0_0,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => we_reg,
      O => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(10),
      O => n_0_ram_reg_256_511_10_10,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(11),
      O => n_0_ram_reg_256_511_11_11,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(12),
      O => n_0_ram_reg_256_511_12_12,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(13),
      O => n_0_ram_reg_256_511_13_13,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(14),
      O => n_0_ram_reg_256_511_14_14,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(15),
      O => n_0_ram_reg_256_511_15_15,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(16),
      O => n_0_ram_reg_256_511_16_16,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(17),
      O => n_0_ram_reg_256_511_17_17,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(18),
      O => n_0_ram_reg_256_511_18_18,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(19),
      O => n_0_ram_reg_256_511_19_19,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(1),
      O => n_0_ram_reg_256_511_1_1,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(20),
      O => n_0_ram_reg_256_511_20_20,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(21),
      O => n_0_ram_reg_256_511_21_21,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(22),
      O => n_0_ram_reg_256_511_22_22,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(23),
      O => n_0_ram_reg_256_511_23_23,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(24),
      O => n_0_ram_reg_256_511_24_24,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(25),
      O => n_0_ram_reg_256_511_25_25,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(26),
      O => n_0_ram_reg_256_511_26_26,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(27),
      O => n_0_ram_reg_256_511_27_27,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(28),
      O => n_0_ram_reg_256_511_28_28,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(29),
      O => n_0_ram_reg_256_511_29_29,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(2),
      O => n_0_ram_reg_256_511_2_2,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(30),
      O => n_0_ram_reg_256_511_30_30,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(31),
      O => n_0_ram_reg_256_511_31_31,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(3),
      O => n_0_ram_reg_256_511_3_3,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(4),
      O => n_0_ram_reg_256_511_4_4,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(5),
      O => n_0_ram_reg_256_511_5_5,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(6),
      O => n_0_ram_reg_256_511_6_6,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(7),
      O => n_0_ram_reg_256_511_7_7,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(8),
      O => n_0_ram_reg_256_511_8_8,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_256_511_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(9),
      O => n_0_ram_reg_256_511_9_9,
      WCLK => clk,
      WE => n_0_ram_reg_256_511_0_0_i_1
    );
ram_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(0),
      O => n_0_ram_reg_512_767_0_0,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => a_reg(8),
      I1 => a_reg(9),
      I2 => we_reg,
      O => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(10),
      O => n_0_ram_reg_512_767_10_10,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(11),
      O => n_0_ram_reg_512_767_11_11,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(12),
      O => n_0_ram_reg_512_767_12_12,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(13),
      O => n_0_ram_reg_512_767_13_13,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(14),
      O => n_0_ram_reg_512_767_14_14,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(15),
      O => n_0_ram_reg_512_767_15_15,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(16),
      O => n_0_ram_reg_512_767_16_16,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(17),
      O => n_0_ram_reg_512_767_17_17,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(18),
      O => n_0_ram_reg_512_767_18_18,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(19),
      O => n_0_ram_reg_512_767_19_19,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(1),
      O => n_0_ram_reg_512_767_1_1,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(20),
      O => n_0_ram_reg_512_767_20_20,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(21),
      O => n_0_ram_reg_512_767_21_21,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(22),
      O => n_0_ram_reg_512_767_22_22,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(23),
      O => n_0_ram_reg_512_767_23_23,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(24),
      O => n_0_ram_reg_512_767_24_24,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(25),
      O => n_0_ram_reg_512_767_25_25,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(26),
      O => n_0_ram_reg_512_767_26_26,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(27),
      O => n_0_ram_reg_512_767_27_27,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(28),
      O => n_0_ram_reg_512_767_28_28,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(29),
      O => n_0_ram_reg_512_767_29_29,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(2),
      O => n_0_ram_reg_512_767_2_2,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(30),
      O => n_0_ram_reg_512_767_30_30,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(31),
      O => n_0_ram_reg_512_767_31_31,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(3),
      O => n_0_ram_reg_512_767_3_3,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(4),
      O => n_0_ram_reg_512_767_4_4,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(5),
      O => n_0_ram_reg_512_767_5_5,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(6),
      O => n_0_ram_reg_512_767_6_6,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(7),
      O => n_0_ram_reg_512_767_7_7,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(8),
      O => n_0_ram_reg_512_767_8_8,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_512_767_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(9),
      O => n_0_ram_reg_512_767_9_9,
      WCLK => clk,
      WE => n_0_ram_reg_512_767_0_0_i_1
    );
ram_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(0),
      O => n_0_ram_reg_768_1023_0_0,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => we_reg,
      I1 => a_reg(8),
      I2 => a_reg(9),
      O => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(10),
      O => n_0_ram_reg_768_1023_10_10,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(11),
      O => n_0_ram_reg_768_1023_11_11,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(12),
      O => n_0_ram_reg_768_1023_12_12,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(13),
      O => n_0_ram_reg_768_1023_13_13,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(14),
      O => n_0_ram_reg_768_1023_14_14,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(15),
      O => n_0_ram_reg_768_1023_15_15,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(16),
      O => n_0_ram_reg_768_1023_16_16,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(17),
      O => n_0_ram_reg_768_1023_17_17,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(18),
      O => n_0_ram_reg_768_1023_18_18,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(19),
      O => n_0_ram_reg_768_1023_19_19,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(1),
      O => n_0_ram_reg_768_1023_1_1,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(20),
      O => n_0_ram_reg_768_1023_20_20,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(21),
      O => n_0_ram_reg_768_1023_21_21,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(22),
      O => n_0_ram_reg_768_1023_22_22,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(23),
      O => n_0_ram_reg_768_1023_23_23,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(24),
      O => n_0_ram_reg_768_1023_24_24,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(25),
      O => n_0_ram_reg_768_1023_25_25,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(26),
      O => n_0_ram_reg_768_1023_26_26,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(27),
      O => n_0_ram_reg_768_1023_27_27,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(28),
      O => n_0_ram_reg_768_1023_28_28,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(29),
      O => n_0_ram_reg_768_1023_29_29,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(2),
      O => n_0_ram_reg_768_1023_2_2,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(30),
      O => n_0_ram_reg_768_1023_30_30,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(31),
      O => n_0_ram_reg_768_1023_31_31,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(3),
      O => n_0_ram_reg_768_1023_3_3,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(4),
      O => n_0_ram_reg_768_1023_4_4,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(5),
      O => n_0_ram_reg_768_1023_5_5,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(6),
      O => n_0_ram_reg_768_1023_6_6,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(7),
      O => n_0_ram_reg_768_1023_7_7,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(8),
      O => n_0_ram_reg_768_1023_8_8,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
ram_reg_768_1023_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      A(7 downto 0) => a_reg(7 downto 0),
      D => d_reg(9),
      O => n_0_ram_reg_768_1023_9_9,
      WCLK => clk,
      WE => n_0_ram_reg_768_1023_0_0_i_1
    );
we_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => clk,
      CE => \<const1>\,
      D => we,
      Q => we_reg,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity dist_mem_gen_0dist_mem_gen_v8_0_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end dist_mem_gen_0dist_mem_gen_v8_0_synth;

architecture STRUCTURE of dist_mem_gen_0dist_mem_gen_v8_0_synth is
begin
\gen_sp_ram.spram_inst\: entity work.\dist_mem_gen_0spram__parameterized0\
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      qspo(31 downto 0) => qspo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is "dist_mem_gen_v8_0";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is "artix7";
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1024;
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is "dist_mem_gen_0.mif";
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is "./";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 32;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ : entity is 1;
end \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\;

architecture STRUCTURE of \dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  spo(31) <= \<const0>\;
  spo(30) <= \<const0>\;
  spo(29) <= \<const0>\;
  spo(28) <= \<const0>\;
  spo(27) <= \<const0>\;
  spo(26) <= \<const0>\;
  spo(25) <= \<const0>\;
  spo(24) <= \<const0>\;
  spo(23) <= \<const0>\;
  spo(22) <= \<const0>\;
  spo(21) <= \<const0>\;
  spo(20) <= \<const0>\;
  spo(19) <= \<const0>\;
  spo(18) <= \<const0>\;
  spo(17) <= \<const0>\;
  spo(16) <= \<const0>\;
  spo(15) <= \<const0>\;
  spo(14) <= \<const0>\;
  spo(13) <= \<const0>\;
  spo(12) <= \<const0>\;
  spo(11) <= \<const0>\;
  spo(10) <= \<const0>\;
  spo(9) <= \<const0>\;
  spo(8) <= \<const0>\;
  spo(7) <= \<const0>\;
  spo(6) <= \<const0>\;
  spo(5) <= \<const0>\;
  spo(4) <= \<const0>\;
  spo(3) <= \<const0>\;
  spo(2) <= \<const0>\;
  spo(1) <= \<const0>\;
  spo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.dist_mem_gen_0dist_mem_gen_v8_0_synth
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      qspo(31 downto 0) => qspo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity dist_mem_gen_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dist_mem_gen_0 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dist_mem_gen_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dist_mem_gen_0 : entity is "dist_mem_gen_v8_0,Vivado 2013.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dist_mem_gen_0 : entity is "dist_mem_gen_0,dist_mem_gen_v8_0,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of dist_mem_gen_0 : entity is "dist_mem_gen_0,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=10,C_DEFAULT_DATA=0,C_DEPTH=1024,C_HAS_CLK=1,C_HAS_D=1,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=1,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=0,C_HAS_WE=1,C_MEM_INIT_FILE=dist_mem_gen_0.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=1,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=1,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}";
end dist_mem_gen_0;

architecture STRUCTURE of dist_mem_gen_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is true;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 10;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1024;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 1;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 0;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "dist_mem_gen_0.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 1;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
U0: entity work.\dist_mem_gen_0dist_mem_gen_v8_0__parameterized0\
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(9) => \<const0>\,
      dpra(8) => \<const0>\,
      dpra(7) => \<const0>\,
      dpra(6) => \<const0>\,
      dpra(5) => \<const0>\,
      dpra(4) => \<const0>\,
      dpra(3) => \<const0>\,
      dpra(2) => \<const0>\,
      dpra(1) => \<const0>\,
      dpra(0) => \<const0>\,
      i_ce => \<const1>\,
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => \<const1>\,
      qdpo_clk => \<const0>\,
      qdpo_rst => \<const0>\,
      qdpo_srst => \<const0>\,
      qspo(31 downto 0) => qspo(31 downto 0),
      qspo_ce => \<const1>\,
      qspo_rst => \<const0>\,
      qspo_srst => \<const0>\,
      spo(31 downto 0) => NLW_U0_spo_UNCONNECTED(31 downto 0),
      we => we
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
