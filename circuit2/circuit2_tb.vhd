library ieee;
use ieee.std_logic_1164.all;

entity circuit2_tb is
end circuit2_tb;

architecture arch_1 of circuit2_tb is

component circuit2 is

port(i_CLK: in std_logic;   -- CLK
			o_X : out  std_logic;  -- X Output
			 o_Y : out std_logic;  -- Y Output
			 o_Z : out std_logic); -- Z Output
end component;

constant c_CLKP : time := 10 ns;  -- clock period

signal w_CLK : std_logic := '1';
signal w_X :  std_logic;
signal w_Y :  std_logic;
signal w_Z :  std_logic;

begin

u_0 : circuit2 port map (i_CLK => w_CLK,
															 o_X => w_X,
															 o_Y => w_Y,
															 o_Z => w_Z);
						
w_CLK <= not w_CLK after c_CLKP / 2;

process 
  begin 
		wait for 30 ns;
		wait for 30 ns;
	
	end process;
end arch_1;	