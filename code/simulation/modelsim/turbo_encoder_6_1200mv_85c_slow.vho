-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/25/2018 11:54:55"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	turbo_encoder IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	cin : IN std_logic;
	d0 : BUFFER std_logic;
	d1 : BUFFER std_logic;
	d2 : BUFFER std_logic
	);
END turbo_encoder;

-- Design Ports Information
-- d0	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF turbo_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d0~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \counter[0]~13_combout\ : std_logic;
SIGNAL \counter[3]~21\ : std_logic;
SIGNAL \counter[4]~22_combout\ : std_logic;
SIGNAL \counter[4]~23\ : std_logic;
SIGNAL \counter[5]~24_combout\ : std_logic;
SIGNAL \counter[5]~25\ : std_logic;
SIGNAL \counter[6]~26_combout\ : std_logic;
SIGNAL \counter[6]~27\ : std_logic;
SIGNAL \counter[7]~28_combout\ : std_logic;
SIGNAL \counter[7]~29\ : std_logic;
SIGNAL \counter[8]~30_combout\ : std_logic;
SIGNAL \counter[8]~31\ : std_logic;
SIGNAL \counter[9]~32_combout\ : std_logic;
SIGNAL \counter[9]~33\ : std_logic;
SIGNAL \counter[10]~34_combout\ : std_logic;
SIGNAL \counter[10]~35\ : std_logic;
SIGNAL \counter[11]~36_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \counter[11]~37\ : std_logic;
SIGNAL \counter[12]~38_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \counter[12]~19_combout\ : std_logic;
SIGNAL \counter[0]~14\ : std_logic;
SIGNAL \counter[1]~15_combout\ : std_logic;
SIGNAL \counter[1]~16\ : std_logic;
SIGNAL \counter[2]~17_combout\ : std_logic;
SIGNAL \counter[2]~18\ : std_logic;
SIGNAL \counter[3]~20_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \curr_state~8_combout\ : std_logic;
SIGNAL \curr_state.term_0~q\ : std_logic;
SIGNAL \curr_state~11_combout\ : std_logic;
SIGNAL \curr_state.term_1~q\ : std_logic;
SIGNAL \curr_state~10_combout\ : std_logic;
SIGNAL \curr_state.term_2~q\ : std_logic;
SIGNAL \curr_state~12_combout\ : std_logic;
SIGNAL \curr_state.term_3~q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \curr_state~9_combout\ : std_logic;
SIGNAL \curr_state.norm~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \curr_state.idle~q\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[0]~1_combout\ : std_logic;
SIGNAL \encoder_module0|sft_in~combout\ : std_logic;
SIGNAL \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[1]~0_combout\ : std_logic;
SIGNAL \x~0_combout\ : std_logic;
SIGNAL \sft0|LPM_SHIFTREG_component|dffs[2]~1_combout\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \sft0|LPM_SHIFTREG_component|dffs[1]~2_combout\ : std_logic;
SIGNAL \sft0|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \sft3|LPM_SHIFTREG_component|dffs[2]~1_combout\ : std_logic;
SIGNAL \sft3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \sft3|LPM_SHIFTREG_component|dffs[1]~2_combout\ : std_logic;
SIGNAL \sft3|LPM_SHIFTREG_component|dffs[0]~0_combout\ : std_logic;
SIGNAL \sft1|LPM_SHIFTREG_component|dffs[2]~2_combout\ : std_logic;
SIGNAL \sft1|LPM_SHIFTREG_component|dffs[1]~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \encoder_module0|zout~0_combout\ : std_logic;
SIGNAL \sft1|LPM_SHIFTREG_component|dffs[0]~1_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \sft1|LPM_SHIFTREG_component|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL counter : std_logic_vector(12 DOWNTO 0);
SIGNAL \sft0|LPM_SHIFTREG_component|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sft3|LPM_SHIFTREG_component|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_wr_en~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_cin <= cin;
d0 <= ww_d0;
d1 <= ww_d1;
d2 <= ww_d2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_wr_en~combout\ <= NOT \wr_en~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N9
\d0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector5~4_combout\,
	devoe => ww_devoe,
	o => \d0~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector6~2_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\d2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector7~2_combout\,
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y10_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X3_Y9_N6
\counter[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~13_combout\ = counter(0) $ (VCC)
-- \counter[0]~14\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~13_combout\,
	cout => \counter[0]~14\);

-- Location: LCCOMB_X3_Y9_N12
\counter[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~20_combout\ = (counter(3) & (!\counter[2]~18\)) # (!counter(3) & ((\counter[2]~18\) # (GND)))
-- \counter[3]~21\ = CARRY((!\counter[2]~18\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~18\,
	combout => \counter[3]~20_combout\,
	cout => \counter[3]~21\);

-- Location: LCCOMB_X3_Y9_N14
\counter[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~22_combout\ = (counter(4) & (\counter[3]~21\ $ (GND))) # (!counter(4) & (!\counter[3]~21\ & VCC))
-- \counter[4]~23\ = CARRY((counter(4) & !\counter[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~21\,
	combout => \counter[4]~22_combout\,
	cout => \counter[4]~23\);

-- Location: FF_X3_Y9_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[4]~22_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X3_Y9_N16
\counter[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~24_combout\ = (counter(5) & (!\counter[4]~23\)) # (!counter(5) & ((\counter[4]~23\) # (GND)))
-- \counter[5]~25\ = CARRY((!\counter[4]~23\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~23\,
	combout => \counter[5]~24_combout\,
	cout => \counter[5]~25\);

-- Location: FF_X3_Y9_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[5]~24_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X3_Y9_N18
\counter[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~26_combout\ = (counter(6) & (\counter[5]~25\ $ (GND))) # (!counter(6) & (!\counter[5]~25\ & VCC))
-- \counter[6]~27\ = CARRY((counter(6) & !\counter[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~25\,
	combout => \counter[6]~26_combout\,
	cout => \counter[6]~27\);

-- Location: FF_X3_Y9_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[6]~26_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X3_Y9_N20
\counter[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~28_combout\ = (counter(7) & (!\counter[6]~27\)) # (!counter(7) & ((\counter[6]~27\) # (GND)))
-- \counter[7]~29\ = CARRY((!\counter[6]~27\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~27\,
	combout => \counter[7]~28_combout\,
	cout => \counter[7]~29\);

-- Location: FF_X3_Y9_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[7]~28_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X3_Y9_N22
\counter[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~30_combout\ = (counter(8) & (\counter[7]~29\ $ (GND))) # (!counter(8) & (!\counter[7]~29\ & VCC))
-- \counter[8]~31\ = CARRY((counter(8) & !\counter[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~29\,
	combout => \counter[8]~30_combout\,
	cout => \counter[8]~31\);

-- Location: FF_X3_Y9_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[8]~30_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X3_Y9_N24
\counter[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~32_combout\ = (counter(9) & (!\counter[8]~31\)) # (!counter(9) & ((\counter[8]~31\) # (GND)))
-- \counter[9]~33\ = CARRY((!\counter[8]~31\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~31\,
	combout => \counter[9]~32_combout\,
	cout => \counter[9]~33\);

-- Location: FF_X3_Y9_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[9]~32_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X3_Y9_N26
\counter[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~34_combout\ = (counter(10) & (\counter[9]~33\ $ (GND))) # (!counter(10) & (!\counter[9]~33\ & VCC))
-- \counter[10]~35\ = CARRY((counter(10) & !\counter[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~33\,
	combout => \counter[10]~34_combout\,
	cout => \counter[10]~35\);

-- Location: FF_X3_Y9_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[10]~34_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X3_Y9_N28
\counter[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~36_combout\ = (counter(11) & (!\counter[10]~35\)) # (!counter(11) & ((\counter[10]~35\) # (GND)))
-- \counter[11]~37\ = CARRY((!\counter[10]~35\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~35\,
	combout => \counter[11]~36_combout\,
	cout => \counter[11]~37\);

-- Location: FF_X3_Y9_N29
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[11]~36_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X3_Y9_N2
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!counter(8) & (!counter(11) & (!counter(10) & !counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(11),
	datac => counter(10),
	datad => counter(9),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X3_Y9_N30
\counter[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~38_combout\ = counter(12) $ (!\counter[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	cin => \counter[11]~37\,
	combout => \counter[12]~38_combout\);

-- Location: FF_X3_Y9_N31
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[12]~38_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X3_Y9_N0
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!counter(7) & (!counter(5) & (!counter(4) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(5),
	datac => counter(4),
	datad => counter(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X2_Y9_N24
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!counter(1) & counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(1),
	datad => counter(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X2_Y9_N12
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal1~1_combout\ & (!counter(12) & (\Equal1~0_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => counter(12),
	datac => \Equal1~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X2_Y9_N6
\counter[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~19_combout\ = (\reset~input_o\) # ((counter(3) & (!counter(2) & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter(3),
	datac => counter(2),
	datad => \Equal2~1_combout\,
	combout => \counter[12]~19_combout\);

-- Location: FF_X3_Y9_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[0]~13_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X3_Y9_N8
\counter[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~15_combout\ = (counter(1) & (!\counter[0]~14\)) # (!counter(1) & ((\counter[0]~14\) # (GND)))
-- \counter[1]~16\ = CARRY((!\counter[0]~14\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~14\,
	combout => \counter[1]~15_combout\,
	cout => \counter[1]~16\);

-- Location: FF_X3_Y9_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[1]~15_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X3_Y9_N10
\counter[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~17_combout\ = (counter(2) & (\counter[1]~16\ $ (GND))) # (!counter(2) & (!\counter[1]~16\ & VCC))
-- \counter[2]~18\ = CARRY((counter(2) & !\counter[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~16\,
	combout => \counter[2]~17_combout\,
	cout => \counter[2]~18\);

-- Location: FF_X3_Y9_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[2]~17_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: FF_X3_Y9_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \counter[3]~20_combout\,
	sclr => \counter[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X2_Y9_N18
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!counter(3) & (counter(2) & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datac => counter(2),
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X2_Y9_N2
\curr_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \curr_state~8_combout\ = (!\reset~input_o\ & (\curr_state.idle~q\ & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \curr_state.idle~q\,
	datad => \Equal2~2_combout\,
	combout => \curr_state~8_combout\);

-- Location: FF_X2_Y9_N3
\curr_state.term_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \curr_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.term_0~q\);

-- Location: LCCOMB_X1_Y9_N22
\curr_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \curr_state~11_combout\ = (!\reset~input_o\ & \curr_state.term_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \curr_state.term_0~q\,
	combout => \curr_state~11_combout\);

-- Location: FF_X1_Y9_N23
\curr_state.term_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \curr_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.term_1~q\);

-- Location: LCCOMB_X1_Y9_N14
\curr_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \curr_state~10_combout\ = (!\reset~input_o\ & \curr_state.term_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \curr_state.term_1~q\,
	combout => \curr_state~10_combout\);

-- Location: FF_X1_Y9_N15
\curr_state.term_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \curr_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.term_2~q\);

-- Location: LCCOMB_X5_Y9_N10
\curr_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \curr_state~12_combout\ = (!\reset~input_o\ & \curr_state.term_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \curr_state.term_2~q\,
	combout => \curr_state~12_combout\);

-- Location: FF_X4_Y9_N27
\curr_state.term_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \curr_state~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.term_3~q\);

-- Location: LCCOMB_X3_Y9_N4
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!counter(0) & (counter(1) & (!counter(2) & !counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datac => counter(2),
	datad => counter(3),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X4_Y9_N0
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~0_combout\ & (!counter(12) & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => counter(12),
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X4_Y9_N26
\curr_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \curr_state~9_combout\ = (!\reset~input_o\ & (!\curr_state.term_3~q\ & ((\curr_state.norm~q\) # (\Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \curr_state.norm~q\,
	datac => \curr_state.term_3~q\,
	datad => \Equal1~3_combout\,
	combout => \curr_state~9_combout\);

-- Location: FF_X4_Y9_N25
\curr_state.norm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \curr_state~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.norm~q\);

-- Location: LCCOMB_X2_Y9_N0
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\curr_state.norm~q\ & (((\curr_state.idle~q\ & !\Equal2~2_combout\)))) # (!\curr_state.norm~q\ & ((\Equal1~3_combout\) # ((\curr_state.idle~q\ & !\Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.norm~q\,
	datab => \Equal1~3_combout\,
	datac => \curr_state.idle~q\,
	datad => \Equal2~2_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X2_Y9_N1
\curr_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.idle~q\);

-- Location: IOIBUF_X0_Y8_N22
\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X1_Y9_N18
WideNor0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\curr_state.term_2~q\) # ((\curr_state.term_1~q\) # (\curr_state.term_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \curr_state.term_2~q\,
	datac => \curr_state.term_1~q\,
	datad => \curr_state.term_0~q\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X1_Y16_N14
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = LCELL((\WideNor0~combout\ & ((!\clock~input_o\))) # (!\WideNor0~combout\ & (\clock~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datac => \clock~input_o\,
	datad => \clock~input_o\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G0
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y9_N20
\encoder_module0|sft0|LPM_SHIFTREG_component|dffs[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[0]~1_combout\ = (!\reset~input_o\ & \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1),
	combout => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[0]~1_combout\);

-- Location: FF_X4_Y9_N19
\encoder_module0|sft0|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X5_Y9_N8
\encoder_module0|sft_in\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder_module0|sft_in~combout\ = (!\curr_state.norm~q\ & (\cin~input_o\ $ (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1) $ (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datab => \curr_state.norm~q\,
	datac => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1),
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0),
	combout => \encoder_module0|sft_in~combout\);

-- Location: FF_X5_Y9_N29
\encoder_module0|sft0|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \encoder_module0|sft_in~combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X4_Y9_N22
\encoder_module0|sft0|LPM_SHIFTREG_component|dffs[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[1]~0_combout\ = (!\reset~input_o\ & \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2),
	combout => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[1]~0_combout\);

-- Location: FF_X4_Y9_N23
\encoder_module0|sft0|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X4_Y9_N14
\x~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~0_combout\ = (\curr_state.norm~q\ & ((\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1) $ (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0))))) # (!\curr_state.norm~q\ & (\cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.norm~q\,
	datab => \cin~input_o\,
	datac => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1),
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0),
	combout => \x~0_combout\);

-- Location: LCCOMB_X4_Y9_N30
\sft0|LPM_SHIFTREG_component|dffs[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft0|LPM_SHIFTREG_component|dffs[2]~1_combout\ = (\x~0_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x~0_combout\,
	datad => \reset~input_o\,
	combout => \sft0|LPM_SHIFTREG_component|dffs[2]~1_combout\);

-- Location: LCCOMB_X4_Y9_N12
wr_en : cycloneive_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = (\curr_state.norm~q\ & ((!\curr_state.idle~q\))) # (!\curr_state.norm~q\ & (\wr_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en~combout\,
	datab => \curr_state.norm~q\,
	datad => \curr_state.idle~q\,
	combout => \wr_en~combout\);

-- Location: FF_X4_Y9_N21
\sft0|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => \sft0|LPM_SHIFTREG_component|dffs[2]~1_combout\,
	sload => VCC,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft0|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X4_Y9_N10
\sft0|LPM_SHIFTREG_component|dffs[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft0|LPM_SHIFTREG_component|dffs[1]~2_combout\ = (!\reset~input_o\ & \sft0|LPM_SHIFTREG_component|dffs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \sft0|LPM_SHIFTREG_component|dffs\(2),
	combout => \sft0|LPM_SHIFTREG_component|dffs[1]~2_combout\);

-- Location: FF_X4_Y9_N11
\sft0|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft0|LPM_SHIFTREG_component|dffs[1]~2_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft0|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X4_Y9_N4
\sft0|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft0|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (!\reset~input_o\ & \sft0|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \sft0|LPM_SHIFTREG_component|dffs\(1),
	combout => \sft0|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: FF_X4_Y9_N5
\sft0|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft0|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft0|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X5_Y9_N22
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\curr_state.term_0~q\ & ((!\curr_state.term_2~q\) # (!\curr_state.norm~q\))) # (!\curr_state.term_0~q\ & (!\curr_state.norm~q\ & !\curr_state.term_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.term_0~q\,
	datac => \curr_state.norm~q\,
	datad => \curr_state.term_2~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X5_Y9_N4
\sft3|LPM_SHIFTREG_component|dffs[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft3|LPM_SHIFTREG_component|dffs[2]~1_combout\ = (!\reset~input_o\ & (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1) $ (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1),
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(0),
	combout => \sft3|LPM_SHIFTREG_component|dffs[2]~1_combout\);

-- Location: LCCOMB_X5_Y9_N12
\sft3|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \sft3|LPM_SHIFTREG_component|dffs[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sft3|LPM_SHIFTREG_component|dffs[2]~1_combout\,
	combout => \sft3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X5_Y9_N13
\sft3|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft3|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft3|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X5_Y9_N20
\sft3|LPM_SHIFTREG_component|dffs[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft3|LPM_SHIFTREG_component|dffs[1]~2_combout\ = (!\reset~input_o\ & \sft3|LPM_SHIFTREG_component|dffs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \sft3|LPM_SHIFTREG_component|dffs\(2),
	combout => \sft3|LPM_SHIFTREG_component|dffs[1]~2_combout\);

-- Location: FF_X5_Y9_N21
\sft3|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft3|LPM_SHIFTREG_component|dffs[1]~2_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft3|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X5_Y9_N6
\sft3|LPM_SHIFTREG_component|dffs[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft3|LPM_SHIFTREG_component|dffs[0]~0_combout\ = (!\reset~input_o\ & \sft3|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \sft3|LPM_SHIFTREG_component|dffs\(1),
	combout => \sft3|LPM_SHIFTREG_component|dffs[0]~0_combout\);

-- Location: FF_X5_Y9_N7
\sft3|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft3|LPM_SHIFTREG_component|dffs[0]~0_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft3|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X4_Y9_N8
\sft1|LPM_SHIFTREG_component|dffs[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft1|LPM_SHIFTREG_component|dffs[2]~2_combout\ = (!\reset~input_o\ & (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1) $ (\x~0_combout\ $ (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1),
	datab => \reset~input_o\,
	datac => \x~0_combout\,
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2),
	combout => \sft1|LPM_SHIFTREG_component|dffs[2]~2_combout\);

-- Location: FF_X4_Y9_N29
\sft1|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	asdata => \sft1|LPM_SHIFTREG_component|dffs[2]~2_combout\,
	sload => VCC,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft1|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X4_Y9_N16
\sft1|LPM_SHIFTREG_component|dffs[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft1|LPM_SHIFTREG_component|dffs[1]~0_combout\ = (!\reset~input_o\ & \sft1|LPM_SHIFTREG_component|dffs\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \sft1|LPM_SHIFTREG_component|dffs\(2),
	combout => \sft1|LPM_SHIFTREG_component|dffs[1]~0_combout\);

-- Location: FF_X4_Y9_N17
\sft1|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft1|LPM_SHIFTREG_component|dffs[1]~0_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft1|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X5_Y9_N16
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = \curr_state.norm~q\ $ (\curr_state.term_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curr_state.norm~q\,
	datad => \curr_state.term_2~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X5_Y9_N24
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~0_combout\ & (((\Selector5~1_combout\)))) # (!\Selector5~0_combout\ & ((\Selector5~1_combout\ & ((\sft1|LPM_SHIFTREG_component|dffs\(1)))) # (!\Selector5~1_combout\ & (\sft3|LPM_SHIFTREG_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sft3|LPM_SHIFTREG_component|dffs\(0),
	datab => \sft1|LPM_SHIFTREG_component|dffs\(1),
	datac => \Selector5~0_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X5_Y9_N2
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~0_combout\ & ((\Selector5~2_combout\ & ((\sft0|LPM_SHIFTREG_component|dffs\(0)))) # (!\Selector5~2_combout\ & (\cin~input_o\)))) # (!\Selector5~0_combout\ & (((\Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datab => \sft0|LPM_SHIFTREG_component|dffs\(0),
	datac => \Selector5~0_combout\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X1_Y9_N30
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (!\curr_state.idle~q\ & \Selector5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curr_state.idle~q\,
	datad => \Selector5~3_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X4_Y9_N6
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\curr_state.term_1~q\ & ((\sft0|LPM_SHIFTREG_component|dffs\(2)) # ((\curr_state.term_3~q\ & \sft3|LPM_SHIFTREG_component|dffs\(2))))) # (!\curr_state.term_1~q\ & (((\curr_state.term_3~q\ & 
-- \sft3|LPM_SHIFTREG_component|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.term_1~q\,
	datab => \sft0|LPM_SHIFTREG_component|dffs\(2),
	datac => \curr_state.term_3~q\,
	datad => \sft3|LPM_SHIFTREG_component|dffs\(2),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X4_Y9_N18
\encoder_module0|zout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encoder_module0|zout~0_combout\ = \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1) $ (\x~0_combout\ $ (\encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(1),
	datab => \x~0_combout\,
	datad => \encoder_module0|sft0|LPM_SHIFTREG_component|dffs\(2),
	combout => \encoder_module0|zout~0_combout\);

-- Location: LCCOMB_X4_Y9_N2
\sft1|LPM_SHIFTREG_component|dffs[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sft1|LPM_SHIFTREG_component|dffs[0]~1_combout\ = (!\reset~input_o\ & \sft1|LPM_SHIFTREG_component|dffs\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \sft1|LPM_SHIFTREG_component|dffs\(1),
	combout => \sft1|LPM_SHIFTREG_component|dffs[0]~1_combout\);

-- Location: FF_X4_Y9_N3
\sft1|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rtl~0clkctrl_outclk\,
	d => \sft1|LPM_SHIFTREG_component|dffs[0]~1_combout\,
	ena => \ALT_INV_wr_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sft1|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X5_Y9_N18
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\sft1|LPM_SHIFTREG_component|dffs\(0) & ((\curr_state.term_2~q\) # (\curr_state.term_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.term_2~q\,
	datac => \curr_state.term_0~q\,
	datad => \sft1|LPM_SHIFTREG_component|dffs\(0),
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X4_Y9_N24
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~0_combout\) # ((\Selector6~1_combout\) # ((\encoder_module0|zout~0_combout\ & !\curr_state.norm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \encoder_module0|zout~0_combout\,
	datac => \curr_state.norm~q\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X5_Y9_N30
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector5~0_combout\ & (((\encoder_module0|zout~0_combout\) # (\Selector5~1_combout\)))) # (!\Selector5~0_combout\ & (\sft3|LPM_SHIFTREG_component|dffs\(1) & ((!\Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \sft3|LPM_SHIFTREG_component|dffs\(1),
	datac => \encoder_module0|zout~0_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X4_Y9_N28
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\ & ((\sft0|LPM_SHIFTREG_component|dffs\(1)) # ((!\Selector5~1_combout\)))) # (!\Selector7~0_combout\ & (((\sft1|LPM_SHIFTREG_component|dffs\(2) & \Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \sft0|LPM_SHIFTREG_component|dffs\(1),
	datac => \sft1|LPM_SHIFTREG_component|dffs\(2),
	datad => \Selector5~1_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X1_Y9_N28
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (!\curr_state.idle~q\ & \Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curr_state.idle~q\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~2_combout\);

ww_d0 <= \d0~output_o\;

ww_d1 <= \d1~output_o\;

ww_d2 <= \d2~output_o\;
END structure;


