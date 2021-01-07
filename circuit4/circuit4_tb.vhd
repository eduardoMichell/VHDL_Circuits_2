library ieee;
use ieee.std_logic_1164.all;

entity circuit4_tb is
end circuit4_tb;

architecture arch_1 of circuit4_tb is

component circuit4 is

port(i_CLK : in std_logic;   -- CLK
           i_gent : in std_logic;  -- INPUT GENT
			  o_X : out std_logic;   -- OUTPUT Z
 			  o_Y : out std_logic;   -- OUTPUT Y
			  o_Z : out std_logic);  -- OUTPUT Z
end component;

constant c_CLKP : time := 20 ns;  -- clock period

signal w_CLK : std_logic := '1';
signal w_gent :  std_logic;
signal w_X :  std_logic;
signal w_Y :  std_logic;
signal w_Z : std_logic;
begin

u_0 : circuit4 port map (i_CLK => w_CLK,
															 i_gent => w_gent,
															  o_X => w_X,
															  o_Y => w_Y,
															  o_Z => w_Z);
											
w_CLK <= not w_CLK after c_CLKP / 5;

process 
  begin 
     w_gent <= '1';
		wait for 30 ns;
     w_gent <= '0';
	  wait for 10 ns;

	end process;
end arch_1;	