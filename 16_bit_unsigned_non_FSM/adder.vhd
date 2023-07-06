----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:48:34 12/03/2022 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is 
  port( 
    adder_in: IN std_logic_vector(31 downto 0);
    adder_out: OUT std_logic_vector(31 downto 0)
      );
end adder;

architecture adder_arch of adder is
 

COMPONENT half_adder port (AH,BH :IN std_logic;
                            SH, CH :out std_logic);
                            end component  ;  


signal inc1 : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
signal C1,C2,C3,C4,C5,C6,C7,c8,c9,c10,c11,c12,c13,c14,c15,c16,C17,C18,C19,C20,C21,C22,C23,c24,c25,c26,c27,c28,c29,c30,c31,c32: std_logic;
signal S1,S2,S3,S4,S5,S6,S7,s8,s9,s10,s11,s12,s13,s14,s15,s16,S17,S18,S19,S20,S21,S22,S23,s24,s25,s26,s27,s28,s29,s30,s31,s32: std_logic;


  begin
  
  HA1: half_adder port map (adder_in(0),inc1(0),S1,C1);
  HA2: half_adder port map (adder_in(1),C1,S2,C2);
  HA3: half_adder port map (adder_in(2),C2,S3,C3);
  HA4: half_adder port map (adder_in(3),C3,S4,C4);
  HA5: half_adder port map (adder_in(4),C4,S5,C5);
  HA6: half_adder port map (adder_in(5),C5,S6,C6);
  HA7: half_adder port map (adder_in(6),C6,S7,C7);
  HA8: half_adder port map (adder_in(7),C7,S8,C8);
  HA9: half_adder port map (adder_in(8),C8,S9,C9);
  HA10: half_adder port map (adder_in(9),C9,S10,C10);
  HA11: half_adder port map (adder_in(10),C10,S11,C11);
  HA12: half_adder port map (adder_in(11),C11,S12,C12);
  HA13: half_adder port map (adder_in(12),C12,S13,C13);
  HA14: half_adder port map (adder_in(13),C13,S14,C14);
  HA15: half_adder port map (adder_in(14),C14,S15,C15);
  HA16: half_adder port map (adder_in(15),C15,S16,C16);
   HA17: half_adder port map (adder_in(16),C16,S17,C17);
  HA18: half_adder port map (adder_in(17),C17,S18,C18);
  HA19: half_adder port map (adder_in(18),C18,S19,C19);
  HA20: half_adder port map (adder_in(19),C19,S20,C20);
  HA21: half_adder port map (adder_in(20),C20,S21,C21);
  HA22: half_adder port map (adder_in(21),C21,S22,C22);
  HA23: half_adder port map (adder_in(22),C22,S23,C23);
  HA24: half_adder port map (adder_in(23),C23,S24,C24);
  HA25: half_adder port map (adder_in(24),C24,S25,C25);
  HA26: half_adder port map (adder_in(25),C25,S26,C26);
  HA27: half_adder port map (adder_in(26),C26,S27,C27);
  HA28: half_adder port map (adder_in(27),C27,S28,C28);
  HA29: half_adder port map (adder_in(28),C28,S29,C29);
  HA30: half_adder port map (adder_in(29),C29,S30,C30);
  HA31: half_adder port map (adder_in(30),C30,S31,C31);
  HA32: half_adder port map (adder_in(31),C31,S32,C32);
 


 adder_out(0) <= S1;
 adder_out(1) <= S2;
 adder_out(2) <= S3;
 adder_out(3) <= S4;
 adder_out(4) <= S5;
 adder_out(5) <= S6;
 adder_out(6) <= S7;
 adder_out(7) <= S8;
 adder_out(8) <= S9;
 adder_out(9) <= S10;
 adder_out(10) <= S11;
 adder_out(11) <= S12;
 adder_out(12) <= S13;
 adder_out(13) <= S14;
 adder_out(14) <= S15;
 adder_out(15) <= S16;
  adder_out(16) <= S17;
 adder_out(17) <= S18;
 adder_out(18) <= S19;
 adder_out(19) <= S20;
 adder_out(20) <= S21;
 adder_out(21) <= S22;
 adder_out(22) <= S23;
 adder_out(23) <= S24;
 adder_out(24) <= S25;
 adder_out(25) <= S26;
 adder_out(26) <= S27;
 adder_out(27) <= S28;
 adder_out(28) <= S29;
 adder_out(29) <= S30;
 adder_out(30) <= S31;
 adder_out(31) <= S32;

   
  
end adder_arch;

