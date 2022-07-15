LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_L_10_7 IS
END TB_L_10_7;
 
ARCHITECTURE behavior OF TB_L_10_7 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Listado_10_7
    PORT(
         Clk : IN  std_logic;
         I : IN  std_logic;
         Qz : INOUT  std_logic;
         Cont : INOUT  std_logic_vector(2 downto 0);
         Edo : INOUT  std_logic_vector(1 downto 0);
         Qa : BUFFER  std_logic_vector(3 downto 0);
         Qb : BUFFER  std_logic_vector(3 downto 0);
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal I : std_logic := '0';
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal Qz : std_logic;
   signal Cont : std_logic_vector(2 downto 0);
   signal Edo : std_logic_vector(1 downto 0);

 	--Outputs
   signal Qa : std_logic_vector(3 downto 0);
   signal Qb : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Listado_10_7 PORT MAP (
          Clk => Clk,
          I => I,
          Qz => Qz,
          Cont => Cont,
          Edo => Edo,
          Qa => Qa,
          Qb => Qb,
          A => A,
          B => B
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;			
		A <= "1111";
		B <= "1001";
		
		wait for 100 ns;			
		A <= "1010";
		A <= "0110";
      -- insert stimulus here 

      wait;
   end process;

END;
