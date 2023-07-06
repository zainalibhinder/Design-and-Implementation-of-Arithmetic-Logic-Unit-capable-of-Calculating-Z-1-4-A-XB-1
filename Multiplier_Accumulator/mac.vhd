----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:48 12/04/2022 
-- Design Name: 
-- Module Name:    mac - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mac is
 port ( data_in1 : IN std_logic_vector (15 downto 0);
	data_in2 : IN std_logic_vector (15 downto 0);
	data_out : OUT std_logic_vector (15 downto 0)
);
end mac;

architecture ac_arch of mac is

component full_adder port(AF,BF,CI : IN std_logic;
                          SF,CF :OUT std_logic);
 END component;
 
  COMPONENT half_adder port (AH,BH :IN std_logic;
                            SH, CH :out std_logic);
                            end component  ;       
 

signal C1,S1 : std_logic_vector (15 downto 0);

begin

  HA1: half_adder port map (data_in1(0),data_in2(0),S1(0),C1(0));
  FA1 :full_adder port map (data_in1(1),data_in2(1),C1(0),S1(1),C1(1));
  FA2 :full_adder port map (data_in1(2),data_in2(2),C1(1),S1(2),C1(2));
  FA3 :full_adder port map (data_in1(3),data_in2(3),C1(2),S1(3),C1(3));
  FA4 :full_adder port map (data_in1(4),data_in2(4),C1(3),S1(4),C1(4));
  FA5 :full_adder port map (data_in1(5),data_in2(5),C1(4),S1(5),C1(5));
  FA6 :full_adder port map (data_in1(6),data_in2(6),C1(5),S1(6),C1(6));
  FA7 :full_adder port map (data_in1(7),data_in2(7),C1(6),S1(7),C1(7));
  FA8 :full_adder port map (data_in1(8),data_in2(8),C1(7),S1(8),C1(8));
  FA9 :full_adder port map (data_in1(9),data_in2(9),C1(8),S1(9),C1(9));
  FA10 :full_adder port map (data_in1(10),data_in2(10),C1(9),S1(10),C1(10));
  FA11 :full_adder port map (data_in1(11),data_in2(11),C1(10),S1(11),C1(11));
  FA12 :full_adder port map (data_in1(12),data_in2(12),C1(11),S1(12),C1(12));
  FA13 :full_adder port map (data_in1(13),data_in2(13),C1(12),S1(13),C1(13));
  FA14 :full_adder port map (data_in1(14),data_in2(14),C1(13),S1(14),C1(14));
  FA15 :full_adder port map (data_in1(15),data_in2(15),C1(14),S1(15),C1(15));

data_out(0) <= S1(0);
 data_out(1) <= S1(1);
 data_out(2) <= S1(2);
 data_out(3) <= S1(3);
 data_out(4) <= S1(4);
 data_out(5) <= S1(5);
 data_out(6) <= S1(6);
 data_out(7) <= S1(7);
 data_out(8) <= S1(8);
 data_out(9) <= S1(9);
 data_out(10) <= S1(10);
 data_out(11) <= S1(11);
 data_out(12) <= S1(12);
 data_out(13) <= S1(13);
 data_out(14) <= S1(14);
 data_out(15) <= S1(15);


	-- data_out <= std_logic_vector(unsigned(data_in1) + unsigned(data_in2));


end ac_arch;
