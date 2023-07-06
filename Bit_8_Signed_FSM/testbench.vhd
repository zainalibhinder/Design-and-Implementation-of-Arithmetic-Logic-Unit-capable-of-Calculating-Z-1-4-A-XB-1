--------------------------------------------------------------------------------
-- Company: 16 bit
-- Engineer:
--
-- Create Date:   22:54:26 12/03/2022
-- Design Name:   
-- Module Name:   C:/Users/hp/Downloads/Xilinx ISE Design Suite 14.5/bit_8_fsm/testbench.vhd
-- Project Name:  bit_8_fsm
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: arithmetic_unit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY controller_test IS
END controller_test;
 
ARCHITECTURE behavior OF controller_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT arithmetic_unit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         clr : IN  std_logic;
         load : IN  std_logic;
         Z : OUT  std_logic_vector(15 downto 0);
         
         end_flag : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '1';
   signal clr : std_logic := '1';
   signal load : std_logic := '0';
	


 	--Outputs
   signal Z : std_logic_vector(15 downto 0);
   
   signal end_flag : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: arithmetic_unit PORT MAP (
          A => A,
          B => B,
          clk => clk, 
          clr => clr,
          load => load,
          Z => Z,
          end_flag => end_flag
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for clk_period;

      -- insert stimulus here 
		clr <= '1';
		wait for clk_period;
		clr <= '0';
		wait for clk_period;
		A<= "11111000"; -- A = -8
      B<= "00001000"; -- B = 8
		wait for clk_period;
		load <= '1';
		wait for clk_period;
		load <= '0';
		
		wait for 50 ns ;
		clr <= '1';
		wait for clk_period;
		clr <= '0';
		A<= "11110111";  -- A = -9
      B<= "11110100";  -- B = -12
		load <= '1';
		wait for clk_period;
		load <= '0';
		
		wait for 50 ns ;
		clr <= '1';
		wait for clk_period;
		clr <= '0';
		wait for 10 ns;
		A<= "00001010";  -- A = 10
      B<= "00001000";  -- B = 8
		load <= '1';
		wait for clk_period;
		load <= '0';
		wait for 50 ns ;
		clr <= '1';
		wait for clk_period;
		clr <= '0';
		wait for 40 ns;
		
      wait;
   end process;

END;
