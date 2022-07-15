library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Listado_10_5 is
    Port ( A, B, Cin : in  STD_LOGIC;
           SUMA, Count : out  STD_LOGIC);
end Listado_10_5;

architecture Behavioral of Listado_10_5 is

begin

	SUMA <= A XOR B XOR Cin;
	Count <= ((A AND B) OR (A XOR B)) AND Cin;

end Behavioral;

