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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplier_array is
 Port ( A ,B : IN std_logic_vector(15 DOWNTO 0);
        P : OUT std_logic_vector(31 DOWNTO 0) );
end multiplier_array;

architecture Behavioral of multiplier_array is
signal C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15: std_logic_vector(15 DOWNTO 0);
signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15:	 std_logic_vector(15 downto 0);
signal AB1,AB2,AB3,AB4,AB5,AB6,AB7,AB8,AB9,AB10,AB11,AB12,AB13,AB14,AB15,AB16:std_logic_vector(15 downto 0);
component full_adder port(AF,BF,CI : IN std_logic;
                          SF,CF :OUT std_logic);
 END component;
 COMPONENT half_adder port (AH,BH :IN std_logic;
                            SH, CH :out std_logic);
                            end component  ;                  
begin


AB1(0)<=A(0)AND B(0);
AB1(1)<=A(1)AND B(0);
AB1(2)<=A(2)AND B(0);
AB1(3)<=A(3)AND B(0);
AB1(4)<=A(4)AND B(0);
AB1(5)<=A(5)AND B(0);
AB1(6)<=A(6)AND B(0);
AB1(7)<=A(7)AND B(0);
AB1(8)<=A(8)AND B(0);
AB1(9)<=A(9)AND B(0);
AB1(10)<=A(10)AND B(0);
AB1(11)<=A(11)AND B(0);
AB1(12)<=A(12)AND B(0);
AB1(13)<=A(13)AND B(0);
AB1(14)<=A(14)AND B(0);
AB1(15)<=A(15)AND B(0);
----
AB2(0)<=A(0)AND B(1);
AB2(1)<=A(1)AND B(1);
AB2(2)<=A(2)AND B(1);
AB2(3)<=A(3)AND B(1);
AB2(4)<=A(4)AND B(1);
AB2(5)<=A(5)AND B(1);
AB2(6)<=A(6)AND B(1);
AB2(7)<=A(7)AND B(1);
AB2(8)<=A(8)AND B(1);
AB2(9)<=A(9)AND B(1);
AB2(10)<=A(10)AND B(1);
AB2(11)<=A(11)AND B(1);
AB2(12)<=A(12)AND B(1);
AB2(13)<=A(13)AND B(1);
AB2(14)<=A(14)AND B(1);
AB2(15)<=A(15)AND B(1);


-----
AB3(0)<=A(0)AND B(2);
AB3(1)<=A(1)AND B(2);
AB3(2)<=A(2)AND B(2);
AB3(3)<=A(3)AND B(2);
AB3(4)<=A(4)AND B(2);
AB3(5)<=A(5)AND B(2);
AB3(6)<=A(6)AND B(2);
AB3(7)<=A(7)AND B(2);
AB3(8)<=A(8)AND B(2);
AB3(9)<=A(9)AND B(2);
AB3(10)<=A(10)AND B(2);
AB3(11)<=A(11)AND B(2);
AB3(12)<=A(12)AND B(2);
AB3(13)<=A(13)AND B(2);
AB3(14)<=A(14)AND B(2);
AB3(15)<=A(15)AND B(2);

----
AB4(0)<=A(0)AND B(3);
AB4(1)<=A(1)AND B(3);
AB4(2)<=A(2)AND B(3);
AB4(3)<=A(3)AND B(3);
AB4(4)<=A(4)AND B(3);
AB4(5)<=A(5)AND B(3);
AB4(6)<=A(6)AND B(3);
AB4(7)<=A(7)AND B(3);
AB4(8)<=A(8)AND B(3);
AB4(9)<=A(9)AND B(3);
AB4(10)<=A(10)AND B(3);
AB4(11)<=A(11)AND B(3);
AB4(12)<=A(12)AND B(3);
AB4(13)<=A(13)AND B(3);
AB4(14)<=A(14)AND B(3);
AB4(15)<=A(15)AND B(3);

---
AB5(0)<=A(0)AND B(4);
AB5(1)<=A(1)AND B(4);
AB5(2)<=A(2)AND B(4);
AB5(3)<=A(3)AND B(4);
AB5(4)<=A(4)AND B(4);
AB5(5)<=A(5)AND B(4);
AB5(6)<=A(6)AND B(4);
AB5(7)<=A(7)AND B(4);
AB5(8)<=A(8)AND B(4);
AB5(9)<=A(9)AND B(4);
AB5(10)<=A(10)AND B(4);
AB5(11)<=A(11)AND B(4);
AB5(12)<=A(12)AND B(4);
AB5(13)<=A(13)AND B(4);
AB5(14)<=A(14)AND B(4);
AB5(15)<=A(15)AND B(4);

----
AB6(0)<=A(0)AND B(5);
AB6(1)<=A(1)AND B(5);
AB6(2)<=A(2)AND B(5);
AB6(3)<=A(3)AND B(5);
AB6(4)<=A(4)AND B(5);
AB6(5)<=A(5)AND B(5);
AB6(6)<=A(6)AND B(5);
AB6(7)<=A(7)AND B(5);
AB6(8)<=A(8)AND B(5);
AB6(9)<=A(9)AND B(5);
AB6(10)<=A(10)AND B(5);
AB6(11)<=A(11)AND B(5);
AB6(12)<=A(12)AND B(5);
AB6(13)<=A(13)AND B(5);
AB6(14)<=A(14)AND B(5);
AB6(15)<=A(15)AND B(5);


----
AB7(0)<=A(0)AND B(6);
AB7(1)<=A(1)AND B(6);
AB7(2)<=A(2)AND B(6);
AB7(3)<=A(3)AND B(6);
AB7(4)<=A(4)AND B(6);
AB7(5)<=A(5)AND B(6);
AB7(6)<=A(6)AND B(6);
AB7(7)<=A(7)AND B(6);
AB7(8)<=A(8)AND B(6);
AB7(9)<=A(9)AND B(6);
AB7(10)<=A(10)AND B(6);
AB7(11)<=A(11)AND B(6);
AB7(12)<=A(12)AND B(6);
AB7(13)<=A(13)AND B(6);
AB7(14)<=A(14)AND B(6);
AB7(15)<=A(15)AND B(6);




--
AB8(0)<=A(0)AND B(7);
AB8(1)<=A(1)AND B(7);
AB8(2)<=A(2)AND B(7);
AB8(3)<=A(3)AND B(7);
AB8(4)<=A(4)AND B(7);
AB8(5)<=A(5)AND B(7);
AB8(6)<=A(6)AND B(7);
AB8(7)<=A(7)AND B(7);
AB8(8)<=A(8)AND B(7);
AB8(9)<=A(9)AND B(7);
AB8(10)<=A(10)AND B(7);
AB8(11)<=A(11)AND B(7);
AB8(12)<=A(12)AND B(7);
AB8(13)<=A(13)AND B(7);
AB8(14)<=A(14)AND B(7);
AB8(15)<=A(15)AND B(7);

--
AB9(0)<=A(0)AND B(8);
AB9(1)<=A(1)AND B(8);
AB9(2)<=A(2)AND B(8);
AB9(3)<=A(3)AND B(8);
AB9(4)<=A(4)AND B(8);
AB9(5)<=A(5)AND B(8);
AB9(6)<=A(6)AND B(8);
AB9(7)<=A(7)AND B(8);
AB9(8)<=A(8)AND B(8);
AB9(9)<=A(9)AND B(8);
AB9(10)<=A(10)AND B(8);
AB9(11)<=A(11)AND B(8);
AB9(12)<=A(12)AND B(8);
AB9(13)<=A(13)AND B(8);
AB9(14)<=A(14)AND B(8);
AB9(15)<=A(15)AND B(8);


--
AB10(0)<=A(0)AND B(9);
AB10(1)<=A(1)AND B(9);
AB10(2)<=A(2)AND B(9);
AB10(3)<=A(3)AND B(9);
AB10(4)<=A(4)AND B(9);
AB10(5)<=A(5)AND B(9);
AB10(6)<=A(6)AND B(9);
AB10(7)<=A(7)AND B(9);
AB10(8)<=A(8)AND B(9);
AB10(9)<=A(9)AND B(9);
AB10(10)<=A(10)AND B(9);
AB10(11)<=A(11)AND B(9);
AB10(12)<=A(12)AND B(9);
AB10(13)<=A(13)AND B(9);
AB10(14)<=A(14)AND B(9);
AB10(15)<=A(15)AND B(9);

--
AB11(0)<=A(0)AND B(10);
AB11(1)<=A(1)AND B(10);
AB11(2)<=A(2)AND B(10);
AB11(3)<=A(3)AND B(10);
AB11(4)<=A(4)AND B(10);
AB11(5)<=A(5)AND B(10);
AB11(6)<=A(6)AND B(10);
AB11(7)<=A(7)AND B(10);
AB11(8)<=A(8)AND B(10);
AB11(9)<=A(9)AND B(10);
AB11(10)<=A(10)AND B(10);
AB11(11)<=A(11)AND B(10);
AB11(12)<=A(12)AND B(10);
AB11(13)<=A(13)AND B(10);
AB11(14)<=A(14)AND B(10);
AB11(15)<=A(15)AND B(10);

--
AB12(0)<=A(0)AND B(11);
AB12(1)<=A(1)AND B(11);
AB12(2)<=A(2)AND B(11);
AB12(3)<=A(3)AND B(11);
AB12(4)<=A(4)AND B(11);
AB12(5)<=A(5)AND B(11);
AB12(6)<=A(6)AND B(11);
AB12(7)<=A(7)AND B(11);
AB12(8)<=A(8)AND B(11);
AB12(9)<=A(9)AND B(11);
AB12(10)<=A(10)AND B(11);
AB12(11)<=A(11)AND B(11);
AB12(12)<=A(12)AND B(11);
AB12(13)<=A(13)AND B(11);
AB12(14)<=A(14)AND B(11);
AB12(15)<=A(15)AND B(11);

--
AB13(0)<=A(0)AND B(12);
AB13(1)<=A(1)AND B(12);
AB13(2)<=A(2)AND B(12);
AB13(3)<=A(3)AND B(12);
AB13(4)<=A(4)AND B(12);
AB13(5)<=A(5)AND B(12);
AB13(6)<=A(6)AND B(12);
AB13(7)<=A(7)AND B(12);
AB13(8)<=A(8)AND B(12);
AB13(9)<=A(9)AND B(12);
AB13(10)<=A(10)AND B(12);
AB13(11)<=A(11)AND B(12);
AB13(12)<=A(12)AND B(12);
AB13(13)<=A(13)AND B(12);
AB13(14)<=A(14)AND B(12);
AB13(15)<=A(15)AND B(12);

--
AB14(0)<=A(0)AND B(13);
AB14(1)<=A(1)AND B(13);
AB14(2)<=A(2)AND B(13);
AB14(3)<=A(3)AND B(13);
AB14(4)<=A(4)AND B(13);
AB14(5)<=A(5)AND B(13);
AB14(6)<=A(6)AND B(13);
AB14(7)<=A(7)AND B(13);
AB14(8)<=A(8)AND B(13);
AB14(9)<=A(9)AND B(13);
AB14(10)<=A(10)AND B(13);
AB14(11)<=A(11)AND B(13);
AB14(12)<=A(12)AND B(13);
AB14(13)<=A(13)AND B(13);
AB14(14)<=A(14)AND B(13);
AB14(15)<=A(15)AND B(13);

--
AB15(0)<=A(0)AND B(14);
AB15(1)<=A(1)AND B(14);
AB15(2)<=A(2)AND B(14);
AB15(3)<=A(3)AND B(14);
AB15(4)<=A(4)AND B(14);
AB15(5)<=A(5)AND B(14);
AB15(6)<=A(6)AND B(14);
AB15(7)<=A(7)AND B(14);
AB15(8)<=A(8)AND B(14);
AB15(9)<=A(9)AND B(14);
AB15(10)<=A(10)AND B(14);
AB15(11)<=A(11)AND B(14);
AB15(12)<=A(12)AND B(14);
AB15(13)<=A(13)AND B(14);
AB15(14)<=A(14)AND B(14);
AB15(15)<=A(15)AND B(14);

--
AB16(0)<=A(0)AND B(15);
AB16(1)<=A(1)AND B(15);
AB16(2)<=A(2)AND B(15);
AB16(3)<=A(3)AND B(15);
AB16(4)<=A(4)AND B(15);
AB16(5)<=A(5)AND B(15);
AB16(6)<=A(6)AND B(15);
AB16(7)<=A(7)AND B(15);
AB16(8)<=A(8)AND B(15);
AB16(9)<=A(9)AND B(15);
AB16(10)<=A(10)AND B(15);
AB16(11)<=A(11)AND B(15);
AB16(12)<=A(12)AND B(15);
AB16(13)<=A(13)AND B(15);
AB16(14)<=A(14)AND B(15);
AB16(15)<=A(15)AND B(15); 




FA1 :full_adder port map (AB1(2),AB2(1),C1(0),S1(1),C1(1));
FA2 :full_adder port map (AB1(3),AB2(2),C1(1),S1(2),C1(2));
FA3 :full_adder port map (AB1(4),AB2(3),C1(2),S1(3),C1(3));
FA4 :full_adder port map (AB1(5),AB2(4),C1(3),S1(4),C1(4));
FA5 :full_adder port map (AB1(6),AB2(5),C1(4),S1(5),C1(5));
FA6 :full_adder port map (AB1(7),AB2(6),C1(5),S1(6),C1(6));
FA7 :full_adder port map (AB1(8),AB2(7),C1(6),S1(7),C1(7));
FA8 :full_adder port map (AB1(9),AB2(8),C1(7),S1(8),C1(8));
FA9 :full_adder port map (AB1(10),AB2(9),C1(8),S1(9),C1(9));
FA10 :full_adder port map (AB1(11),AB2(10),C1(9),S1(10),C1(10));
FA11 :full_adder port map (AB1(12),AB2(11),C1(10),S1(11),C1(11));
FA12 :full_adder port map (AB1(13),AB2(12),C1(11),S1(12),C1(12));
FA13 :full_adder port map (AB1(14),AB2(13),C1(12),S1(13),C1(13));
FA14 :full_adder port map (AB1(15),AB2(14),C1(13),S1(14),C1(14));

---------------------------------------

FA15 :full_adder port map (AB3(1),S1(2),C2(0),S2(1),C2(1));
FA16 :full_adder port map (AB3(2),S1(3),C2(1),S2(2),C2(2));
FA17:full_adder port map (AB3(3),S1(4),C2(2),S2(3),C2(3));
FA18:full_adder port map (AB3(4),S1(5),C2(3),S2(4),C2(4));
FA19:full_adder port map (AB3(5),S1(6),C2(4),S2(5),C2(5));
FA20:full_adder port map (AB3(6),S1(7),C2(5),S2(6),C2(6));
FA21:full_adder port map (AB3(7),S1(8),C2(6),S2(7),C2(7));
FA22:full_adder port map (AB3(8),S1(9),C2(7),S2(8),C2(8));
FA23:full_adder port map (AB3(9),S1(10),C2(8),S2(9),C2(9));
FA24:full_adder port map (AB3(10),S1(11),C2(9),S2(10),C2(10));
FA25:full_adder port map (AB3(11),S1(12),C2(10),S2(11),C2(11));
FA26:full_adder port map (AB3(12),S1(13),C2(11),S2(12),C2(12));
FA27:full_adder port map (AB3(13),S1(14),C2(12),S2(13),C2(13));
FA28:full_adder port map (AB3(14),S1(15),C2(13),S2(14),C2(14));
FA29:full_adder port map (AB3(15),C2(14),C1(15),S2(15),C2(15));

------------------------------------------


FA30 :full_adder port map (AB4(1),S2(2),C3(0),S3(1),C3(1));
FA31 :full_adder port map (AB4(2),S2(3),C3(1),S3(2),C3(2));
FA32:full_adder port map (AB4(3),S2(4),C3(2),S3(3),C3(3));
FA33:full_adder port map (AB4(4),S2(5),C3(3),S3(4),C3(4));
FA34:full_adder port map (AB4(5),S2(6),C3(4),S3(5),C3(5));
FA35:full_adder port map (AB4(6),S2(7),C3(5),S3(6),C3(6));
FA36:full_adder port map (AB4(7),S2(8),C3(6),S3(7),C3(7));
FA37:full_adder port map (AB4(8),S2(9),C3(7),S3(8),C3(8));
FA38:full_adder port map (AB4(9),S2(10),C3(8),S3(9),C3(9));
FA39:full_adder port map (AB4(10),S2(11),C3(9),S3(10),C3(10));
FA40:full_adder port map (AB4(11),S2(12),C3(10),S3(11),C3(11));
FA41:full_adder port map (AB4(12),S2(13),C3(11),S3(12),C3(12));
FA42:full_adder port map (AB4(13),S2(14),C3(12),S3(13),C3(13));
FA43:full_adder port map (AB4(14),S2(15),C3(13),S3(14),C3(14));
FA44:full_adder port map (AB4(15),C3(14),C2(15),S3(15),C3(15));



--------------------------------------------

FA45 :full_adder port map (AB5(1),S3(2),C4(0),S4(1),C4(1));
FA46 :full_adder port map (AB5(2),S3(3),C4(1),S4(2),C4(2));
FA47:full_adder port map (AB5(3),S3(4),C4(2),S4(3),C4(3));
FA48:full_adder port map (AB5(4),S3(5),C4(3),S4(4),C4(4));
FA49:full_adder port map (AB5(5),S3(6),C4(4),S4(5),C4(5));
FA50:full_adder port map (AB5(6),S3(7),C4(5),S4(6),C4(6));
FA51:full_adder port map (AB5(7),S3(8),C4(6),S4(7),C4(7));
FA52:full_adder port map (AB5(8),S3(9),C4(7),S4(8),C4(8));
FA53:full_adder port map (AB5(9),S3(10),C4(8),S4(9),C4(9));
FA54:full_adder port map (AB5(10),S3(11),C4(9),S4(10),C4(10));
FA55:full_adder port map (AB5(11),S3(12),C4(10),S4(11),C4(11));
FA56:full_adder port map (AB5(12),S3(13),C4(11),S4(12),C4(12));
FA57:full_adder port map (AB5(13),S3(14),C4(12),S4(13),C4(13));
FA58:full_adder port map (AB5(14),S3(15),C4(13),S4(14),C4(14));
FA59:full_adder port map (AB5(15),C4(14),C3(15),S4(15),C4(15));


----------------------------------------------

FA60 :full_adder port map (AB6(1),S4(2),C5(0),S5(1),C5(1));
FA61 :full_adder port map (AB6(2),S4(3),C5(1),S5(2),C5(2));
FA62:full_adder port map (AB6(3),S4(4),C5(2),S5(3),C5(3));
FA63:full_adder port map (AB6(4),S4(5),C5(3),S5(4),C5(4));
FA64:full_adder port map (AB6(5),S4(6),C5(4),S5(5),C5(5));
FA65:full_adder port map (AB6(6),S4(7),C5(5),S5(6),C5(6));
FA66:full_adder port map (AB6(7),S4(8),C5(6),S5(7),C5(7));
FA67:full_adder port map (AB6(8),S4(9),C5(7),S5(8),C5(8));
FA68:full_adder port map (AB6(9),S4(10),C5(8),S5(9),C5(9));
FA69:full_adder port map (AB6(10),S4(11),C5(9),S5(10),C5(10));
FA70:full_adder port map (AB6(11),S4(12),C5(10),S5(11),C5(11));
FA71:full_adder port map (AB6(12),S4(13),C5(11),S5(12),C5(12));
FA72:full_adder port map (AB6(13),S4(14),C5(12),S5(13),C5(13));
FA73:full_adder port map (AB6(14),S4(15),C5(13),S5(14),C5(14));
FA74:full_adder port map (AB6(15),C5(14),C4(15),S5(15),C5(15));


----------------------------------------------------

FA75 :full_adder port map (AB7(1),S5(2),C6(0),S6(1),C6(1));
FA76 :full_adder port map (AB7(2),S5(3),C6(1),S6(2),C6(2));
FA77:full_adder port map (AB7(3),S5(4),C6(2),S6(3),C6(3));
FA78:full_adder port map (AB7(4),S5(5),C6(3),S6(4),C6(4));
FA79:full_adder port map (AB7(5),S5(6),C6(4),S6(5),C6(5));
FA80:full_adder port map (AB7(6),S5(7),C6(5),S6(6),C6(6));
FA81:full_adder port map (AB7(7),S5(8),C6(6),S6(7),C6(7));
FA82:full_adder port map (AB7(8),S5(9),C6(7),S6(8),C6(8));
FA83:full_adder port map (AB7(9),S5(10),C6(8),S6(9),C6(9));
FA84:full_adder port map (AB7(10),S5(11),C6(9),S6(10),C6(10));
FA85:full_adder port map (AB7(11),S5(12),C6(10),S6(11),C6(11));
FA86:full_adder port map (AB7(12),S5(13),C6(11),S6(12),C6(12));
FA87:full_adder port map (AB7(13),S5(14),C6(12),S6(13),C6(13));
FA88:full_adder port map (AB7(14),S5(15),C6(13),S6(14),C6(14));
FA89:full_adder port map (AB7(15),C6(14),C5(15),S6(15),C6(15));

----------------------------------------------------------

FA90 :full_adder port map (AB8(1),S6(2),C7(0),S7(1),C7(1));
FA91 :full_adder port map (AB8(2),S6(3),C7(1),S7(2),C7(2));
FA92:full_adder port map (AB8(3),S6(4),C7(2),S7(3),C7(3));
FA93:full_adder port map (AB8(4),S6(5),C7(3),S7(4),C7(4));
FA94:full_adder port map (AB8(5),S6(6),C7(4),S7(5),C7(5));
FA95:full_adder port map (AB8(6),S6(7),C7(5),S7(6),C7(6));
FA96:full_adder port map (AB8(7),S6(8),C7(6),S7(7),C7(7));
FA97:full_adder port map (AB8(8),S6(9),C7(7),S7(8),C7(8));
FA98:full_adder port map (AB8(9),S6(10),C7(8),S7(9),C7(9));
FA99:full_adder port map (AB8(10),S6(11),C7(9),S7(10),C7(10));
FA100:full_adder port map (AB8(11),S6(12),C7(10),S7(11),C7(11));
FA101:full_adder port map (AB8(12),S6(13),C7(11),S7(12),C7(12));
FA102:full_adder port map (AB8(13),S6(14),C7(12),S7(13),C7(13));
FA103:full_adder port map (AB8(14),S6(15),C7(13),S7(14),C7(14));
FA104:full_adder port map (AB8(15),C7(14),C6(15),S7(15),C7(15));


-----------------------------------------------

FA105 :full_adder port map (AB9(1),S7(2),C8(0),S8(1),C8(1));
FA106 :full_adder port map (AB9(2),S7(3),C8(1),S8(2),C8(2));
FA107:full_adder port map (AB9(3),S7(4),C8(2),S8(3),C8(3));
FA108:full_adder port map (AB9(4),S7(5),C8(3),S8(4),C8(4));
FA109:full_adder port map (AB9(5),S7(6),C8(4),S8(5),C8(5));
FA110:full_adder port map (AB9(6),S7(7),C8(5),S8(6),C8(6));
FA111:full_adder port map (AB9(7),S7(8),C8(6),S8(7),C8(7));
FA112:full_adder port map (AB9(8),S7(9),C8(7),S8(8),C8(8));
FA113:full_adder port map (AB9(9),S7(10),C8(8),S8(9),C8(9));
FA114:full_adder port map (AB9(10),S7(11),C8(9),S8(10),C8(10));
FA115:full_adder port map (AB9(11),S7(12),C8(10),S8(11),C8(11));
FA116:full_adder port map (AB9(12),S7(13),C8(11),S8(12),C8(12));
FA117:full_adder port map (AB9(13),S7(14),C8(12),S8(13),C8(13));
FA118:full_adder port map (AB9(14),S7(15),C8(13),S8(14),C8(14));
FA119:full_adder port map (AB9(15),C8(14),C7(15),S8(15),C8(15));


-------------------------------------------------

FA120 :full_adder port map (AB10(1),S8(2),C9(0),S9(1),C9(1));
FA121 :full_adder port map (AB10(2),S8(3),C9(1),S9(2),C9(2));
FA122:full_adder port map (AB10(3),S8(4),C9(2),S9(3),C9(3));
FA123:full_adder port map (AB10(4),S8(5),C9(3),S9(4),C9(4));
FA124:full_adder port map (AB10(5),S8(6),C9(4),S9(5),C9(5));
FA125:full_adder port map (AB10(6),S8(7),C9(5),S9(6),C9(6));
FA126:full_adder port map (AB10(7),S8(8),C9(6),S9(7),C9(7));
FA127:full_adder port map (AB10(8),S8(9),C9(7),S9(8),C9(8));
FA128:full_adder port map (AB10(9),S8(10),C9(8),S9(9),C9(9));
FA129:full_adder port map (AB10(10),S8(11),C9(9),S9(10),C9(10));
FA130:full_adder port map (AB10(11),S8(12),C9(10),S9(11),C9(11));
FA131:full_adder port map (AB10(12),S8(13),C9(11),S9(12),C9(12));
FA132:full_adder port map (AB10(13),S8(14),C9(12),S9(13),C9(13));
FA133:full_adder port map (AB10(14),S8(15),C9(13),S9(14),C9(14));
FA134:full_adder port map (AB10(15),C9(14),C8(15),S9(15),C9(15));



----------------------------------------------------


FA135 :full_adder port map (AB11(1),S9(2),C10(0),S10(1),C10(1));
FA136 :full_adder port map (AB11(2),S9(3),C10(1),S10(2),C10(2));
FA137:full_adder port map (AB11(3),S9(4),C10(2),S10(3),C10(3));
FA138:full_adder port map (AB11(4),S9(5),C10(3),S10(4),C10(4));
FA139:full_adder port map (AB11(5),S9(6),C10(4),S10(5),C10(5));
FA140:full_adder port map (AB11(6),S9(7),C10(5),S10(6),C10(6));
FA141:full_adder port map (AB11(7),S9(8),C10(6),S10(7),C10(7));
FA142:full_adder port map (AB11(8),S9(9),C10(7),S10(8),C10(8));
FA143:full_adder port map (AB11(9),S9(10),C10(8),S10(9),C10(9));
FA144:full_adder port map (AB11(10),S9(11),C10(9),S10(10),C10(10));
FA145:full_adder port map (AB11(11),S9(12),C10(10),S10(11),C10(11));
FA146:full_adder port map (AB11(12),S9(13),C10(11),S10(12),C10(12));
FA147:full_adder port map (AB11(13),S9(14),C10(12),S10(13),C10(13));
FA148:full_adder port map (AB11(14),S9(15),C10(13),S10(14),C10(14));
FA149:full_adder port map (AB11(15),C10(14),C9(15),S10(15),C10(15));


-----------------------------------------------------

FA150 :full_adder port map (AB12(1),S10(2),C11(0),S11(1),C11(1));
FA151 :full_adder port map (AB12(2),S10(3),C11(1),S11(2),C11(2));
FA152:full_adder port map (AB12(3),S10(4),C11(2),S11(3),C11(3));
FA153:full_adder port map (AB12(4),S10(5),C11(3),S11(4),C11(4));
FA154:full_adder port map (AB12(5),S10(6),C11(4),S11(5),C11(5));
FA155:full_adder port map (AB12(6),S10(7),C11(5),S11(6),C11(6));
FA156:full_adder port map (AB12(7),S10(8),C11(6),S11(7),C11(7));
FA157:full_adder port map (AB12(8),S10(9),C11(7),S11(8),C11(8));
FA158:full_adder port map (AB12(9),S10(10),C11(8),S11(9),C11(9));
FA159:full_adder port map (AB12(10),S10(11),C11(9),S11(10),C11(10));
FA160:full_adder port map (AB12(11),S10(12),C11(10),S11(11),C11(11));
FA161:full_adder port map (AB12(12),S10(13),C11(11),S11(12),C11(12));
FA162:full_adder port map (AB12(13),S10(14),C11(12),S11(13),C11(13));
FA163:full_adder port map (AB12(14),S10(15),C11(13),S11(14),C11(14));
FA164:full_adder port map (AB12(15),C11(14),C10(15),S11(15),C11(15));


------------------------------------------------------


FA165 :full_adder port map (AB13(1),S11(2),C12(0),S12(1),C12(1));
FA166 :full_adder port map (AB13(2),S11(3),C12(1),S12(2),C12(2));
FA167:full_adder port map (AB13(3),S11(4),C12(2),S12(3),C12(3));
FA168:full_adder port map (AB13(4),S11(5),C12(3),S12(4),C12(4));
FA169:full_adder port map (AB13(5),S11(6),C12(4),S12(5),C12(5));
FA170:full_adder port map (AB13(6),S11(7),C12(5),S12(6),C12(6));
FA171:full_adder port map (AB13(7),S11(8),C12(6),S12(7),C12(7));
FA172:full_adder port map (AB13(8),S11(9),C12(7),S12(8),C12(8));
FA173:full_adder port map (AB13(9),S11(10),C12(8),S12(9),C12(9));
FA174:full_adder port map (AB13(10),S11(11),C12(9),S12(10),C12(10));
FA175:full_adder port map (AB13(11),S11(12),C12(10),S12(11),C12(11));
FA176:full_adder port map (AB13(12),S11(13),C12(11),S12(12),C12(12));
FA177:full_adder port map (AB13(13),S11(14),C12(12),S12(13),C12(13));
FA178:full_adder port map (AB13(14),S11(15),C12(13),S12(14),C12(14));
FA179:full_adder port map (AB13(15),C12(14),C11(15),S12(15),C12(15));


------------------------------------------------


FA180 :full_adder port map (AB14(1),S12(2),C13(0),S13(1),C13(1));
FA181 :full_adder port map (AB14(2),S12(3),C13(1),S13(2),C13(2));
FA182:full_adder port map (AB14(3),S12(4),C13(2),S13(3),C13(3));
FA183:full_adder port map (AB14(4),S12(5),C13(3),S13(4),C13(4));
FA184:full_adder port map (AB14(5),S12(6),C13(4),S13(5),C13(5));
FA185:full_adder port map (AB14(6),S12(7),C13(5),S13(6),C13(6));
FA186:full_adder port map (AB14(7),S12(8),C13(6),S13(7),C13(7));
FA187:full_adder port map (AB14(8),S12(9),C13(7),S13(8),C13(8));
FA188:full_adder port map (AB14(9),S12(10),C13(8),S13(9),C13(9));
FA189:full_adder port map (AB14(10),S12(11),C13(9),S13(10),C13(10));
FA190:full_adder port map (AB14(11),S12(12),C13(10),S13(11),C13(11));
FA191:full_adder port map (AB14(12),S12(13),C13(11),S13(12),C13(12));
FA192:full_adder port map (AB14(13),S12(14),C13(12),S13(13),C13(13));
FA193:full_adder port map (AB14(14),S12(15),C13(13),S13(14),C13(14));
FA194:full_adder port map (AB14(15),C13(14),C12(15),S13(15),C13(15));

--------------------------------------------------

FA195 :full_adder port map (AB15(1),S13(2),C14(0),S14(1),C14(1));
FA196 :full_adder port map (AB15(2),S13(3),C14(1),S14(2),C14(2));
FA197:full_adder port map (AB15(3),S13(4),C14(2),S14(3),C14(3));
FA198:full_adder port map (AB15(4),S13(5),C14(3),S14(4),C14(4));
FA199:full_adder port map (AB15(5),S13(6),C14(4),S14(5),C14(5));
FA200:full_adder port map (AB15(6),S13(7),C14(5),S14(6),C14(6));
FA201:full_adder port map (AB15(7),S13(8),C14(6),S14(7),C14(7));
FA202:full_adder port map (AB15(8),S13(9),C14(7),S14(8),C14(8));
FA203:full_adder port map (AB15(9),S13(10),C14(8),S14(9),C14(9));
FA204:full_adder port map (AB15(10),S13(11),C14(9),S14(10),C14(10));
FA205:full_adder port map (AB15(11),S13(12),C14(10),S14(11),C14(11));
FA206:full_adder port map (AB15(12),S13(13),C14(11),S14(12),C14(12));
FA207:full_adder port map (AB15(13),S13(14),C14(12),S14(13),C14(13));
FA208:full_adder port map (AB15(14),S13(15),C14(13),S14(14),C14(14));
FA209:full_adder port map (AB15(15),C14(14),C13(15),S14(15),C14(15));

-----------------------------------------------------


FA210 :full_adder port map (AB16(1),S14(2),C15(0),S15(1),C15(1));
FA211 :full_adder port map (AB16(2),S14(3),C15(1),S15(2),C15(2));
FA212:full_adder port map (AB16(3),S14(4),C15(2),S15(3),C15(3));
FA213:full_adder port map (AB16(4),S14(5),C15(3),S15(4),C15(4));
FA214:full_adder port map (AB16(5),S14(6),C15(4),S15(5),C15(5));
FA215:full_adder port map (AB16(6),S14(7),C15(5),S15(6),C15(6));
FA216:full_adder port map (AB16(7),S14(8),C15(6),S15(7),C15(7));
FA217:full_adder port map (AB16(8),S14(9),C15(7),S15(8),C15(8));
FA218:full_adder port map (AB16(9),S14(10),C15(8),S15(9),C15(9));
FA219:full_adder port map (AB16(10),S14(11),C15(9),S15(10),C15(10));
FA220:full_adder port map (AB16(11),S14(12),C15(10),S15(11),C15(11));
FA221:full_adder port map (AB16(12),S14(13),C15(11),S15(12),C15(12));
FA222:full_adder port map (AB16(13),S14(14),C15(12),S15(13),C15(13));
FA223:full_adder port map (AB16(14),S14(15),C15(13),S15(14),C15(14));
FA224:full_adder port map (AB16(15),C15(14),C14(15),S15(15),C15(15));



------------------------------------
  
  HA1: half_adder port map (AB1(1),AB2(0),S1(0),C1(0));
  HA16 :half_adder port map (AB2(15),C1(14),S1(15),C1(15));
  HA2: half_adder port map (AB3(0),S1(1),S2(0),C2(0));
  HA3: half_adder port map (AB4(0),S2(1),S3(0),C3(0));
  HA4: half_adder PORT MAP (AB5(0),S3(1),S4(0),C4(0));
  HA5: half_adder PORT MAP (AB6(0),S4(1),S5(0),C5(0));
  HA6: half_adder PORT MAP (AB7(0),S5(1),S6(0),C6(0));
  HA7: half_adder PORT MAP (AB8(0),S6(1),S7(0),C7(0));
  HA8: half_adder PORT MAP (AB9(0),S7(1),S8(0),C8(0));
  HA9: half_adder PORT MAP (AB10(0),S8(1),S9(0),C9(0));
  HA10: half_adder PORT MAP (AB11(0),S9(1),S10(0),C10(0));
  HA11: half_adder PORT MAP (AB12(0),S10(1),S11(0),C11(0));
  HA12: half_adder PORT MAP (AB13(0),S11(1),S12(0),C12(0));
  HA13: half_adder PORT MAP (AB14(0),S12(1),S13(0),C13(0));
  HA14: half_adder PORT MAP (AB15(0),S13(1),S14(0),C14(0));
  HA15: half_adder PORT MAP (AB16(0),S14(1),S15(0),C15(0));


------------------------------
P(0)<=AB1(0);
P(1)<=S1(0);
P(2)<=S2(0);
P(3)<=S3(0);
P(4)<=S4(0);
P(5)<=S5(0);
P(6)<=S6(0);
P(7)<=S7(0);
P(8)<=S8(0);
P(9)<=S9(0);
P(10)<=S10(0);
P(11)<=S11(0);
P(12)<=S12(0);
P(13)<=S13(0);
P(14)<=S14(0);
P(15)<=S15(0);
P(16)<=S15(1);
P(17)<=S15(2);
P(18)<=S15(3);
P(19)<=S15(4);
P(20)<=S15(5);
P(21)<=S15(6);
P(22)<=S15(7);
P(23)<=S15(8);
P(24)<=S15(9);
P(25)<=S15(10);
P(26)<=S15(11);
P(27)<=S15(12);
P(28)<=S15(13);
P(29)<=S15(14);
P(30)<=S15(15);
P(31)<=C15(15);








end Behavioral;
