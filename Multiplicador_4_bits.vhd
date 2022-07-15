library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Modulo1_Package.all;
use work.Modulo2_Package.all;

entity Multiplicador_4_bits is
    Port ( M, Q : in  STD_LOGIC_VECTOR (3 downto 0);
           P : out  STD_LOGIC_VECTOR (7 downto 0);
			  Cout : out  STD_LOGIC);
end Multiplicador_4_bits;

architecture Behavioral of Multiplicador_4_bits is
	Signal S : STD_LOGIC_VECTOR (7 downto 0);
	Signal C : STD_LOGIC_VECTOR (8 downto 0);
begin

	P(0) <= M(0) AND Q(0);
	
	Bloque1 : Modulo1 Port Map (M(1), M(0), Q(0), Q(1), '0', P(1), C(0));
	Bloque2 : Modulo1 Port Map (M(2), M(1), Q(0), Q(1), C(0), S(0), C(1));
	Bloque3 : Modulo1 Port Map (M(3), M(2), Q(0), Q(1), C(1), S(1), C(2));
	Bloque4 : Modulo1 Port Map ('0', M(3), Q(0), Q(1), C(2), S(2), S(3));
	
	Bloque5 : Modulo2 Port Map (S(0), M(0), Q(2), '0', P(2), C(3));
	Bloque6 : Modulo2 Port Map (S(1), M(1), Q(2), C(3), S(4), C(4));
	Bloque7 : Modulo2 Port Map (S(2), M(2), Q(2), C(4), S(5), C(5));
	Bloque8 : Modulo2 Port Map (S(3), M(3), Q(2), C(5), S(6), S(7));
	
	Bloque9 : Modulo2 Port Map (S(4), M(0), Q(3), '0', P(3), C(6));
	Bloque10 : Modulo2 Port Map (S(5), M(1), Q(3), C(6), P(4), C(7));
	Bloque11 : Modulo2 Port Map (S(6), M(2), Q(3), C(7), P(5), C(8));
	Bloque12 : Modulo2 Port Map (S(7), M(3), Q(3), C(8), P(6), P(7));

end Behavioral;

