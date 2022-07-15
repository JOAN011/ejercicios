library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Full_Adder_Package.all;

entity Modulo2 is
    Port ( M1, Q0, P0, Cin : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
end Modulo2;

architecture Behavioral of Modulo2 is
	Signal S0 : STD_LOGIC;
begin

	S0 <= Q0 AND P0;
	
	Sumador : Full_Adder Port Map (M1, S0, Cin, Suma, Carry);

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package Modulo2_Package is
	Component Modulo2
		Port ( M1, Q0, P0, Cin : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
	end component;
end Modulo2_Package;