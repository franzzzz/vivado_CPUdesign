-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Mon Jan 05 22:29:31 2015
-- Host        : running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/project_cpu/project_cpu.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_funcsim.vhdl
-- Design      : dist_mem_gen_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \dist_mem_gen_1rom__parameterized0\ is
  port (
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \dist_mem_gen_1rom__parameterized0\ : entity is "rom";
end \dist_mem_gen_1rom__parameterized0\;

architecture STRUCTURE of \dist_mem_gen_1rom__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal a_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal n_0_g0_b0 : STD_LOGIC;
  signal n_0_g0_b1 : STD_LOGIC;
  signal n_0_g0_b11 : STD_LOGIC;
  signal n_0_g0_b12 : STD_LOGIC;
  signal n_0_g0_b13 : STD_LOGIC;
  signal n_0_g0_b14 : STD_LOGIC;
  signal n_0_g0_b16 : STD_LOGIC;
  signal n_0_g0_b17 : STD_LOGIC;
  signal n_0_g0_b18 : STD_LOGIC;
  signal n_0_g0_b19 : STD_LOGIC;
  signal n_0_g0_b2 : STD_LOGIC;
  signal n_0_g0_b20 : STD_LOGIC;
  signal n_0_g0_b21 : STD_LOGIC;
  signal n_0_g0_b22 : STD_LOGIC;
  signal n_0_g0_b26 : STD_LOGIC;
  signal n_0_g0_b27 : STD_LOGIC;
  signal n_0_g0_b28 : STD_LOGIC;
  signal n_0_g0_b3 : STD_LOGIC;
  signal n_0_g0_b31 : STD_LOGIC;
  signal n_0_g0_b4 : STD_LOGIC;
  signal n_0_g0_b5 : STD_LOGIC;
  signal \n_0_qspo_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[12]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[13]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[14]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[16]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[17]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[18]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[19]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[20]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[21]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[22]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[26]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[27]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[28]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[31]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_qspo_int[5]_i_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b28 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b31 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair1";
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
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000555550A15"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b0
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001AAAAA6CA6"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b1
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008540"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b11
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002640"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b12
    );
g0_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000780"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b13
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b14
    );
g0_b16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000505015"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b16
    );
g0_b17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000041FD6"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b17
    );
g0_b18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010038"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b18
    );
g0_b19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000001C"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b19
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000F38"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b2
    );
g0_b20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b20
    );
g0_b21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000110155FC0"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b21
    );
g0_b22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000151404000"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b22
    );
g0_b26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000050554003F"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b26
    );
g0_b27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001AFFAA003F"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(1),
      I2 => a_reg(2),
      I3 => a_reg(3),
      I4 => a_reg(4),
      I5 => a_reg(5),
      O => n_0_g0_b27
    );
g0_b28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005100"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(2),
      I2 => a_reg(3),
      I3 => a_reg(4),
      I4 => a_reg(5),
      O => n_0_g0_b28
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
    port map (
      I0 => a_reg(0),
      I1 => a_reg(2),
      I2 => a_reg(3),
      I3 => a_reg(4),
      I4 => a_reg(5),
      O => n_0_g0_b3
    );
g0_b31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
    port map (
      I0 => a_reg(1),
      I1 => a_reg(2),
      I2 => a_reg(3),
      I3 => a_reg(4),
      I4 => a_reg(5),
      O => n_0_g0_b31
    );
g0_b4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => a_reg(2),
      I1 => a_reg(3),
      I2 => a_reg(4),
      I3 => a_reg(5),
      O => n_0_g0_b4
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000038"
    )
    port map (
      I0 => a_reg(1),
      I1 => a_reg(2),
      I2 => a_reg(3),
      I3 => a_reg(4),
      I4 => a_reg(5),
      O => n_0_g0_b5
    );
\qspo_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b0,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[0]_i_1\
    );
\qspo_int[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b11,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[11]_i_1\
    );
\qspo_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b12,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[12]_i_1\
    );
\qspo_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b13,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[13]_i_1\
    );
\qspo_int[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b14,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[14]_i_1\
    );
\qspo_int[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b16,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[16]_i_1\
    );
\qspo_int[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b17,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[17]_i_1\
    );
\qspo_int[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b18,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[18]_i_1\
    );
\qspo_int[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b19,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[19]_i_1\
    );
\qspo_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b1,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[1]_i_1\
    );
\qspo_int[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b20,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[20]_i_1\
    );
\qspo_int[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b21,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[21]_i_1\
    );
\qspo_int[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b22,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[22]_i_1\
    );
\qspo_int[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b26,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[26]_i_1\
    );
\qspo_int[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b27,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[27]_i_1\
    );
\qspo_int[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b28,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[28]_i_1\
    );
\qspo_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b2,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[2]_i_1\
    );
\qspo_int[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b31,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[31]_i_1\
    );
\qspo_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b3,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[3]_i_1\
    );
\qspo_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b4,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[4]_i_1\
    );
\qspo_int[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => a_reg(9),
      I1 => a_reg(8),
      I2 => n_0_g0_b5,
      I3 => a_reg(6),
      I4 => a_reg(7),
      O => \n_0_qspo_int[5]_i_1\
    );
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[0]_i_1\,
      Q => qspo(0),
      R => \<const0>\
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(10),
      R => \<const0>\
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[11]_i_1\,
      Q => qspo(11),
      R => \<const0>\
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[12]_i_1\,
      Q => qspo(12),
      R => \<const0>\
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[13]_i_1\,
      Q => qspo(13),
      R => \<const0>\
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[14]_i_1\,
      Q => qspo(14),
      R => \<const0>\
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(15),
      R => \<const0>\
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[16]_i_1\,
      Q => qspo(16),
      R => \<const0>\
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[17]_i_1\,
      Q => qspo(17),
      R => \<const0>\
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[18]_i_1\,
      Q => qspo(18),
      R => \<const0>\
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[19]_i_1\,
      Q => qspo(19),
      R => \<const0>\
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[1]_i_1\,
      Q => qspo(1),
      R => \<const0>\
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[20]_i_1\,
      Q => qspo(20),
      R => \<const0>\
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[21]_i_1\,
      Q => qspo(21),
      R => \<const0>\
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[22]_i_1\,
      Q => qspo(22),
      R => \<const0>\
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(23),
      R => \<const0>\
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(24),
      R => \<const0>\
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(25),
      R => \<const0>\
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[26]_i_1\,
      Q => qspo(26),
      R => \<const0>\
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[27]_i_1\,
      Q => qspo(27),
      R => \<const0>\
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[28]_i_1\,
      Q => qspo(28),
      R => \<const0>\
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(29),
      R => \<const0>\
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[2]_i_1\,
      Q => qspo(2),
      R => \<const0>\
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(30),
      R => \<const0>\
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[31]_i_1\,
      Q => qspo(31),
      R => \<const0>\
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[3]_i_1\,
      Q => qspo(3),
      R => \<const0>\
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[4]_i_1\,
      Q => qspo(4),
      R => \<const0>\
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \n_0_qspo_int[5]_i_1\,
      Q => qspo(5),
      R => \<const0>\
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(6),
      R => \<const0>\
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(7),
      R => \<const0>\
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(8),
      R => \<const0>\
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => \<const1>\,
      D => \<const0>\,
      Q => qspo(9),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity dist_mem_gen_1dist_mem_gen_v8_0_synth is
  port (
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end dist_mem_gen_1dist_mem_gen_v8_0_synth;

architecture STRUCTURE of dist_mem_gen_1dist_mem_gen_v8_0_synth is
begin
\gen_rom.rom_inst\: entity work.\dist_mem_gen_1rom__parameterized0\
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      qspo(31 downto 0) => qspo(31 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ is
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
  attribute ORIG_REF_NAME of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is "dist_mem_gen_v8_0";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is "artix7";
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1024;
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is "dist_mem_gen_1.mif";
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is "./";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 32;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ : entity is 1;
end \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\;

architecture STRUCTURE of \dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\ is
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
\synth_options.dist_mem_inst\: entity work.dist_mem_gen_1dist_mem_gen_v8_0_synth
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      qspo(31 downto 0) => qspo(31 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity dist_mem_gen_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dist_mem_gen_1 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dist_mem_gen_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dist_mem_gen_1 : entity is "dist_mem_gen_v8_0,Vivado 2013.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dist_mem_gen_1 : entity is "dist_mem_gen_1,dist_mem_gen_v8_0,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of dist_mem_gen_1 : entity is "dist_mem_gen_1,dist_mem_gen_v8_0,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=dist_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,C_FAMILY=artix7,C_ADDR_WIDTH=10,C_DEFAULT_DATA=0,C_DEPTH=1024,C_HAS_CLK=1,C_HAS_D=0,C_HAS_DPO=0,C_HAS_DPRA=0,C_HAS_I_CE=0,C_HAS_QDPO=0,C_HAS_QDPO_CE=0,C_HAS_QDPO_CLK=0,C_HAS_QDPO_RST=0,C_HAS_QDPO_SRST=0,C_HAS_QSPO=1,C_HAS_QSPO_CE=0,C_HAS_QSPO_RST=0,C_HAS_QSPO_SRST=0,C_HAS_SPO=0,C_HAS_WE=0,C_MEM_INIT_FILE=dist_mem_gen_1.mif,C_ELABORATION_DIR=./,C_MEM_TYPE=0,C_PIPELINE_STAGES=0,C_QCE_JOINED=0,C_QUALIFY_WE=0,C_READ_MIF=1,C_REG_A_D_INPUTS=1,C_REG_DPRA_INPUT=0,C_SYNC_ENABLE=1,C_WIDTH=32,C_PARSER_TYPE=1}";
end dist_mem_gen_1;

architecture STRUCTURE of dist_mem_gen_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_spo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
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
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
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
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 1;
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
  attribute c_mem_init_file of U0 : label is "dist_mem_gen_1.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
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
U0: entity work.\dist_mem_gen_1dist_mem_gen_v8_0__parameterized0\
    port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31) => \<const0>\,
      d(30) => \<const0>\,
      d(29) => \<const0>\,
      d(28) => \<const0>\,
      d(27) => \<const0>\,
      d(26) => \<const0>\,
      d(25) => \<const0>\,
      d(24) => \<const0>\,
      d(23) => \<const0>\,
      d(22) => \<const0>\,
      d(21) => \<const0>\,
      d(20) => \<const0>\,
      d(19) => \<const0>\,
      d(18) => \<const0>\,
      d(17) => \<const0>\,
      d(16) => \<const0>\,
      d(15) => \<const0>\,
      d(14) => \<const0>\,
      d(13) => \<const0>\,
      d(12) => \<const0>\,
      d(11) => \<const0>\,
      d(10) => \<const0>\,
      d(9) => \<const0>\,
      d(8) => \<const0>\,
      d(7) => \<const0>\,
      d(6) => \<const0>\,
      d(5) => \<const0>\,
      d(4) => \<const0>\,
      d(3) => \<const0>\,
      d(2) => \<const0>\,
      d(1) => \<const0>\,
      d(0) => \<const0>\,
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
      we => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
