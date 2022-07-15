----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Listado_10_6 is
    Port ( A, B : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Count : out  STD_LOGIC);
end Listado_10_6;

architecture Behavioral of Listado_10_6 is
	Signal C : STD_LOGIC_VECTOR (2 downto 0);
begin

	S(0) <= (A(0) XOR B(0)) XOR '0';
	C(0) <= (A(0) AND B(0)) OR (((A(0) XOR B(0))) AND '0');
	S(1) <= (A(1) XOR B(1)) XOR C(0);
	c(1) <= (C(0) AND (A(1) XOR B(1))) OR (A(1) AND B(1));
	S(2) <= (A(2) XOR B(2)) XOR C(1);
	c(2) <= (C(1) AND (A(2) XOR B(2))) OR (A(2) AND B(2));
	S(3) <= (A(3) XOR B(3)) XOR C(2);
	Count <= (C(2) AND (A(3) XOR B(3))) OR (A(3) AND B(3));
	
end Behavioral;

