LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Multiplicador_4_Bits IS
END TB_Multiplicador_4_Bits;
 
ARCHITECTURE behavior OF TB_Multiplicador_4_Bits IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplicador_4_bits
    PORT(
         M : IN  std_logic_vector(3 downto 0);
         Q : IN  std_logic_vector(3 downto 0);
         P : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal M : std_logic_vector(3 downto 0) := (others => '0');
   signal Q : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal P : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplicador_4_bits PORT MAP (
          M => M,
          Q => Q,
          P => P,
          Cout => Cout
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
wait for 10 ns;	
		M <= "0101";
		Q <= "1000";
		
		wait for 100 ns;	
		M <= "0111";
		Q <= "1010";
		
		wait for 100 ns;	
		M <= "1110";
		Q <= "1001";
		
		wait for 100 ns;	
		M <= "1101";
		Q <= "1100";
		
		wait for 100 ns;	
		M <= "0100";
		Q <= "1101";
		
		wait for 100 ns;	
		M <= "0101";
		Q <= "1111";

      -- insert stimulus here 

      wait;
   end process;

END;
