----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:40 12/04/2022 
-- Design Name: 
-- Module Name:    input_accu - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity input_accu is
        PORT(  ac_out : in std_logic_vector (15 downto 0);
		         ac_out1 : OUT std_logic_vector (15 downto 0)
				);


end input_accu;

architecture Behavioral of input_accu is

begin
     ac_out1 <= ac_out;

end Behavioral;

