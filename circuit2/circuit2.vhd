library ieee;
use ieee.std_logic_1164.all;

entity circuit2 is

port(i_CLK: in std_logic;   -- CLK
			o_X : out  std_logic;  -- X Output
			 o_Y : out std_logic;  -- Y Output
			 o_Z : out std_logic); -- Z Output
end circuit2;

architecture arch_1 of circuit2 is

type t_STATE is (t_S0, t_S1, t_S2, t_S3);
signal w_STATE_REG : t_STATE;
signal w_NEXT_STATE : t_STATE;

begin

p_STATE_REG : process (i_CLK)
  begin
		if  (i_CLK' event and i_CLK = '1') then
		 w_STATE_REG <= w_NEXT_STATE;
		 end if;
end process;
	
p_NEXT_STATE : process(w_STATE_REG)
begin 
   case (w_STATE_REG) is
	 when t_S0 => w_NEXT_STATE <= t_S1 ;
	 when t_S1 => w_NEXT_STATE <= t_S2;
    when t_S2 => w_NEXT_STATE <= t_S3;
    when t_S3 => w_NEXT_STATE <= t_S0;
	 when others => w_NEXT_STATE <= t_S0;
   end case;
end process;	 

-- output
o_X <= '1' when (w_STATE_REG = t_S3) else '0';
o_Y <= '1' when (w_STATE_REG = t_S2) else '0';
o_Z <= '1' when (w_STATE_REG = t_S1) else '0';

end arch_1;
