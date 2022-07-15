library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Listado_10_7 is
    Port ( Clk, I : in  STD_LOGIC;
           Qz : inout  STD_LOGIC;
           Cont : inout  STD_LOGIC_VECTOR (2 downto 0) := "000";
           Edo : inout  STD_LOGIC_VECTOR (1 downto 0) := "00";
           Qa : buffer  STD_LOGIC_VECTOR (3 downto 0) := "1101";
			  Qb : buffer  STD_LOGIC_VECTOR (3 downto 0) := "1011";
           A : in  STD_LOGIC_VECTOR (3 downto 0) := "1101";
			  B : in  STD_LOGIC_VECTOR (3 downto 0) := "1011");
end Listado_10_7;

architecture Behavioral of Listado_10_7 is
	Signal C1, S0 : STD_LOGIC;
begin
	
	S0 <= (Qa(0) XOR Qb(0)) XOR Qz;
	C1 <= (Qa(0) AND Qb(0)) OR (Qa(0) AND Qz) OR (Qb(0) and Qz);
	
	process begin wait until rising_edge (Clk);
		case Edo is
			when "00" => if I = '1' then
								Edo <= "01";
							 else
								Edo <= "00";
							 end if;
			when "01" => Edo <= "10";
			when "10" => Edo <= "00";
			when others => if Cont(2) = '0' then
									Edo <= "10";
								else
									Edo <= "00";
								end if;	
		end case;
	end process;

	process begin wait until falling_edge (Clk);
		case Edo is
			when "01" => Qa <= A;
							 Qb <= B;
							 Qz <= '0';
							 Cont <= "000";
			when "10" => Cont <= Cont + 1;
			when "11" => Qa(3) <= S0;
							 Qa(2 downto 0) <= Qa(3 downto 1);
							 Qb(3) <= Qb(0);
							 Qb(2 downto 0) <= Qb(3 downto 1);
							 Qz <= C1;
			when others => 
		end case;
	end process;

end Behavioral;

