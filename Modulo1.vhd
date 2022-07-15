library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Full_Adder_Package.all;

entity Modulo1 is
    Port ( M0, M1, Q0, Q1, Cin : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
end Modulo1;

architecture Behavioral of Modulo1 is
	Signal S0, S1 : STD_LOGIC;
begin

	S0 <= M0 AND Q0;
	S1 <= M1 AND Q1;
	
	Sumador : Full_Adder Port Map (S0, S1, Cin, Suma, Carry);

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package Modulo1_Package is
	Component Modulo1
		Port ( M0, M1, Q0, Q1, Cin : in  STD_LOGIC;
           Suma, Carry : out  STD_LOGIC);
	end component;
end Modulo1_Package;