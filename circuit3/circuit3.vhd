library ieee;
use ieee.std_logic_1164.all;

entity circuit3 is 
port( i_CLK : in std_logic;     -- CLK
           i_B : in std_logic;          -- Button Input
			  o_S0 : out std_logic;  -- S0 Output
			  o_S1 : out std_logic); -- S1 Output
end circuit3;

architecture arch_1 of circuit3 is

type t_STATE is(t_hora,t_alarme,t_crono,t_data,
										   t_Phora,t_Palarme,t_Pcrono,t_Pdata);
											
signal w_STATE_REG : t_STATE;
signal w_NEXT_STATE : t_STATE;
begin

p_STATE_REG : process (i_CLK, i_B)
  begin
		if  (i_CLK' event and i_CLK = '1') then
		 w_STATE_REG <= w_NEXT_STATE;
		 end if;
end process;

p_NEXT_STATE : process(w_STATE_REG, i_B)
begin 
   case (w_STATE_REG) is
	 when  t_hora => if (i_B = '0') then
	              w_NEXT_STATE <= t_Phora;
					 else
					   w_NEXT_STATE <= t_hora;
					end if;
	when t_Phora => if (i_B = '1') then
	              w_NEXT_STATE <= t_alarme;
					  else 
					  w_NEXT_STATE <= t_Phora;
				     end if;		
					  
	 when t_alarme =>if (i_B = '0') then
	              w_NEXT_STATE <= t_Palarme;
					 else
						w_NEXT_STATE <= t_alarme;
					end if;
	when t_Palarme => if (i_B = '1') then
	              w_NEXT_STATE <= t_crono;
					  else 
					  w_NEXT_STATE <= t_Palarme;
						end if;
						 
	 when t_crono => if (i_B = '0') then
	              w_NEXT_STATE <= t_Pcrono;
					 else
					   w_NEXT_STATE <= t_crono;
					end if;
	when t_Pcrono => if (i_B = '1') then
	              w_NEXT_STATE <= t_data;
					  else 
					  w_NEXT_STATE <= t_Pcrono;
		          end if;	 
					 
	 when t_data => if (i_B = '0') then
	              w_NEXT_STATE <= t_Pdata;
					 else
					   w_NEXT_STATE <= t_data;
					end if;
	when t_Pdata => if (i_B = '1') then
	              w_NEXT_STATE <= t_hora;
					  else 
					  w_NEXT_STATE <= t_Pdata;
				    end if; 
     when others => w_NEXT_STATE <= t_hora;
   end case;
end process;	 

-- output
o_S0 <= '1' when ((w_STATE_REG = t_crono or w_STATE_REG = t_data) or (w_STATE_REG = t_Pcrono or w_STATE_REG = t_Pdata)) else '0';
o_S1 <= '1' when ((w_STATE_REG = t_alarme or w_STATE_REG = t_data) or (w_STATE_REG = t_Palarme or w_STATE_REG = t_Pdata)) else '0';

end arch_1;