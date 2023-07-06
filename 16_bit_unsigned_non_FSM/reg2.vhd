----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:44:11 09/29/2022 
-- Design Name: 
-- Module Name:    reg2 - Behavioral 
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


entity reg2 is
Port ( din  : IN std_logic_vector (31 downto 0);
       reset  : IN std_logic;
       clk1  : IN std_logic;
       dout : OUT std_logic_vector (31 downto 0);
       ef : OUT std_logic
      );
end reg2;

architecture Behavioral of reg2 is
begin
process(din,reset,clk1)
begin
if reset='1' then
  dout <= (OTHERS=>'0');
elsif (clk1'event and clk1 = '1') then
  dout<=din;
  ef<='1';
end if;
end process;
end Behavioral;
