library ieee;
use ieee.std_logic_1164.all;

entity circuit3_tb is
end circuit3_tb;

architecture arch_1 of circuit3_tb is
component circuit3 is

port( i_CLK : in std_logic;     -- CLK
           i_B : in std_logic;          -- Button Input
			  o_S0 : out std_logic;  -- S0 Output
			  o_S1 : out std_logic); -- S1 Output
end component;

constant c_CLKP : time := 20 ns;  -- clock period

signal w_CLK : std_logic := '1';
signal w_B :  std_logic;
signal w_S0 :  std_logic;
signal w_S1 :  std_logic;

begin

u_0 : circuit3 port map (i_CLK => w_CLK,
															 i_B => w_B,
															  o_S1 => w_S0,
															  o_S0 => w_S1);
											
w_CLK <= not w_CLK after c_CLKP / 5;

process 
  begin 
      w_B <= '0';
		wait for 30 ns;
		w_B <= '1';
		wait for 30 ns;
		
	end process;
end arch_1;	