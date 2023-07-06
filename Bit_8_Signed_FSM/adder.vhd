----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:47:09 09/29/2022 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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
 use IEEE.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is 
  port( 
    adder_in: IN std_logic_vector(15 downto 0);
	 A,B: IN std_logic_vector(7 downto 0);
    adder_out: OUT std_logic_vector(15 downto 0)
      );
end adder;

architecture adder_arch of adder is
signal out_con,out_CON1:std_logic_vector(15 downto 0);
  begin
  Process(a,b,adder_in,out_con,out_con1)
  begin
  if ((A(7)= '0') and (B(7)= '0')) then
  
  adder_out <= std_logic_vector(unsigned(adder_in)+1);
  
  elsif ((A(7)= '1') and (B(7)= '1')) then 
  
  
   adder_out <= std_logic_vector(unsigned(adder_in)+1);
  
  elsif ((A(7)= '1') or (B(7)= '1'))  then 
 OUT_CON(15) <= (not ADDER_IN(15)) ;
  OUT_CON(14) <=(not ADDER_IN(14)) ;
  OUT_CON(13) <=(not ADDER_IN(13)) ;
 OUT_CON(12) <= (not ADDER_IN(12))  ;
 OUT_CON(11) <=(not ADDER_IN(11))  ;
 OUT_CON(10) <=(not ADDER_IN(10))  ;
  OUT_CON(9) <=(not ADDER_IN(9));
 OUT_CON(8) <=(not ADDER_IN(8));
 OUT_CON(7) <= (not ADDER_IN(7)) ;
  OUT_CON(6) <=(not ADDER_IN(6)) ;
  OUT_CON(5) <=(not ADDER_IN(5)) ;
 OUT_CON(4) <= (not ADDER_IN(4))  ;
 OUT_CON(3) <=(not ADDER_IN(3))  ;
 OUT_CON(2) <=(not ADDER_IN(2))  ;
  OUT_CON(1) <=(not ADDER_IN(1));
 OUT_CON(0) <=(not ADDER_IN(0));
 
   out_con1<= std_logic_vector(signed(out_con)+1);
   adder_out <= std_logic_vector(signed(out_con1)+1);
	end if;
	end process;
end adder_arch;

