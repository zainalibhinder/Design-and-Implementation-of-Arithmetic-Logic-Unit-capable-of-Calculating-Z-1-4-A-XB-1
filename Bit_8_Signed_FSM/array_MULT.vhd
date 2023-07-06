----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:46:19 12/03/2022 
-- Design Name: 
-- Module Name:    array_MULT - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier_array is
 Port ( A ,B : IN std_logic_vector(7 DOWNTO 0);
        P : OUT std_logic_vector(15 DOWNTO 0) );
end multiplier_array;

architecture Behavioral of multiplier_array is
signal C1,C2,C3,C4,C5,C6,C7: std_logic_vector(7 DOWNTO 0);
signal S1,S2,S3,S4,S5,S6,S7: std_logic_vector(7 downto 0);
signal AB1,AB2,AB3,AB4,AB5,AB6,AB7,AB8:std_logic_vector(7 downto 0);
signal c,d: std_logic_vector(7 DOWNTO 0);
signal x,y: std_logic_vector(7 downto 0):="00000000";
signal x1,y1: std_logic_vector(7 downto 0):="00000000";
signal out2,out1: std_logic_vector(15 downto 0);


component full_adder port(AF,BF,CI : IN std_logic;
                          SF,CF :OUT std_logic);
 END component;
 COMPONENT half_adder port (AH,BH :IN std_logic;
                            SH, CH :out std_logic);
                            end component  ;                  


--component dhan  Port ( A, B :IN STD_LOGIC_vector(7 downto 0);
--    C, D : OUT STD_LOGIC_vector(15 downto 0)); end component;

begin
process(a,b,x,y,x1,y1)
begin

if A(7)= '1' then 
 X(7) <= (not A(7)) ;
  X(6) <=(not A(6)) ;
  X(5) <=(not A(5)) ;
 X(4) <= (not A(4))  ;
 X(3) <=(not A(3))  ;
 X(2) <=(not A(2))  ;
  X(1) <=(not A(1));
 X(0) <=(not A(0));
 
   X1 <= std_logic_vector(unsigned(X)+1);
 
 c<=  x1;
else
 c<= A;

end if ;

 if B(7)= '1' then 
 Y(7) <= (not B(7)) ;
  Y(6) <=(not B(6)) ;
  Y(5) <=(not B(5)) ;
 Y(4) <= (not B(4))  ;
 Y(3) <=(not B(3))  ;
 Y(2) <=(not B(2))  ;
  Y(1) <=(not B(1));
 Y(0) <=(not B(0));
 
   Y1 <= std_logic_vector(unsigned(Y)+1);
 
 D<=  Y1;
else
 D<= b;

end if ;

end process;





AB1(0)<=C(0)AND D(0);
AB1(1)<=C(1)AND D(0);
AB1(2)<=C(2)AND D(0);
AB1(3)<=C(3)AND D(0);
AB1(4)<=C(4)AND D(0);
AB1(5)<=C(5)AND D(0);
AB1(6)<=C(6)AND D(0);
AB1(7)<=C(7)AND D(0);
----
AB2(0)<=C(0)AND D(1);
AB2(1)<=C(1)AND D(1);
AB2(2)<=C(2)AND D(1);
AB2(3)<=C(3)AND D(1);
AB2(4)<=C(4)AND D(1);
AB2(5)<=C(5)AND D(1);
AB2(6)<=C(6)AND D(1);
AB2(7)<=C(7)AND D(1);
-----
AB3(0)<=C(0)AND D(2);
AB3(1)<=C(1)AND D(2);
AB3(2)<=C(2)AND D(2);
AB3(3)<=C(3)AND D(2);
AB3(4)<=C(4)AND D(2);
AB3(5)<=C(5)AND D(2);
AB3(6)<=C(6)AND D(2);
AB3(7)<=C(7)AND D(2);
----
AB4(0)<=C(0)AND D(3);
AB4(1)<=C(1)AND D(3);
AB4(2)<=C(2)AND D(3);
AB4(3)<=C(3)AND D(3);
AB4(4)<=C(4)AND D(3);
AB4(5)<=C(5)AND D(3);
AB4(6)<=C(6)AND D(3);
AB4(7)<=C(7)AND D(3);
---
AB5(0)<=C(0)AND D(4);
AB5(1)<=C(1)AND D(4);
AB5(2)<=C(2)AND D(4);
AB5(3)<=C(3)AND D(4);
AB5(4)<=C(4)AND D(4);
AB5(5)<=C(5)AND D(4);
AB5(6)<=C(6)AND D(4);
AB5(7)<=C(7)AND D(4);
----
AB6(0)<=C(0)AND D(5);
AB6(1)<=C(1)AND D(5);
AB6(2)<=C(2)AND D(5);
AB6(3)<=C(3)AND D(5);
AB6(4)<=C(4)AND D(5);
AB6(5)<=C(5)AND D(5);
AB6(6)<=C(6)AND D(5);
AB6(7)<=C(7)AND D(5);


AB7(0)<=C(0)AND D(6);
AB7(1)<=C(1)AND D(6);
AB7(2)<=C(2)AND D(6);
AB7(3)<=C(3)AND D(6);
AB7(4)<=C(4)AND D(6);
AB7(5)<=C(5)AND D(6);
AB7(6)<=C(6)AND D(6);
AB7(7)<=C(7)AND D(6);


AB8(0)<=C(0)AND D(7);
AB8(1)<=C(1)AND D(7);
AB8(2)<=C(2)AND D(7);
AB8(3)<=C(3)AND D(7);
AB8(4)<=C(4)AND D(7);
AB8(5)<=C(5)AND D(7);
AB8(6)<=C(6)AND D(7);
AB8(7)<=C(7)AND D(7); 


FA1 :full_adder port map (AB1(2),AB2(1),C1(0),S1(1),C1(1));
FA2 :full_adder port map (AB1(3),AB2(2),C1(1),S1(2),C1(2));
FA3 :full_adder port map (AB1(4),AB2(3),C1(2),S1(3),C1(3));
FA4 :full_adder port map (AB1(5),AB2(4),C1(3),S1(4),C1(4));
FA5 :full_adder port map (AB1(6),AB2(5),C1(4),S1(5),C1(5));
FA6 :full_adder port map (AB1(7),AB2(6),C1(5),S1(6),C1(6));

FA8 :full_adder port map (AB3(1),S1(2),C2(0),S2(1),C2(1));
FA9 :full_adder port map (AB3(2),S1(3),C2(1),S2(2),C2(2));
FA10:full_adder port map (AB3(3),S1(4),C2(2),S2(3),C2(3));
FA11:full_adder port map (AB3(4),S1(5),C2(3),S2(4),C2(4));
FA12:full_adder port map (AB3(5),S1(6),C2(4),S2(5),C2(5));
FA13:full_adder port map (AB3(6),S1(7),C2(5),S2(6),C2(6));
FA14:full_adder port map (AB3(7),C2(6),C1(7),S2(7),C2(7));

FA15 :full_adder port map(AB4(1),S2(2),C3(0),S3(1),C3(1));
FA16:full_adder port map (AB4(2),S2(3),C3(1),S3(2),C3(2));
FA17:full_adder port map (AB4(3),S2(4),C3(2),S3(3),C3(3));
FA18:full_adder port map (AB4(4),S2(5),C3(3),S3(4),C3(4));
FA19:full_adder port map (AB4(5),S2(6),C3(4),S3(5),C3(5));
FA20:full_adder port map (AB4(6),S2(7),C3(5),S3(6),C3(6));
FA21:full_adder port map (AB4(7),C3(6),C2(7),S3(7),C3(7));


FA22 :full_adder port map(AB5(1),S3(2),C4(0),S4(1),C4(1));
FA23:full_adder port map (AB5(2),S3(3),C4(1),S4(2),C4(2));
FA24:full_adder port map (AB5(3),S3(4),C4(2),S4(3),C4(3));
FA25:full_adder port map (AB5(4),S3(5),C4(3),S4(4),C4(4));
FA26:full_adder port map (AB5(5),S3(6),C4(4),S4(5),C4(5));
FA27:full_adder port map (AB5(6),S3(7),C4(5),S4(6),C4(6));
FA28:full_adder port map (AB5(7),C4(6),C3(7),S4(7),C4(7));


FA29 :full_adder port map(AB6(1),S4(2),C5(0),S5(1),C5(1));
FA30:full_adder port map (AB6(2),S4(3),C5(1),S5(2),C5(2));
FA31:full_adder port map (AB6(3),S4(4),C5(2),S5(3),C5(3));
FA32:full_adder port map (AB6(4),S4(5),C5(3),S5(4),C5(4));
FA33:full_adder port map (AB6(5),S4(6),C5(4),S5(5),C5(5));
FA34:full_adder port map (AB6(6),S4(7),C5(5),S5(6),C5(6));
FA35:full_adder port map (AB6(7),C5(6),C4(7),S5(7),C5(7));

FA36 :full_adder port map(AB7(1),S5(2),C6(0),S6(1),C6(1));
FA37:full_adder port map (AB7(2),S5(3),C6(1),S6(2),C6(2));
FA38:full_adder port map (AB7(3),S5(4),C6(2),S6(3),C6(3));
FA39:full_adder port map (AB7(4),S5(5),C6(3),S6(4),C6(4));
FA40:full_adder port map (AB7(5),S5(6),C6(4),S6(5),C6(5));
FA41:full_adder port map (AB7(6),S5(7),C6(5),S6(6),C6(6));
FA42:full_adder port map (AB7(7),C6(6),C5(7),S6(7),C6(7));


FA43 :full_adder port map(AB8(1),S6(2),C7(0),S7(1),C7(1));
FA44:full_adder port map (AB8(2),S6(3),C7(1),S7(2),C7(2));
FA45:full_adder port map (AB8(3),S6(4),C7(2),S7(3),C7(3));
FA46:full_adder port map (AB8(4),S6(5),C7(3),S7(4),C7(4));
FA47:full_adder port map (AB8(5),S6(6),C7(4),S7(5),C7(5));
FA48:full_adder port map (AB8(6),S6(7),C7(5),S7(6),C7(6));
FA49:full_adder port map (AB8(7),C7(6),C6(7),S7(7),C7(7));
  
  HA1: half_adder port map (AB1(1),AB2(0),S1(0),C1(0));
  HA8 :half_adder port map (AB2(7),C1(6),S1(7),C1(7));
  HA2: half_adder port map (AB3(0),S1(1),S2(0),C2(0));
  HA3: half_adder port map (AB4(0),S2(1),S3(0),C3(0));
  HA4: half_adder PORT MAP (AB5(0),S3(1),S4(0),C4(0));
  HA5: half_adder PORT MAP (AB6(0),S4(1),S5(0),C5(0));
  HA6: half_adder PORT MAP (AB7(0),S5(1),S6(0),C6(0));
  HA7: half_adder PORT MAP (AB8(0),S6(1),S7(0),C7(0));








OUT1(0)<=AB1(0);
OUT1(1)<=S1(0);
OUT1(2)<=S2(0);
OUT1(3)<=S3(0);
OUT1(4)<=S4(0);
OUT1(5)<=S5(0);
OUT1(6)<=S6(0);
OUT1(7)<=S7(0);
OUT1(8)<=S7(1);
OUT1(9)<=S7(2);
OUT1(10)<=S7(3);
OUT1(11)<=S7(4);
OUT1(12)<=S7(5);
OUT1(13)<=S7(6);
OUT1(14)<=S7(7);
OUT1(15)<=C7(7);


 
 p <= out1;
 




 
end Behavioral;