library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuit1 is
port(i_CLKM : in std_logic;      -- CLK INPUT
          o_CLKH: out std_logic); -- CLK OUTPUT
end circuit1;

architecture arch_1 of circuit1 is
   
 signal count : integer := 1;
 signal temp : std_logic := '0';

begin
process(i_CLKM)
 
	 begin
		if  (i_CLKM'event and i_CLKM = '1')  then
				if (count = 25000000) then
					temp <= not temp;
					count <= 1;
						else
							count <= count + 1;
			 end if;
		end if;
	 end process;
	 
	 o_CLKH <= temp;

end arch_1;
			  
				