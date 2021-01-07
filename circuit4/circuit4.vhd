library ieee;
use ieee.std_logic_1164.all;

entity circuit4 is 
port( i_CLK : in std_logic;   -- CLK
           i_gent : in std_logic;  -- INPUT GENT
			  o_X : out std_logic;   -- OUTPUT Z
 			  o_Y : out std_logic;   -- OUTPUT Y
			  o_Z : out std_logic);  -- OUTPUT Z
end circuit4;

architecture arch_1 of circuit4 is

type t_STATE is(t_S0,t_S1,t_S2,t_S3,
											t_S4,t_S5,t_S6,t_S7);
											
signal w_STATE_REG : t_STATE;
signal w_NEXT_STATE : t_STATE;
begin

p_STATE_REG : process (i_CLK)
  begin
		if  (i_CLK' event and i_CLK = '1') then
		 w_STATE_REG <= w_NEXT_STATE;
		 end if;
end process;


p_NEXT_STATE : process(w_STATE_REG, i_gent)
begin 
   case (w_STATE_REG) is
	when  t_S0 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S1;
					 else
					   w_NEXT_STATE <= t_S0;
					end if;

	 when  t_S1 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S2;
					 else
					   w_NEXT_STATE <= t_S1;
					end if;			

	 when  t_S2 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S3;
					 else
					   w_NEXT_STATE <= t_S2;
					end if;			
	
	 when  t_S3 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S4;
					 else
					   w_NEXT_STATE <= t_S3;
					end if;			
	
	 when  t_S4 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S5;
					 else
					   w_NEXT_STATE <= t_S4;
					end if;			
	
	 when  t_S5 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S6;
					 else
					   w_NEXT_STATE <= t_S5;
					end if;			
	
	 when  t_S6 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S7;
					 else
					   w_NEXT_STATE <= t_S6;
					end if;			
	
	 when  t_S7 => if (i_gent = '1') then
	              w_NEXT_STATE <= t_S0;
					 else
					   w_NEXT_STATE <= t_S7;
					end if;							
     when others => w_NEXT_STATE <= t_S0;
   end case;
end process;	 

-- output
o_X <= '1' when (w_STATE_REG = t_S4 or w_STATE_REG = t_S5 or w_STATE_REG = t_S6 or w_STATE_REG = t_S7) else '0';
o_Y <= '1' when (w_STATE_REG = t_S1 or w_STATE_REG = t_S2 or w_STATE_REG = t_S5 or w_STATE_REG = t_S6) else '0';
o_Z <= '1' when (w_STATE_REG = t_S2 or w_STATE_REG = t_S3 or w_STATE_REG = t_S4 or w_STATE_REG = t_S5) else '0';

end arch_1;