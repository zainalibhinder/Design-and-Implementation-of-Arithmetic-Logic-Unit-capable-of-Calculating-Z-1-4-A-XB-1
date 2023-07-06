----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:43:35 09/29/2022 
-- Design Name: 
-- Module Name:    reg1 - Behavioral 
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

entity reg is
Port ( data_in  : IN std_logic_vector (15 downto 0);
       reset  : IN std_logic;
       clk1 : IN std_logic;
       load1 : IN std_logic;
       data_out  : OUT std_logic_vector (15 downto 0)
      );
end reg;

architecture Behavioral of reg is
begin
process(data_in,reset,clk1,load1)
begin
if reset='1' then
  data_out <= (OTHERS=>'0');
elsif (clk1'event and clk1 = '1') then
if(load1='1')then 
  data_out<=data_in;
end if;
end if;
end process;
end Behavioral;

