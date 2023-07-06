----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:50:15 09/29/2022 
-- Design Name: 
-- Module Name:    toplevlel - Behavioral 
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


entity arithmetic_unit is
 port(
  A,B: in std_logic_vector(7 downto 0);
  clk,clr,load: in std_logic;
  Z: out std_logic_vector(15 downto 0);
  end_flag: out std_logic
  );
end arithmetic_unit;

architecture structural of arithmetic_unit is

 component reg is
  port(data_in: in std_logic_vector(7 downto 0);
       clr1,clk1,load1: in std_logic;
       data_out: out std_logic_vector(7 downto 0)
       );
 end component;

 component multiplier_array is
  port(A,B: in std_logic_vector(7 downto 0);
       P: out std_logic_vector(15 downto 0)
       );
 end component;


 component shifter is
  port(shift_in: in std_logic_vector(15 downto 0);
       shift_out: out std_logic_vector(15 downto 0)
       );
 end component;

 component adder is
  port(adder_in: in std_logic_vector(15 downto 0);
       adder_out: out std_logic_vector(15 downto 0)
       );
 end component;
 
 component reg2 is
 Port ( din  : IN std_logic_vector (15 downto 0);
        clr1  : IN std_logic;
        clk1  : IN std_logic;
        dout : OUT std_logic_vector (15 downto 0);
        ef : OUT std_logic
       );
 end component;

 signal ra,rb: std_logic_vector(7 downto 0);
 signal s1: std_logic_vector(15 downto 0);
 signal outz: std_logic_vector(15 downto 0);
 signal s2,s3: std_logic_vector(15 downto 0);

 begin
 registerA : reg port map (A, clr, clk, load, ra);
 registerB : reg port map (B, clr, clk, load, rb);
 mul_array_1 : multiplier_array port map(ra, rb, s1);
 shift_right : shifter port map(s1, s2);
 incrementer : adder port map(s2,s3);
 regZ : reg2 port map(s3,clr,clk,z,end_flag);


		 

end structural;