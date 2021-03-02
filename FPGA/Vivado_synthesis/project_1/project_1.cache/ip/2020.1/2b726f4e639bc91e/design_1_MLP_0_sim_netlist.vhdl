-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun Feb 21 17:01:07 2021
-- Host        : MOONCELL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_MLP_0_sim_netlist.vhdl
-- Design      : design_1_MLP_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf is
  port (
    \j_0_reg_99_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ireg_reg[32]_0\ : in STD_LOGIC_VECTOR ( 32 downto 0 );
    ap_rst_n : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[16]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[17]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[18]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[19]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[20]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[21]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[22]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[23]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[24]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[25]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[26]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[27]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[28]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[29]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[30]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[31]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXIS_TREADY_INST_0 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \odata[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \odata[10]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \odata[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \odata[12]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \odata[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \odata[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \odata[15]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \odata[16]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \odata[17]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \odata[18]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \odata[19]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \odata[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \odata[20]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \odata[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \odata[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \odata[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \odata[24]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \odata[25]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \odata[26]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \odata[27]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \odata[28]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \odata[29]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \odata[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \odata[30]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \odata[31]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \odata[32]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \odata[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \odata[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \odata[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \odata[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \odata[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \odata[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \odata[9]_i_1\ : label is "soft_lutpair31";
begin
  Q(0) <= \^q\(0);
S_AXIS_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \ireg_reg[32]_0\(32),
      I1 => ap_rst_n,
      I2 => \^q\(0),
      O => S_AXIS_TREADY
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(10),
      Q => \ireg_reg_n_0_[10]\,
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(11),
      Q => \ireg_reg_n_0_[11]\,
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(12),
      Q => \ireg_reg_n_0_[12]\,
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(13),
      Q => \ireg_reg_n_0_[13]\,
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(14),
      Q => \ireg_reg_n_0_[14]\,
      R => SR(0)
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(15),
      Q => \ireg_reg_n_0_[15]\,
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(16),
      Q => \ireg_reg_n_0_[16]\,
      R => SR(0)
    );
\ireg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(17),
      Q => \ireg_reg_n_0_[17]\,
      R => SR(0)
    );
\ireg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(18),
      Q => \ireg_reg_n_0_[18]\,
      R => SR(0)
    );
\ireg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(19),
      Q => \ireg_reg_n_0_[19]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => SR(0)
    );
\ireg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(20),
      Q => \ireg_reg_n_0_[20]\,
      R => SR(0)
    );
\ireg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(21),
      Q => \ireg_reg_n_0_[21]\,
      R => SR(0)
    );
\ireg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(22),
      Q => \ireg_reg_n_0_[22]\,
      R => SR(0)
    );
\ireg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(23),
      Q => \ireg_reg_n_0_[23]\,
      R => SR(0)
    );
\ireg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(24),
      Q => \ireg_reg_n_0_[24]\,
      R => SR(0)
    );
\ireg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(25),
      Q => \ireg_reg_n_0_[25]\,
      R => SR(0)
    );
\ireg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(26),
      Q => \ireg_reg_n_0_[26]\,
      R => SR(0)
    );
\ireg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(27),
      Q => \ireg_reg_n_0_[27]\,
      R => SR(0)
    );
\ireg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(28),
      Q => \ireg_reg_n_0_[28]\,
      R => SR(0)
    );
\ireg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(29),
      Q => \ireg_reg_n_0_[29]\,
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => SR(0)
    );
\ireg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(30),
      Q => \ireg_reg_n_0_[30]\,
      R => SR(0)
    );
\ireg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(31),
      Q => \ireg_reg_n_0_[31]\,
      R => SR(0)
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(32),
      Q => \^q\(0),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(5),
      Q => \ireg_reg_n_0_[5]\,
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(6),
      Q => \ireg_reg_n_0_[6]\,
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(7),
      Q => \ireg_reg_n_0_[7]\,
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(8),
      Q => \ireg_reg_n_0_[8]\,
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(9),
      Q => \ireg_reg_n_0_[9]\,
      R => SR(0)
    );
\odata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \ireg_reg[32]_0\(0),
      I2 => \^q\(0),
      O => D(0)
    );
\odata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[10]\,
      I1 => \ireg_reg[32]_0\(10),
      I2 => \^q\(0),
      O => D(10)
    );
\odata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[11]\,
      I1 => \ireg_reg[32]_0\(11),
      I2 => \^q\(0),
      O => D(11)
    );
\odata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[12]\,
      I1 => \ireg_reg[32]_0\(12),
      I2 => \^q\(0),
      O => D(12)
    );
\odata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[13]\,
      I1 => \ireg_reg[32]_0\(13),
      I2 => \^q\(0),
      O => D(13)
    );
\odata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[14]\,
      I1 => \ireg_reg[32]_0\(14),
      I2 => \^q\(0),
      O => D(14)
    );
\odata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[15]\,
      I1 => \ireg_reg[32]_0\(15),
      I2 => \^q\(0),
      O => D(15)
    );
\odata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[16]\,
      I1 => \ireg_reg[32]_0\(16),
      I2 => \^q\(0),
      O => D(16)
    );
\odata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[17]\,
      I1 => \ireg_reg[32]_0\(17),
      I2 => \^q\(0),
      O => D(17)
    );
\odata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[18]\,
      I1 => \ireg_reg[32]_0\(18),
      I2 => \^q\(0),
      O => D(18)
    );
\odata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[19]\,
      I1 => \ireg_reg[32]_0\(19),
      I2 => \^q\(0),
      O => D(19)
    );
\odata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \ireg_reg[32]_0\(1),
      I2 => \^q\(0),
      O => D(1)
    );
\odata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[20]\,
      I1 => \ireg_reg[32]_0\(20),
      I2 => \^q\(0),
      O => D(20)
    );
\odata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[21]\,
      I1 => \ireg_reg[32]_0\(21),
      I2 => \^q\(0),
      O => D(21)
    );
\odata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[22]\,
      I1 => \ireg_reg[32]_0\(22),
      I2 => \^q\(0),
      O => D(22)
    );
\odata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[23]\,
      I1 => \ireg_reg[32]_0\(23),
      I2 => \^q\(0),
      O => D(23)
    );
\odata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[24]\,
      I1 => \ireg_reg[32]_0\(24),
      I2 => \^q\(0),
      O => D(24)
    );
\odata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[25]\,
      I1 => \ireg_reg[32]_0\(25),
      I2 => \^q\(0),
      O => D(25)
    );
\odata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[26]\,
      I1 => \ireg_reg[32]_0\(26),
      I2 => \^q\(0),
      O => D(26)
    );
\odata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[27]\,
      I1 => \ireg_reg[32]_0\(27),
      I2 => \^q\(0),
      O => D(27)
    );
\odata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[28]\,
      I1 => \ireg_reg[32]_0\(28),
      I2 => \^q\(0),
      O => D(28)
    );
\odata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[29]\,
      I1 => \ireg_reg[32]_0\(29),
      I2 => \^q\(0),
      O => D(29)
    );
\odata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \ireg_reg[32]_0\(2),
      I2 => \^q\(0),
      O => D(2)
    );
\odata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[30]\,
      I1 => \ireg_reg[32]_0\(30),
      I2 => \^q\(0),
      O => D(30)
    );
\odata[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[31]\,
      I1 => \ireg_reg[32]_0\(31),
      I2 => \^q\(0),
      O => D(31)
    );
\odata[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ireg_reg[32]_0\(32),
      I1 => \^q\(0),
      O => D(32)
    );
\odata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \ireg_reg[32]_0\(3),
      I2 => \^q\(0),
      O => D(3)
    );
\odata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \ireg_reg[32]_0\(4),
      I2 => \^q\(0),
      O => D(4)
    );
\odata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \ireg_reg[32]_0\(5),
      I2 => \^q\(0),
      O => D(5)
    );
\odata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[6]\,
      I1 => \ireg_reg[32]_0\(6),
      I2 => \^q\(0),
      O => D(6)
    );
\odata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \ireg_reg[32]_0\(7),
      I2 => \^q\(0),
      O => D(7)
    );
\odata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[8]\,
      I1 => \ireg_reg[32]_0\(8),
      I2 => \^q\(0),
      O => D(8)
    );
\odata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[9]\,
      I1 => \ireg_reg[32]_0\(9),
      I2 => \^q\(0),
      O => D(9)
    );
ram_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \ireg_reg[0]_0\(0),
      I1 => \ireg_reg[0]_0\(4),
      I2 => \ireg_reg[0]_0\(1),
      I3 => \ireg_reg[0]_0\(5),
      I4 => \ireg_reg[0]_0\(3),
      I5 => \ireg_reg[0]_0\(2),
      O => \j_0_reg_99_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \ireg_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ireg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    icmp_ln26_fu_143_p2 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    icmp_ln22_fu_121_p2 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_1 : entity is "ibuf";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_1 is
  signal \^ap_cs_fsm_reg[4]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ireg_reg[32]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[16]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[17]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[18]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[19]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[20]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[21]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[22]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[23]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[24]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[25]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[26]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[27]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[28]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[29]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[30]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[31]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ireg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ireg[32]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \j1_0_reg_110[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[10]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata[11]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[12]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[13]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \odata[14]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \odata[15]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \odata[16]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[17]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \odata[18]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[19]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[20]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[21]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[22]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[23]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata[24]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata[25]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \odata[26]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \odata[27]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \odata[28]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \odata[29]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \odata[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[30]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \odata[31]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \odata[32]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \odata[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[4]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[5]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata[6]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[7]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[8]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \odata[9]_i_1__0\ : label is "soft_lutpair8";
begin
  \ap_CS_fsm_reg[4]_0\(0) <= \^ap_cs_fsm_reg[4]_0\(0);
  \ireg_reg[32]_0\(0) <= \^ireg_reg[32]_0\(0);
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => Q(0),
      I1 => icmp_ln22_fu_121_p2,
      I2 => Q(3),
      I3 => \^ireg_reg[32]_0\(0),
      O => \ap_CS_fsm_reg[4]\(0)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => Q(1),
      I1 => icmp_ln26_fu_143_p2,
      I2 => Q(2),
      I3 => \^ireg_reg[32]_0\(0),
      O => \ap_CS_fsm_reg[4]\(1)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => \^ireg_reg[32]_0\(0),
      O => \ap_CS_fsm_reg[4]\(2)
    );
\ireg[32]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(2),
      I1 => ap_rst_n,
      I2 => \^ireg_reg[32]_0\(0),
      O => \^ap_cs_fsm_reg[4]_0\(0)
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(0),
      Q => \ireg_reg_n_0_[0]\,
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(10),
      Q => \ireg_reg_n_0_[10]\,
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(11),
      Q => \ireg_reg_n_0_[11]\,
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(12),
      Q => \ireg_reg_n_0_[12]\,
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(13),
      Q => \ireg_reg_n_0_[13]\,
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(14),
      Q => \ireg_reg_n_0_[14]\,
      R => SR(0)
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(15),
      Q => \ireg_reg_n_0_[15]\,
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(16),
      Q => \ireg_reg_n_0_[16]\,
      R => SR(0)
    );
\ireg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(17),
      Q => \ireg_reg_n_0_[17]\,
      R => SR(0)
    );
\ireg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(18),
      Q => \ireg_reg_n_0_[18]\,
      R => SR(0)
    );
\ireg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(19),
      Q => \ireg_reg_n_0_[19]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(1),
      Q => \ireg_reg_n_0_[1]\,
      R => SR(0)
    );
\ireg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(20),
      Q => \ireg_reg_n_0_[20]\,
      R => SR(0)
    );
\ireg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(21),
      Q => \ireg_reg_n_0_[21]\,
      R => SR(0)
    );
\ireg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(22),
      Q => \ireg_reg_n_0_[22]\,
      R => SR(0)
    );
\ireg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(23),
      Q => \ireg_reg_n_0_[23]\,
      R => SR(0)
    );
\ireg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(24),
      Q => \ireg_reg_n_0_[24]\,
      R => SR(0)
    );
\ireg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(25),
      Q => \ireg_reg_n_0_[25]\,
      R => SR(0)
    );
\ireg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(26),
      Q => \ireg_reg_n_0_[26]\,
      R => SR(0)
    );
\ireg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(27),
      Q => \ireg_reg_n_0_[27]\,
      R => SR(0)
    );
\ireg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(28),
      Q => \ireg_reg_n_0_[28]\,
      R => SR(0)
    );
\ireg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(29),
      Q => \ireg_reg_n_0_[29]\,
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(2),
      Q => \ireg_reg_n_0_[2]\,
      R => SR(0)
    );
\ireg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(30),
      Q => \ireg_reg_n_0_[30]\,
      R => SR(0)
    );
\ireg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(31),
      Q => \ireg_reg_n_0_[31]\,
      R => SR(0)
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \^ap_cs_fsm_reg[4]_0\(0),
      Q => \^ireg_reg[32]_0\(0),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(3),
      Q => \ireg_reg_n_0_[3]\,
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(4),
      Q => \ireg_reg_n_0_[4]\,
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(5),
      Q => \ireg_reg_n_0_[5]\,
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(6),
      Q => \ireg_reg_n_0_[6]\,
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(7),
      Q => \ireg_reg_n_0_[7]\,
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(8),
      Q => \ireg_reg_n_0_[8]\,
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \ireg_reg[32]_1\(0),
      D => \ireg_reg[31]_0\(9),
      Q => \ireg_reg_n_0_[9]\,
      R => SR(0)
    );
\j1_0_reg_110[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q(3),
      I1 => ap_rst_n,
      I2 => \^ireg_reg[32]_0\(0),
      O => E(0)
    );
\odata[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \ireg_reg[31]_0\(0),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(0)
    );
\odata[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[10]\,
      I1 => \ireg_reg[31]_0\(10),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(10)
    );
\odata[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[11]\,
      I1 => \ireg_reg[31]_0\(11),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(11)
    );
\odata[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[12]\,
      I1 => \ireg_reg[31]_0\(12),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(12)
    );
\odata[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[13]\,
      I1 => \ireg_reg[31]_0\(13),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(13)
    );
\odata[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[14]\,
      I1 => \ireg_reg[31]_0\(14),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(14)
    );
\odata[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[15]\,
      I1 => \ireg_reg[31]_0\(15),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(15)
    );
\odata[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[16]\,
      I1 => \ireg_reg[31]_0\(16),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(16)
    );
\odata[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[17]\,
      I1 => \ireg_reg[31]_0\(17),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(17)
    );
\odata[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[18]\,
      I1 => \ireg_reg[31]_0\(18),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(18)
    );
\odata[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[19]\,
      I1 => \ireg_reg[31]_0\(19),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(19)
    );
\odata[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[1]\,
      I1 => \ireg_reg[31]_0\(1),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(1)
    );
\odata[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[20]\,
      I1 => \ireg_reg[31]_0\(20),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(20)
    );
\odata[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[21]\,
      I1 => \ireg_reg[31]_0\(21),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(21)
    );
\odata[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[22]\,
      I1 => \ireg_reg[31]_0\(22),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(22)
    );
\odata[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[23]\,
      I1 => \ireg_reg[31]_0\(23),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(23)
    );
\odata[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[24]\,
      I1 => \ireg_reg[31]_0\(24),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(24)
    );
\odata[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[25]\,
      I1 => \ireg_reg[31]_0\(25),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(25)
    );
\odata[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[26]\,
      I1 => \ireg_reg[31]_0\(26),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(26)
    );
\odata[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[27]\,
      I1 => \ireg_reg[31]_0\(27),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(27)
    );
\odata[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[28]\,
      I1 => \ireg_reg[31]_0\(28),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(28)
    );
\odata[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[29]\,
      I1 => \ireg_reg[31]_0\(29),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(29)
    );
\odata[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[2]\,
      I1 => \ireg_reg[31]_0\(2),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(2)
    );
\odata[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[30]\,
      I1 => \ireg_reg[31]_0\(30),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(30)
    );
\odata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[31]\,
      I1 => \ireg_reg[31]_0\(31),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(31)
    );
\odata[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => \^ireg_reg[32]_0\(0),
      O => D(32)
    );
\odata[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[3]\,
      I1 => \ireg_reg[31]_0\(3),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(3)
    );
\odata[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[4]\,
      I1 => \ireg_reg[31]_0\(4),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(4)
    );
\odata[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[5]\,
      I1 => \ireg_reg[31]_0\(5),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(5)
    );
\odata[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[6]\,
      I1 => \ireg_reg[31]_0\(6),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(6)
    );
\odata[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[7]\,
      I1 => \ireg_reg[31]_0\(7),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(7)
    );
\odata[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[8]\,
      I1 => \ireg_reg[31]_0\(8),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(8)
    );
\odata[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \ireg_reg_n_0_[9]\,
      I1 => \ireg_reg[31]_0\(9),
      I2 => \^ireg_reg[32]_0\(0),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ : entity is "ibuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \odata[1]_i_1__1\ : label is "soft_lutpair39";
begin
  Q(0) <= \^q\(0);
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => '1',
      Q => \ireg_reg_n_0_[0]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[1]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ireg_reg_n_0_[0]\,
      I1 => \^q\(0),
      O => D(0)
    );
\odata[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \^q\(0),
      I1 => \odata_reg[1]\(0),
      I2 => \odata_reg[1]_0\(0),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    weights_0_ce0 : in STD_LOGIC;
    ram_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_1 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0_ram is
  signal weights_0_address0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_ram_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal NLW_ram_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d14";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ram_reg : label is "MLO";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of ram_reg : label is "DELAYED_WRITE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "weights_0_U/mlp_weights_0_ram_U/ram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg : label is "RAM_SP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 63;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 17;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 63;
  attribute ram_ext_slice_begin : integer;
  attribute ram_ext_slice_begin of ram_reg : label is 18;
  attribute ram_ext_slice_end : integer;
  attribute ram_ext_slice_end of ram_reg : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 960;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 17;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ram_reg_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of ram_reg_i_3 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of ram_reg_i_4 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of ram_reg_i_5 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of ram_reg_i_6 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of ram_reg_i_7 : label is "soft_lutpair41";
begin
ram_reg: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"0111",
      ADDRARDADDR(9 downto 4) => weights_0_address0(5 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 10) => B"1111",
      ADDRBWRADDR(9 downto 4) => weights_0_address0(5 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_ram_reg_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_ram_reg_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_ram_reg_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_ram_reg_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DINADIN(15 downto 0) => ram_reg_0(15 downto 0),
      DINBDIN(15 downto 14) => B"11",
      DINBDIN(13 downto 0) => ram_reg_0(31 downto 18),
      DINPADINP(1 downto 0) => ram_reg_0(17 downto 16),
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 0) => D(15 downto 0),
      DOUTBDOUT(15 downto 14) => NLW_ram_reg_DOUTBDOUT_UNCONNECTED(15 downto 14),
      DOUTBDOUT(13 downto 0) => D(31 downto 18),
      DOUTPADOUTP(1 downto 0) => D(17 downto 16),
      DOUTPBDOUTP(1 downto 0) => NLW_ram_reg_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => weights_0_ce0,
      ENBWREN => weights_0_ce0,
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1) => WEBWE(0),
      WEA(0) => WEBWE(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(5),
      I1 => ram_reg_1(5),
      I2 => ram_reg_2(0),
      O => weights_0_address0(5)
    );
ram_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(4),
      I1 => ram_reg_1(4),
      I2 => ram_reg_2(0),
      O => weights_0_address0(4)
    );
ram_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(3),
      I1 => ram_reg_1(3),
      I2 => ram_reg_2(0),
      O => weights_0_address0(3)
    );
ram_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(2),
      I1 => ram_reg_1(2),
      I2 => ram_reg_2(0),
      O => weights_0_address0(2)
    );
ram_reg_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(1),
      I1 => ram_reg_1(1),
      I2 => ram_reg_2(0),
      O => weights_0_address0(1)
    );
ram_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => Q(0),
      I1 => ram_reg_1(0),
      I2 => ram_reg_2(0),
      O => weights_0_address0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf is
  port (
    weights_0_ce0 : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ireg_reg[0]\ : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 32 downto 0 );
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf is
  signal \odata_reg_n_0_[32]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ireg[32]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \ireg[32]_i_2__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of ram_reg_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of ram_reg_i_8 : label is "soft_lutpair38";
begin
\ireg[32]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D00FFFF"
    )
        port map (
      I0 => \odata_reg_n_0_[32]\,
      I1 => Q(1),
      I2 => \ireg_reg[0]\,
      I3 => \ireg_reg[32]\(0),
      I4 => ap_rst_n,
      O => \odata_reg[32]_0\(0)
    );
\ireg[32]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => \odata_reg_n_0_[32]\,
      I1 => Q(1),
      I2 => \ireg_reg[0]\,
      I3 => \ireg_reg[32]\(0),
      O => E(0)
    );
\j_0_reg_99[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F700"
    )
        port map (
      I0 => \odata_reg_n_0_[32]\,
      I1 => Q(1),
      I2 => \ireg_reg[0]\,
      I3 => Q(0),
      O => SR(0)
    );
\odata[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => \odata_reg_n_0_[32]\,
      I1 => Q(1),
      I2 => \ireg_reg[0]\,
      O => p_0_in
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(0),
      Q => \odata_reg[31]_0\(0),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(10),
      Q => \odata_reg[31]_0\(10),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(11),
      Q => \odata_reg[31]_0\(11),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(12),
      Q => \odata_reg[31]_0\(12),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(13),
      Q => \odata_reg[31]_0\(13),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(14),
      Q => \odata_reg[31]_0\(14),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(15),
      Q => \odata_reg[31]_0\(15),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(16),
      Q => \odata_reg[31]_0\(16),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(17),
      Q => \odata_reg[31]_0\(17),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(18),
      Q => \odata_reg[31]_0\(18),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(19),
      Q => \odata_reg[31]_0\(19),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(1),
      Q => \odata_reg[31]_0\(1),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(20),
      Q => \odata_reg[31]_0\(20),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(21),
      Q => \odata_reg[31]_0\(21),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(22),
      Q => \odata_reg[31]_0\(22),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(23),
      Q => \odata_reg[31]_0\(23),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(24),
      Q => \odata_reg[31]_0\(24),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(25),
      Q => \odata_reg[31]_0\(25),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(26),
      Q => \odata_reg[31]_0\(26),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(27),
      Q => \odata_reg[31]_0\(27),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(28),
      Q => \odata_reg[31]_0\(28),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(29),
      Q => \odata_reg[31]_0\(29),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(2),
      Q => \odata_reg[31]_0\(2),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(30),
      Q => \odata_reg[31]_0\(30),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(31),
      Q => \odata_reg[31]_0\(31),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(32),
      Q => \odata_reg_n_0_[32]\,
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(3),
      Q => \odata_reg[31]_0\(3),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(4),
      Q => \odata_reg[31]_0\(4),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(5),
      Q => \odata_reg[31]_0\(5),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(6),
      Q => \odata_reg[31]_0\(6),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(7),
      Q => \odata_reg[31]_0\(7),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(8),
      Q => \odata_reg[31]_0\(8),
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_0_in,
      D => D(9),
      Q => \odata_reg[31]_0\(9),
      R => \odata_reg[0]_0\(0)
    );
ram_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => Q(2),
      I1 => \odata_reg_n_0_[32]\,
      I2 => \ireg_reg[0]\,
      I3 => Q(1),
      O => weights_0_ce0
    );
ram_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \odata_reg_n_0_[32]\,
      I1 => Q(1),
      I2 => \ireg_reg[0]\,
      O => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_2 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \odata_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TREADY_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 32 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_2 : entity is "obuf";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata[31]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ireg[32]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ireg[32]_i_2\ : label is "soft_lutpair19";
begin
  Q(32 downto 0) <= \^q\(32 downto 0);
  SR(0) <= \^sr\(0);
\ireg[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FF"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => \^q\(32),
      I2 => \ireg_reg[32]\(0),
      I3 => ap_rst_n,
      O => M_AXIS_TREADY_0(0)
    );
\ireg[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(32),
      I1 => M_AXIS_TREADY,
      I2 => \ireg_reg[32]\(0),
      O => \odata_reg[32]_0\(0)
    );
\odata[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\odata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(32),
      I1 => M_AXIS_TREADY,
      O => \odata[31]_i_2_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\odata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\odata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\odata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\odata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(21),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\odata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(22),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\odata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(23),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\odata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(24),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\odata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(25),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\odata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(26),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\odata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(27),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\odata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(28),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\odata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(29),
      Q => \^q\(29),
      R => \^sr\(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(30),
      Q => \^q\(30),
      R => \^sr\(0)
    );
\odata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(31),
      Q => \^q\(31),
      R => \^sr\(0)
    );
\odata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(32),
      Q => \^q\(32),
      R => \^sr\(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[31]_i_2_n_0\,
      D => D(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ : entity is "obuf";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\ is
  signal \odata[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \odata_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ireg[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ireg[1]_i_2\ : label is "soft_lutpair40";
begin
\ireg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FF"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => \odata_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\ireg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \odata_reg_n_0_[1]\,
      I1 => M_AXIS_TREADY,
      I2 => Q(0),
      O => E(0)
    );
\odata[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \odata_reg_n_0_[1]\,
      I1 => M_AXIS_TREADY,
      O => \odata[0]_i_1__1_n_0\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__1_n_0\,
      D => D(0),
      Q => M_AXIS_TLAST,
      R => \odata_reg[0]_0\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__1_n_0\,
      D => D(1),
      Q => \odata_reg_n_0_[1]\,
      R => \odata_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    weights_0_ce0 : in STD_LOGIC;
    ram_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0 is
begin
mlp_weights_0_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0_ram
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      WEBWE(0) => WEBWE(0),
      ap_clk => ap_clk,
      ram_reg_0(31 downto 0) => ram_reg(31 downto 0),
      ram_reg_1(5 downto 0) => ram_reg_0(5 downto 0),
      ram_reg_2(0) => ram_reg_1(0),
      weights_0_ce0 => weights_0_ce0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]\ : out STD_LOGIC_VECTOR ( 32 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TREADY : in STD_LOGIC;
    icmp_ln26_fu_143_p2 : in STD_LOGIC;
    icmp_ln22_fu_121_p2 : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both is
  signal ibuf_inst_n_0 : STD_LOGIC;
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_19 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_21 : STD_LOGIC;
  signal ibuf_inst_n_22 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_25 : STD_LOGIC;
  signal ibuf_inst_n_26 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_28 : STD_LOGIC;
  signal ibuf_inst_n_29 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_30 : STD_LOGIC;
  signal ibuf_inst_n_31 : STD_LOGIC;
  signal ibuf_inst_n_32 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_7 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal \^ireg_reg[32]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal obuf_inst_n_35 : STD_LOGIC;
begin
  \ireg_reg[32]\(0) <= \^ireg_reg[32]\(0);
ibuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf_1
     port map (
      D(32) => ibuf_inst_n_0,
      D(31) => ibuf_inst_n_1,
      D(30) => ibuf_inst_n_2,
      D(29) => ibuf_inst_n_3,
      D(28) => ibuf_inst_n_4,
      D(27) => ibuf_inst_n_5,
      D(26) => ibuf_inst_n_6,
      D(25) => ibuf_inst_n_7,
      D(24) => ibuf_inst_n_8,
      D(23) => ibuf_inst_n_9,
      D(22) => ibuf_inst_n_10,
      D(21) => ibuf_inst_n_11,
      D(20) => ibuf_inst_n_12,
      D(19) => ibuf_inst_n_13,
      D(18) => ibuf_inst_n_14,
      D(17) => ibuf_inst_n_15,
      D(16) => ibuf_inst_n_16,
      D(15) => ibuf_inst_n_17,
      D(14) => ibuf_inst_n_18,
      D(13) => ibuf_inst_n_19,
      D(12) => ibuf_inst_n_20,
      D(11) => ibuf_inst_n_21,
      D(10) => ibuf_inst_n_22,
      D(9) => ibuf_inst_n_23,
      D(8) => ibuf_inst_n_24,
      D(7) => ibuf_inst_n_25,
      D(6) => ibuf_inst_n_26,
      D(5) => ibuf_inst_n_27,
      D(4) => ibuf_inst_n_28,
      D(3) => ibuf_inst_n_29,
      D(2) => ibuf_inst_n_30,
      D(1) => ibuf_inst_n_31,
      D(0) => ibuf_inst_n_32,
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => obuf_inst_n_35,
      \ap_CS_fsm_reg[4]\(2 downto 0) => \ap_CS_fsm_reg[4]\(2 downto 0),
      \ap_CS_fsm_reg[4]_0\(0) => \ap_CS_fsm_reg[4]_0\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      icmp_ln22_fu_121_p2 => icmp_ln22_fu_121_p2,
      icmp_ln26_fu_143_p2 => icmp_ln26_fu_143_p2,
      \ireg_reg[31]_0\(31 downto 0) => D(31 downto 0),
      \ireg_reg[32]_0\(0) => \^ireg_reg[32]\(0),
      \ireg_reg[32]_1\(0) => ireg01_out
    );
obuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf_2
     port map (
      D(32) => ibuf_inst_n_0,
      D(31) => ibuf_inst_n_1,
      D(30) => ibuf_inst_n_2,
      D(29) => ibuf_inst_n_3,
      D(28) => ibuf_inst_n_4,
      D(27) => ibuf_inst_n_5,
      D(26) => ibuf_inst_n_6,
      D(25) => ibuf_inst_n_7,
      D(24) => ibuf_inst_n_8,
      D(23) => ibuf_inst_n_9,
      D(22) => ibuf_inst_n_10,
      D(21) => ibuf_inst_n_11,
      D(20) => ibuf_inst_n_12,
      D(19) => ibuf_inst_n_13,
      D(18) => ibuf_inst_n_14,
      D(17) => ibuf_inst_n_15,
      D(16) => ibuf_inst_n_16,
      D(15) => ibuf_inst_n_17,
      D(14) => ibuf_inst_n_18,
      D(13) => ibuf_inst_n_19,
      D(12) => ibuf_inst_n_20,
      D(11) => ibuf_inst_n_21,
      D(10) => ibuf_inst_n_22,
      D(9) => ibuf_inst_n_23,
      D(8) => ibuf_inst_n_24,
      D(7) => ibuf_inst_n_25,
      D(6) => ibuf_inst_n_26,
      D(5) => ibuf_inst_n_27,
      D(4) => ibuf_inst_n_28,
      D(3) => ibuf_inst_n_29,
      D(2) => ibuf_inst_n_30,
      D(1) => ibuf_inst_n_31,
      D(0) => ibuf_inst_n_32,
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TREADY_0(0) => obuf_inst_n_35,
      Q(32 downto 0) => \odata_reg[32]\(32 downto 0),
      SR(0) => SR(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[32]\(0) => \^ireg_reg[32]\(0),
      \odata_reg[32]_0\(0) => ireg01_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0 is
  port (
    weights_0_ce0 : out STD_LOGIC;
    icmp_ln22_fu_121_p2 : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_TREADY : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ireg_reg[0]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 32 downto 0 );
    ap_rst_n : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    \odata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0 : entity is "regslice_both";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0 is
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_19 : STD_LOGIC;
  signal ibuf_inst_n_2 : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_21 : STD_LOGIC;
  signal ibuf_inst_n_22 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_25 : STD_LOGIC;
  signal ibuf_inst_n_26 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_28 : STD_LOGIC;
  signal ibuf_inst_n_29 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_30 : STD_LOGIC;
  signal ibuf_inst_n_31 : STD_LOGIC;
  signal ibuf_inst_n_32 : STD_LOGIC;
  signal ibuf_inst_n_33 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_7 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal \^icmp_ln22_fu_121_p2\ : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_4 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  icmp_ln22_fu_121_p2 <= \^icmp_ln22_fu_121_p2\;
ibuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf
     port map (
      D(32) => ibuf_inst_n_1,
      D(31) => ibuf_inst_n_2,
      D(30) => ibuf_inst_n_3,
      D(29) => ibuf_inst_n_4,
      D(28) => ibuf_inst_n_5,
      D(27) => ibuf_inst_n_6,
      D(26) => ibuf_inst_n_7,
      D(25) => ibuf_inst_n_8,
      D(24) => ibuf_inst_n_9,
      D(23) => ibuf_inst_n_10,
      D(22) => ibuf_inst_n_11,
      D(21) => ibuf_inst_n_12,
      D(20) => ibuf_inst_n_13,
      D(19) => ibuf_inst_n_14,
      D(18) => ibuf_inst_n_15,
      D(17) => ibuf_inst_n_16,
      D(16) => ibuf_inst_n_17,
      D(15) => ibuf_inst_n_18,
      D(14) => ibuf_inst_n_19,
      D(13) => ibuf_inst_n_20,
      D(12) => ibuf_inst_n_21,
      D(11) => ibuf_inst_n_22,
      D(10) => ibuf_inst_n_23,
      D(9) => ibuf_inst_n_24,
      D(8) => ibuf_inst_n_25,
      D(7) => ibuf_inst_n_26,
      D(6) => ibuf_inst_n_27,
      D(5) => ibuf_inst_n_28,
      D(4) => ibuf_inst_n_29,
      D(3) => ibuf_inst_n_30,
      D(2) => ibuf_inst_n_31,
      D(1) => ibuf_inst_n_32,
      D(0) => ibuf_inst_n_33,
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_4,
      S_AXIS_TREADY => S_AXIS_TREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]_0\(5 downto 0) => \ireg_reg[0]\(5 downto 0),
      \ireg_reg[32]_0\(32 downto 0) => D(32 downto 0),
      \j_0_reg_99_reg[0]\ => \^icmp_ln22_fu_121_p2\
    );
obuf_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf
     port map (
      D(32) => ibuf_inst_n_1,
      D(31) => ibuf_inst_n_2,
      D(30) => ibuf_inst_n_3,
      D(29) => ibuf_inst_n_4,
      D(28) => ibuf_inst_n_5,
      D(27) => ibuf_inst_n_6,
      D(26) => ibuf_inst_n_7,
      D(25) => ibuf_inst_n_8,
      D(24) => ibuf_inst_n_9,
      D(23) => ibuf_inst_n_10,
      D(22) => ibuf_inst_n_11,
      D(21) => ibuf_inst_n_12,
      D(20) => ibuf_inst_n_13,
      D(19) => ibuf_inst_n_14,
      D(18) => ibuf_inst_n_15,
      D(17) => ibuf_inst_n_16,
      D(16) => ibuf_inst_n_17,
      D(15) => ibuf_inst_n_18,
      D(14) => ibuf_inst_n_19,
      D(13) => ibuf_inst_n_20,
      D(12) => ibuf_inst_n_21,
      D(11) => ibuf_inst_n_22,
      D(10) => ibuf_inst_n_23,
      D(9) => ibuf_inst_n_24,
      D(8) => ibuf_inst_n_25,
      D(7) => ibuf_inst_n_26,
      D(6) => ibuf_inst_n_27,
      D(5) => ibuf_inst_n_28,
      D(4) => ibuf_inst_n_29,
      D(3) => ibuf_inst_n_30,
      D(2) => ibuf_inst_n_31,
      D(1) => ibuf_inst_n_32,
      D(0) => ibuf_inst_n_33,
      E(0) => ireg01_out,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      WEBWE(0) => WEBWE(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[0]\ => \^icmp_ln22_fu_121_p2\,
      \ireg_reg[32]\(0) => p_0_in,
      \odata_reg[0]_0\(0) => \odata_reg[0]\(0),
      \odata_reg[31]_0\(31 downto 0) => \odata_reg[31]\(31 downto 0),
      \odata_reg[32]_0\(0) => obuf_inst_n_4,
      weights_0_ce0 => weights_0_ce0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_w1 is
  port (
    M_AXIS_TLAST : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_w1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_w1 is
  signal cdata : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ibuf_inst_n_1 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ibuf__parameterized0\
     port map (
      D(1) => cdata(1),
      D(0) => ibuf_inst_n_1,
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      \ireg_reg[1]_0\(0) => D(0),
      \odata_reg[1]\(0) => Q(0),
      \odata_reg[1]_0\(0) => \odata_reg[1]\(0)
    );
obuf_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_obuf__parameterized0\
     port map (
      D(1) => cdata(1),
      D(0) => ibuf_inst_n_1,
      E(0) => ireg01_out,
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_reg[0]_0\(0) => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TLAST : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TLAST : out STD_LOGIC
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "6'b001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "6'b010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "6'b100000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp is
  signal S_AXIS_TDATA_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal ap_NS_fsm11_out : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal \ibuf_inst/p_0_in\ : STD_LOGIC;
  signal icmp_ln22_fu_121_p2 : STD_LOGIC;
  signal icmp_ln26_fu_143_p2 : STD_LOGIC;
  signal j1_0_reg_110 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal j_0_reg_99 : STD_LOGIC;
  signal j_0_reg_99_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal j_1_fu_149_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal j_1_reg_171 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal j_fu_127_p2 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal regslice_both_M_AXIS_V_data_U_n_38 : STD_LOGIC;
  signal regslice_both_M_AXIS_V_data_U_n_39 : STD_LOGIC;
  signal regslice_both_S_AXIS_V_data_U_n_2 : STD_LOGIC;
  signal weights_0_ce0 : STD_LOGIC;
  signal weights_0_q0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \j_0_reg_99[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \j_0_reg_99[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \j_0_reg_99[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \j_0_reg_99[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \j_1_reg_171[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \j_1_reg_171[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \j_1_reg_171[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \j_1_reg_171[4]_i_1\ : label is "soft_lutpair45";
begin
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state4,
      I2 => icmp_ln26_fu_143_p2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => icmp_ln22_fu_121_p2,
      I2 => ap_CS_fsm_state2,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => j1_0_reg_110(4),
      I1 => j1_0_reg_110(2),
      I2 => j1_0_reg_110(3),
      I3 => j1_0_reg_110(5),
      I4 => j1_0_reg_110(0),
      I5 => j1_0_reg_110(1),
      O => icmp_ln26_fu_143_p2
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => '0',
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst_n_inv
    );
\j1_0_reg_110[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => icmp_ln22_fu_121_p2,
      O => ap_NS_fsm11_out
    );
\j1_0_reg_110_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_M_AXIS_V_data_U_n_38,
      D => j_1_reg_171(0),
      Q => j1_0_reg_110(0),
      R => ap_NS_fsm11_out
    );
\j1_0_reg_110_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_M_AXIS_V_data_U_n_38,
      D => j_1_reg_171(1),
      Q => j1_0_reg_110(1),
      R => ap_NS_fsm11_out
    );
\j1_0_reg_110_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_M_AXIS_V_data_U_n_38,
      D => j_1_reg_171(2),
      Q => j1_0_reg_110(2),
      R => ap_NS_fsm11_out
    );
\j1_0_reg_110_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_M_AXIS_V_data_U_n_38,
      D => j_1_reg_171(3),
      Q => j1_0_reg_110(3),
      R => ap_NS_fsm11_out
    );
\j1_0_reg_110_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_M_AXIS_V_data_U_n_38,
      D => j_1_reg_171(4),
      Q => j1_0_reg_110(4),
      R => ap_NS_fsm11_out
    );
\j1_0_reg_110_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_M_AXIS_V_data_U_n_38,
      D => j_1_reg_171(5),
      Q => j1_0_reg_110(5),
      R => ap_NS_fsm11_out
    );
\j_0_reg_99[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_0_reg_99_reg(0),
      O => j_fu_127_p2(0)
    );
\j_0_reg_99[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_0_reg_99_reg(0),
      I1 => j_0_reg_99_reg(1),
      O => j_fu_127_p2(1)
    );
\j_0_reg_99[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => j_0_reg_99_reg(0),
      I1 => j_0_reg_99_reg(1),
      I2 => j_0_reg_99_reg(2),
      O => j_fu_127_p2(2)
    );
\j_0_reg_99[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => j_0_reg_99_reg(1),
      I1 => j_0_reg_99_reg(0),
      I2 => j_0_reg_99_reg(2),
      I3 => j_0_reg_99_reg(3),
      O => j_fu_127_p2(3)
    );
\j_0_reg_99[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => j_0_reg_99_reg(2),
      I1 => j_0_reg_99_reg(0),
      I2 => j_0_reg_99_reg(1),
      I3 => j_0_reg_99_reg(3),
      I4 => j_0_reg_99_reg(4),
      O => j_fu_127_p2(4)
    );
\j_0_reg_99[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => j_0_reg_99_reg(3),
      I1 => j_0_reg_99_reg(1),
      I2 => j_0_reg_99_reg(0),
      I3 => j_0_reg_99_reg(2),
      I4 => j_0_reg_99_reg(4),
      I5 => j_0_reg_99_reg(5),
      O => j_fu_127_p2(5)
    );
\j_0_reg_99_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_S_AXIS_V_data_U_n_2,
      D => j_fu_127_p2(0),
      Q => j_0_reg_99_reg(0),
      R => j_0_reg_99
    );
\j_0_reg_99_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_S_AXIS_V_data_U_n_2,
      D => j_fu_127_p2(1),
      Q => j_0_reg_99_reg(1),
      R => j_0_reg_99
    );
\j_0_reg_99_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_S_AXIS_V_data_U_n_2,
      D => j_fu_127_p2(2),
      Q => j_0_reg_99_reg(2),
      R => j_0_reg_99
    );
\j_0_reg_99_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_S_AXIS_V_data_U_n_2,
      D => j_fu_127_p2(3),
      Q => j_0_reg_99_reg(3),
      R => j_0_reg_99
    );
\j_0_reg_99_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_S_AXIS_V_data_U_n_2,
      D => j_fu_127_p2(4),
      Q => j_0_reg_99_reg(4),
      R => j_0_reg_99
    );
\j_0_reg_99_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_S_AXIS_V_data_U_n_2,
      D => j_fu_127_p2(5),
      Q => j_0_reg_99_reg(5),
      R => j_0_reg_99
    );
\j_1_reg_171[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j1_0_reg_110(0),
      O => j_1_fu_149_p2(0)
    );
\j_1_reg_171[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j1_0_reg_110(0),
      I1 => j1_0_reg_110(1),
      O => j_1_fu_149_p2(1)
    );
\j_1_reg_171[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => j1_0_reg_110(0),
      I1 => j1_0_reg_110(1),
      I2 => j1_0_reg_110(2),
      O => j_1_fu_149_p2(2)
    );
\j_1_reg_171[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => j1_0_reg_110(1),
      I1 => j1_0_reg_110(0),
      I2 => j1_0_reg_110(2),
      I3 => j1_0_reg_110(3),
      O => j_1_fu_149_p2(3)
    );
\j_1_reg_171[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => j1_0_reg_110(2),
      I1 => j1_0_reg_110(0),
      I2 => j1_0_reg_110(1),
      I3 => j1_0_reg_110(3),
      I4 => j1_0_reg_110(4),
      O => j_1_fu_149_p2(4)
    );
\j_1_reg_171[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => j1_0_reg_110(3),
      I1 => j1_0_reg_110(1),
      I2 => j1_0_reg_110(0),
      I3 => j1_0_reg_110(2),
      I4 => j1_0_reg_110(4),
      I5 => j1_0_reg_110(5),
      O => j_1_fu_149_p2(5)
    );
\j_1_reg_171_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_1_fu_149_p2(0),
      Q => j_1_reg_171(0),
      R => '0'
    );
\j_1_reg_171_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_1_fu_149_p2(1),
      Q => j_1_reg_171(1),
      R => '0'
    );
\j_1_reg_171_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_1_fu_149_p2(2),
      Q => j_1_reg_171(2),
      R => '0'
    );
\j_1_reg_171_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_1_fu_149_p2(3),
      Q => j_1_reg_171(3),
      R => '0'
    );
\j_1_reg_171_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_1_fu_149_p2(4),
      Q => j_1_reg_171(4),
      R => '0'
    );
\j_1_reg_171_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => j_1_fu_149_p2(5),
      Q => j_1_reg_171(5),
      R => '0'
    );
regslice_both_M_AXIS_V_data_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both
     port map (
      D(31 downto 0) => weights_0_q0(31 downto 0),
      E(0) => regslice_both_M_AXIS_V_data_U_n_38,
      M_AXIS_TREADY => M_AXIS_TREADY,
      Q(3) => ap_CS_fsm_state6,
      Q(2) => ap_CS_fsm_state5,
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state3,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[4]\(2 downto 0) => ap_NS_fsm(5 downto 3),
      \ap_CS_fsm_reg[4]_0\(0) => regslice_both_M_AXIS_V_data_U_n_39,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      icmp_ln22_fu_121_p2 => icmp_ln22_fu_121_p2,
      icmp_ln26_fu_143_p2 => icmp_ln26_fu_143_p2,
      \ireg_reg[32]\(0) => \ibuf_inst/p_0_in\,
      \odata_reg[32]\(32) => M_AXIS_TVALID,
      \odata_reg[32]\(31 downto 0) => M_AXIS_TDATA(31 downto 0)
    );
regslice_both_S_AXIS_V_data_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_0
     port map (
      D(32) => S_AXIS_TVALID,
      D(31 downto 0) => S_AXIS_TDATA(31 downto 0),
      Q(2) => ap_CS_fsm_state4,
      Q(1) => ap_CS_fsm_state3,
      Q(0) => ap_CS_fsm_state2,
      SR(0) => j_0_reg_99,
      S_AXIS_TREADY => S_AXIS_TREADY,
      WEBWE(0) => regslice_both_S_AXIS_V_data_U_n_2,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      icmp_ln22_fu_121_p2 => icmp_ln22_fu_121_p2,
      \ireg_reg[0]\(5 downto 0) => j_0_reg_99_reg(5 downto 0),
      \odata_reg[0]\(0) => ap_rst_n_inv,
      \odata_reg[31]\(31 downto 0) => S_AXIS_TDATA_int(31 downto 0),
      weights_0_ce0 => weights_0_ce0
    );
regslice_both_w1_M_AXIS_V_last_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regslice_both_w1
     port map (
      D(0) => regslice_both_M_AXIS_V_data_U_n_39,
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      Q(0) => ap_CS_fsm_state5,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \odata_reg[1]\(0) => \ibuf_inst/p_0_in\
    );
weights_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp_weights_0
     port map (
      D(31 downto 0) => weights_0_q0(31 downto 0),
      Q(5 downto 0) => j1_0_reg_110(5 downto 0),
      WEBWE(0) => regslice_both_S_AXIS_V_data_U_n_2,
      ap_clk => ap_clk,
      ram_reg(31 downto 0) => S_AXIS_TDATA_int(31 downto 0),
      ram_reg_0(5 downto 0) => j_0_reg_99_reg(5 downto 0),
      ram_reg_1(0) => ap_CS_fsm_state4,
      weights_0_ce0 => weights_0_ce0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_MLP_0,mlp,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mlp,Vivado 2020.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "6'b000001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "6'b000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "6'b000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "6'b001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "6'b010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "6'b100000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of M_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of S_AXIS_TREADY : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_TVALID : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of M_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of M_AXIS_TLAST : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXIS_TDATA : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of S_AXIS_TLAST : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of S_AXIS_TLAST : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mlp
     port map (
      M_AXIS_TDATA(31 downto 0) => M_AXIS_TDATA(31 downto 0),
      M_AXIS_TLAST => M_AXIS_TLAST(0),
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(31 downto 0) => S_AXIS_TDATA(31 downto 0),
      S_AXIS_TLAST => S_AXIS_TLAST(0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n
    );
end STRUCTURE;
