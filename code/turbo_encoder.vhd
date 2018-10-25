
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity turbo_encoder is
port(
	  clock : in std_logic;
	  reset : in std_logic;
	  cin	: in std_logic;
	  d0  	: out std_logic;
	  d1    : out std_logic;
	  d2    : out std_logic
	);
end entity;

architecture arc of turbo_encoder is

component shiftreg
	port
	(
		clock		: in std_logic ;
		enable		: in std_logic ;
		sclr		: in std_logic ;
		shiftin		: in std_logic ;
		q		    : out std_logic_vector (2 downto 0)
	);
end component;

component encoder_module
port (
      clock : in std_logic;
	  reset : in std_logic;
	  cin	: in std_logic;
	  zout  : out std_logic;
	  qout  : out std_logic
	);
end component;

signal counter: unsigned (12 downto 0);
signal K: unsigned (12 downto 0) := "0000000000011";
signal x: std_logic;
signal z: std_logic;
signal x_p: std_logic;
signal z_p: std_logic;
signal c_t0: std_logic; -- upper input after switch
signal c_t1: std_logic; -- lower input after switch
signal f0: std_logic; -- upper feedback
signal f1: std_logic; -- lower feedback
signal cin_p: std_logic;
signal q_0: std_logic_vector (2 downto 0);
signal q_1: std_logic_vector (2 downto 0);
signal q_2: std_logic_vector (2 downto 0);
signal q_3: std_logic_vector (2 downto 0);

signal sftreg_en : std_logic;
signal wr_en : std_logic;
signal rd_en : std_logic;

signal d0_temp: std_logic;
signal d1_temp: std_logic;
signal d2_temp: std_logic;
signal sftreg_clock: std_logic;


type state_type is (norm, idle, term_0, term_1, term_2, term_3);
signal curr_state : state_type;
signal next_state : state_type;

begin

sftreg_en <= not wr_en; -- shift register should be enabled in K to K + 2 

-- sftreg_clock module
process (clock, curr_state)
begin
	case curr_state is
		when term_0 =>
			sftreg_clock <= not clock;
		when term_1 =>
			sftreg_clock <= not clock;
		when term_2 =>
			sftreg_clock <= not clock;
		when others =>
			sftreg_clock <= clock;
	end case;
end process;

---- counter module -----
process (clock, reset) 
begin	
	if (clock'event and clock = '1') then
	    if reset = '1' then 
	    	counter <= (others => '0');
		elsif counter = K + 6 then
	      	counter <= (others => '0');
	    else 
			counter <= counter + 1;
		end if;
	end if;	     	 
end process;

---- state register update --------
process (clock, reset)
begin
	if (clock'event and clock = '1') then
		if (reset = '1') then
			curr_state <= norm;
		else
			curr_state <= next_state;
		end if;
	end if;
end process;

---- state transfer function -----
process (curr_state, counter)
begin
	case curr_state is
		when norm => 
			if counter = K-1 then
				next_state <= idle;
			else 
				next_state <= norm;
			end if;
		when idle => 
			if counter = K+2 then
				next_state <= term_0;
			else
				next_state <= idle;
			end if;
		when term_0 =>
				next_state <= term_1;
		when term_1 =>
				next_state <= term_2;
		when term_2 =>
				next_state <= term_3;
		when term_3 =>
				next_state <= norm;
	end case;
end process;

process (curr_state) --- FIFO control signal
begin
--- write and write control -----
	case curr_state is
		when idle =>
			wr_en <= '0';
		when norm => 
			rd_en <= '1';
		when others =>
			wr_en <= '1';
			rd_en <= '0';
	end case;
end process;

-- switch control -----
process (curr_state, cin, cin_p, f0, f1, c_t0) 
begin
	cin_p <= cin;  -- testing
	case curr_state is
		when norm => 
			c_t0 <= cin;
			c_t1 <= cin_p;
		when others => 
			c_t0 <= f0;
			c_t1 <= f1;
	end case;
	x   <= c_t0;
	x_p <= f1;
end process;

-- output control ----
process (curr_state, x, z, z_p, q_0, q_1, q_2, q_3) 
begin
	case curr_state is
		when term_0 =>
    			d0 <= q_0(0);
    			d1 <= q_1(0);
    			d2 <= q_0(1);
    	when term_1 =>
    			d0 <= q_1(1);
    			d1 <= q_0(2);
    			d2 <= q_1(2);
    	when term_2 =>
    			d0 <= q_3(0);
    			d1 <= q_2(0);
    			d2 <= q_3(1);
    	when term_3 =>
    			d0 <= q_2(1);
    			d1 <= q_3(2);
    			d2 <= q_2(2);
    	when norm =>
				d0 <= x;
	        	d1 <= z;
	        	d2 <= z_p;
	    when idle =>
	    		d0 <= '0';
	    		d1 <= '0';
	    		d2 <= '0';
	end case;    			    			
end process;

--process (clock)
--begin
--	if (clock'event and clock = '1') then
--		d0 <= d0_temp;
--		d1 <= d1_temp;
--		d2 <= d2_temp;
--	end if;
--end process;

encoder_module0: encoder_module port map (
	  clock => clock,
	  reset => reset,
	  cin	=> c_t0,
	  zout  => z,
	  qout  => f0			
	);

encoder_module1: encoder_module port map (
	  clock => clock,
	  reset => reset,
	  cin	=> c_t1,
	  zout  => z_p,
	  qout  => f1			
	);

sft0 : shiftreg port map(
						  clock   => sftreg_clock,
						  enable  => sftreg_en,
						  sclr    => reset,
						  shiftin => x,
						  q       => q_0
						);

sft1 : shiftreg port map(
						  clock   => sftreg_clock,
						  enable  => sftreg_en,
						  sclr    => reset,
						  shiftin => z,
						  q       => q_1
						);
sft2 : shiftreg port map(
						  clock   => sftreg_clock,
						  enable  => sftreg_en,
						  sclr    => reset,
						  shiftin => z_p,
						  q       => q_2
						);

sft3 : shiftreg port map(
						  clock   => sftreg_clock,
						  enable  => sftreg_en,
						  sclr    => reset,
						  shiftin => x_p,
						  q       => q_3
						);

end arc;

