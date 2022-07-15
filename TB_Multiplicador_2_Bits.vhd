LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Multiplicador_2_Bits IS
END TB_Multiplicador_2_Bits;
 
ARCHITECTURE behavior OF TB_Multiplicador_2_Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplicador_2_bits
    PORT(
         A : IN  std_logic_vector(1 downto 0);
         B : IN  std_logic_vector(1 downto 0);
         S : OUT  std_logic_vector(2 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(2 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplicador_2_bits PORT MAP (
          A => A,
          B => B,
          S => S,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		A <= "01";
		B <= "00";
		
		wait for 100 ns;	
		A <= "01";
		B <= "01";
		
		wait for 100 ns;	
		A <= "10";
		B <= "01";
		
		wait for 100 ns;	
		A <= "11";
		B <= "01";
		
		wait for 100 ns;	
		A <= "11";
		B <= "10";
		
		wait for 100 ns;	
		A <= "11";
		B <= "11";
      wait;
   end process;

END;
