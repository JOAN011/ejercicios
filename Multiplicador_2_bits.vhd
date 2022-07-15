library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplicador_2_bits is
    Port ( A, B : in  STD_LOGIC_VECTOR (1 downto 0);
           S : out  STD_LOGIC_VECTOR (2 downto 0);
           Cout : out  STD_LOGIC);
end Multiplicador_2_bits;

architecture Behavioral of Multiplicador_2_bits is
	Signal P : STD_LOGIC_VECTOR (3 downto 0);
	Signal C : STD_LOGIC;
begin
	
	P(0) <= B(0) AND A(0);
	P(1) <= B(0) AND A(1);
	P(2) <= B(1) AND A(0);
	P(3) <= B(1) AND A(1);
	
	S(0) <= P(0);
	S(1) <= (P(1) XOR P(2)) XOR '0';
	C <= (P(1) AND P(2)) OR ((P(1) XOR P(2)) AND '0');
	S(2) <= ('0' XOR P(3)) XOR C;
	Cout <= ('0' AND P(3)) OR (('0' XOR P(2)) AND C);
	
end Behavioral;

