library ieee;
use ieee.std_logic_1164.all;

entity circuit1_tb is
end circuit1_tb;

architecture arch_1 of circuit1_tb is
component circuit1 is
port(i_CLKM : in std_logic;      -- CLK INPUT
          o_CLKH: out std_logic); -- CLK OUTPUT
end component;

signal w_CLKM : std_logic;
signal w_CLKH : std_logic;
constant c_Period : time :=  20 ns;

begin

u_0: circuit1 port map(
					i_CLKM => w_CLKM,
					o_CLKH => w_CLKH);
process
begin

w_CLKM <= '0';
	wait for c_Period;
w_CLKM <= '1';
	wait for c_Period;
w_CLKM <= '0';
	wait for c_Period;

end process;
end arch_1;