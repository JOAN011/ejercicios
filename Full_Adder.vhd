library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Half_Adder_Package.all;

entity Full_Adder is
    Port ( A, B, Cin : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is
	Signal S : STD_LOGIC_VECTOR (2 downto 0);
begin

	Semisumador1 : Half_Adder Port Map (A, B, S(0), S(1));
	Semisumador2 : Half_Adder Port Map (S(0), Cin, Suma, S(2));
	
	Carry <= S(1) OR S(2);

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package Full_Adder_Package is
	Component Full_Adder
		Port ( A, B, Cin : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
	end component;
end Full_Adder_Package;