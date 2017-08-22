-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Fri Aug 18 10:25:40 2017
-- Host        : DESKTOP-QNENN53 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/ctc/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_sim_netlist.vhdl
-- Design      : ctc8_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ctc8_0_ctc8 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ctc8_0_ctc8 : entity is "ctc8";
end ctc8_0_ctc8;

architecture STRUCTURE of ctc8_0_ctc8 is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \count[2]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      PRE => \count[2]_i_2_n_0\,
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \count[1]_i_1_n_0\,
      PRE => \count[2]_i_2_n_0\,
      Q => \^q\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => '1',
      D => \count[2]_i_1_n_0\,
      PRE => \count[2]_i_2_n_0\,
      Q => \^q\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ctc8_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ctc8_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ctc8_0 : entity is "ctc8_0,ctc8,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ctc8_0 : entity is "ctc8_0,ctc8,{x_ipProduct=Vivado 2015.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ctc8,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ctc8_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ctc8_0 : entity is "ctc8,Vivado 2015.4";
end ctc8_0;

architecture STRUCTURE of ctc8_0 is
begin
inst: entity work.ctc8_0_ctc8
     port map (
      Q(2 downto 0) => count(2 downto 0),
      clk => clk,
      resetn => resetn
    );
end STRUCTURE;
