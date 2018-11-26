library ieee;
use ieee.std_logic_1164.all;
use std.textio.all; -- use text i/o features of standard library

entity turbo_encoder_tb is
end turbo_encoder_tb;

architecture tb1 of turbo_encoder_tb is
	component turbo_encoder -- component to be tested
		port(
	        clk, rst             : in std_logic;
	        cin_0                : in std_logic; -- input 0 from group 4
	        cin_1                : in std_logic; -- input 1 from group 4
 	        in_ready             : in std_logic; -- ready control signal from group 4
	        in_blocksize_select  : in std_logic; -- block size select signal from group 4, 0: 1056, 1:6144
	        out_fifo_0_rd_req    : in std_logic;
	        out_fifo_1_rd_req    : in std_logic;
	        out_fifo_2_rd_req    : in std_logic;
	        out_finish           : out std_logic;
	        out_blocksize_select : out std_logic;
	        out_fifo_0_data      : out std_logic_vector(7 downto 0);
	        out_fifo_1_data      : out std_logic_vector(7 downto 0);
	        out_fifo_2_data      : out std_logic_vector(7 downto 0);
	        out_fifo_0_empty     : out std_logic;
	        out_fifo_1_empty     : out std_logic;
	        out_fifo_2_empty     : out std_logic
		);
	end component;

	-- for all: decoder use entity work.decoder; -- configuration

	-- function to convert string of character to vector 
	function str2vec(str : string) return std_logic_vector is
			variable vtmp: std_logic_vector(str'range); 
	begin
		for i in str'range loop
		    if str(i) = '1' then
			    vtmp(i) := '1';
			else
			    vtmp(i) := '0';
			end if;
		end loop;
	    return vtmp;
	end str2vec;

	-- function to convert vector to string
	-- for use in assert statements
	function vec2str(vec : std_logic_vector) return string is
		variable stmp : string(vec'left+1 downto 1); 
	begin
		for i in vec'reverse_range loop 
			if vec(i) = '1' then
			    stmp(i+1) := '1';
			else
			    stmp(i+1) := '0';
			end if;
		end loop;
	    return stmp;
	end vec2str;

	signal clk                  : std_logic := '0';
	-- create internal signals to connect to test component 
	signal rst                  : std_logic := '0';
	signal cin_0                : std_logic; -- input 0 from group 4
	signal cin_1                : std_logic; -- input 1 from group 4
	signal in_ready             : std_logic; -- ready control signal from group 4
	signal in_blocksize_select  : std_logic; -- block size select signal from group 4, 0: 1056, 1:6144
	signal out_fifo_0_rd_req    : std_logic;
	signal out_fifo_1_rd_req    : std_logic;
	signal out_fifo_2_rd_req    : std_logic;
	signal out_finish           : std_logic;
	signal out_blocksize_select : std_logic;
	signal out_fifo_0_data      : std_logic_vector(7 downto 0);
	signal out_fifo_1_data      : std_logic_vector(7 downto 0);
	signal out_fifo_2_data      : std_logic_vector(7 downto 0);
	signal out_fifo_0_empty     : std_logic;
	signal out_fifo_1_empty     : std_logic;
	signal out_fifo_2_empty     : std_logic;

	constant clock_period : time := 20 ns;
begin

	-- instantiate decoder test component 
	u1: turbo_encoder port map(
		clk                  => clk,                                               
		rst                  => rst,        
		cin_0                => cin_0,               
		cin_1                => cin_1,             
		in_ready             => in_ready,            
		in_blocksize_select  => in_blocksize_select, 
		out_fifo_0_rd_req    => out_fifo_0_rd_req,   
		out_fifo_1_rd_req    => out_fifo_1_rd_req,   
		out_fifo_2_rd_req    => out_fifo_2_rd_req,   
		out_finish           => out_finish,          
		out_blocksize_select => out_blocksize_select,
		out_fifo_0_data      => out_fifo_0_data,     
		out_fifo_1_data      => out_fifo_1_data,     
		out_fifo_2_data      => out_fifo_2_data,     
		out_fifo_0_empty     => out_fifo_0_empty,    
		out_fifo_1_empty     => out_fifo_1_empty,    
		out_fifo_2_empty     => out_fifo_2_empty    
		);
	
	clk <= not clk after clock_period / 2; 
    
    ------ driving input -------
	process
		-- declare and open file (1987 style)
		file in_file        : text is in "input.txt";
		variable file_line  : line; -- text line buffer 
		variable c_in_str   : string(2 downto 1);
		variable c_in       : std_logic;
		variable c_in_1     : std_logic;
	begin
		rst <= '1';        -- code that executes only once
		wait for clock_period * 5 / 2;
		rst <= '0';
		in_ready <= '1';
		in_blocksize_select <= '1';

		wait for clock_period;
		in_ready <= '0';
		-- loop through lines in test file 
		while not endfile(in_file) loop
			-- read one complete line into file_line 
			readline(in_file, file_line);
			-- extract the first field from file_line 
			read(file_line, c_in_str);
			-- convert string to vector
			c_in   := str2vec(c_in_str)(1);
			c_in_1 := str2vec(c_in_str)(0);

			-- now get sel input and apply to decoder
			cin_0 <= c_in;
			cin_1 <= c_in_1;
			wait for clock_period; -- falling edge
		end loop;
		wait; -- suspend the simulation end process;
	end process;

    ------ output check ------ 
	process 
		file out_file_0       : text is in "output0.txt";
		file out_file_1       : text is in "output1.txt";
		file out_file_2       : text is in "output2.txt";
		variable file_0_line  : line;
		variable file_1_line  : line;
		variable file_2_line  : line; 
		variable out_0_str    : string(8 downto 1);
		variable out_1_str    : string(8 downto 1);
		variable out_2_str    : string(8 downto 1);
		variable out_0_expected : std_logic_vector(7 downto 0);
		variable out_1_expected : std_logic_vector(7 downto 0);
		variable out_2_expected : std_logic_vector(7 downto 0);

	begin
		
		wait for clock_period * 20;
		wait for clock_period / 2;
		while not endfile(out_file_0) loop
			-- send read request signal
			out_fifo_0_rd_req <= '1';
			out_fifo_1_rd_req <= '1';
			out_fifo_2_rd_req <= '1';
			wait for clock_period;
			out_fifo_0_rd_req <= '0';
			out_fifo_1_rd_req <= '0';
			out_fifo_2_rd_req <= '0';

			-- read one complete line into file_line 
			readline(out_file_0, file_0_line);
			-- extract the first field from file_line 
			read(file_0_line, out_0_str);
			-- convert string to vector
			out_0_expected := str2vec(out_0_str);

			readline(out_file_1, file_1_line);
			-- extract the first field from file_line 
			read(file_1_line, out_1_str);
			out_1_expected := str2vec(out_1_str);

			readline(out_file_2, file_2_line);
			-- extract the first field from file_line 
			read(file_2_line, out_2_str);
			out_2_expected := str2vec(out_2_str);

	        if out_fifo_0_data /= out_0_expected then
	       	 	assert false
	        		report "turbo_encoder failure" & cr &
	        			   "expected out_fifo_0_expected to be " & vec2str(out_0_expected) &
	        			   " but its value was " & vec2str(out_fifo_0_data)
	        severity error;
	        end if;
	        if out_fifo_1_data /= out_1_expected then
	       	 	assert false
	        		report "turbo_encoder failure" & cr &
	        			   "expected out_fifo_0_expected to be " & vec2str(out_1_expected) &
	        			   " but its value was " & vec2str(out_fifo_1_data)
	        severity error;
	        end if;
	        if out_fifo_2_data /= out_2_expected then
	       	 	assert false
	        		report "turbo_encoder failure" & cr &
	        			   "expected out_fifo_0_expected to be " & vec2str(out_2_expected) &
	        			   " but its value was " & vec2str(out_fifo_2_data)
	        severity error;
	        end if;

	        wait for clock_period * 7;
		end loop;

		wait; -- suspend the simulation end process;
	end process;  
end tb1;