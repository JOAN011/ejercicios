LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_L_10_6 IS
END TB_L_10_6;
 
ARCHITECTURE behavior OF TB_L_10_6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Listado_10_6
    PORT(
         A : IN  std_logic_vector(0 to 3);
         B : IN  std_logic_vector(0 to 3);
         S : OUT  std_logic_vector(0 to 3);
         Count : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(0 to 3) := (others => '0');
   signal B : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(0 to 3);
   signal Count : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Listado_10_6 PORT MAP (
          A => A,
          B => B,
          S => S,
          Count => Count
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      A <= "1100"; 
		B <= "1100";
			
		wait for 100 ns;	
      A <= "1101"; 
		B <= "1100";
		
		wait for 100 ns;	
      A <= "1110"; 
		B <= "0100";
      wait;
   end process;

END;
