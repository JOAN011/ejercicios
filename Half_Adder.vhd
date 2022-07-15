library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Half_Adder is
    Port ( A, B : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
end Half_Adder;

architecture Behavioral of Half_Adder is

begin

	Suma <= A XOR B;
	Carry <= A AND B;

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package Half_Adder_Package is
	Component Half_Adder
		Port ( A, B : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
	end Component;
end Half_Adder_Package;