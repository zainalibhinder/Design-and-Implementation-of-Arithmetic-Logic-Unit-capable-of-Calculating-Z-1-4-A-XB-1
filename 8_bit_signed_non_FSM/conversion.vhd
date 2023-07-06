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

entity converter is 
  port( 
    data_in: IN std_logic_vector(15 downto 0);
	 A,B: IN std_logic_vector(7 downto 0);
    data_out: OUT std_logic_vector(15 downto 0)
      );
end converter;

architecture conv_arch of converter is





signal out_con :std_logic_vector(15 downto 0);

BEGIN

  Process(a,b,data_in,out_con)
  begin
  if ((A(7)= '0') and (B(7)= '0')) then

	data_out <= data_in;
  
  
	
  
  elsif ((A(7)= '1') and (B(7)= '1')) then 
  
		data_out <= data_in;
   
  
   --adder_out <= std_logic_vector(unsigned(adder_in)+1);
  
  elsif ((A(7)= '1') or (B(7)= '1'))  then 
  
OUT_CON(15) <= (not DATA_IN(15)) ;
  OUT_CON(14) <=(not DATA_IN(14)) ;
  OUT_CON(13) <=(not DATA_IN(13)) ;
 OUT_CON(12) <= (not DATA_IN(12))  ;
 OUT_CON(11) <=(not DATA_IN(11))  ;
 OUT_CON(10) <=(not DATA_IN(10))  ;
  OUT_CON(9) <=(not DATA_IN(9));
 OUT_CON(8) <=(not DATA_IN(8));
 OUT_CON(7) <= (not DATA_IN(7)) ;
  OUT_CON(6) <=(not DATA_IN(6)) ;
  OUT_CON(5) <=(not DATA_IN(5)) ;
 OUT_CON(4) <= (not DATA_IN(4))  ;
 OUT_CON(3) <=(not DATA_IN(3))  ;
 OUT_CON(2) <=(not DATA_IN(2))  ;
  OUT_CON(1) <=(not DATA_IN(1));
 OUT_CON(0) <=(not DATA_IN(0));

 
   data_out<= std_logic_vector(signed(out_con)+1);
	
   

	end if;
	end process;
end conv_arch;

