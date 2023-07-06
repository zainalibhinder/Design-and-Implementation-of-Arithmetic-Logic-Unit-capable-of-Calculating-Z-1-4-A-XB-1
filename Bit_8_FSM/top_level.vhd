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
       clr1,clk1: in std_logic;
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
        dout : OUT std_logic_vector (15 downto 0)
        
       );
 end component;

type states is (idle,load_val,mul,div,incr,result,raise_flag);
signal state_reg, state_next :states;

 signal ra,rb: std_logic_vector(7 downto 0);
 signal s1,s1_out: std_logic_vector(15 downto 0);
 
 signal s2,s3,s2_out,s3_out: std_logic_vector(15 downto 0);
signal ra_out,rb_out: std_logic_vector(7 downto 0);
signal z_out :std_logic_vector(15 downto 0);
signal mula,mulb :std_logic_vector(7 downto 0);
signal diva :std_logic_vector(15 downto 0);
signal incra :std_logic_vector(15 downto 0);
signal rc,rc_out : std_logic_vector(15 downto 0);
 begin
 registerA : reg port map (ra, clr, clk,  ra_out);
 registerB : reg port map (rb, clr, clk,  rb_out);
 mul_array_1 : multiplier_array port map(mula, mulb, s1);
 shift_right : shifter port map(diva, s2);
 incrementer : adder port map(incra,s3);
 regZ : reg2 port map(rc,clr,clk,rc_out);
  







process (clk, clr)
begin
if (clr = '1') then
state_reg <= idle;
elsif (clk'event and clk = '1') then
state_reg <= state_next;
end if;
end process;
 
process (state_reg, load)
begin
case state_reg is 
when idle => 
	if load = '1' then 
		state_next <= load_val;
	else
		state_next <= idle;
	end if;
when load_val =>
		state_next <= mul;
when mul =>
		state_next <= div;


	when div => 
	state_next <= incr;

	when incr => 
	state_next <= result;
	when result => 
	state_next <= raise_flag;
	when raise_flag => 
	if (load = '1') then
		state_next <= load_val;
	else
	state_next <= idle;
	end if;
end case;
end process;

process (state_next)
begin
	mula <= (others => '0');
	mulb <= (others => '0');
	diva <= (others => '0');
	incra <= (others => '0');
	end_flag <= '0';
case state_next is
when idle =>
	ra <= ra_out;
	rb <= rb_out;
	rc <= (others => '0');

when load_val =>
	ra <= A;
	rb <= B;
	rc <= (others => '0');
	
when mul =>
	ra <= ra_out;
	rb <= rb_out;
	rc <= rc_out;
	
	mula <= ra_out;
	mulb <= rb_out;
 when div =>
	ra <= ra_out;
	rb <= rb_out;
	rc <= rc_out;
	
	diva <= s1;
 when incr =>
	ra <= ra_out;
	rb <= rb_out;
	rc <= rc_out;
	
	incra <= s2;
 when result =>
		ra <= ra_out;
		rb <= rb_out;
		end_flag <= '1';
		rc <= s3;
 when raise_flag => 
		end_flag <= '1';



 end case;
 end process;
 
 z <= s1 when (state_reg=load_val) else s2 when (state_reg=mul) else s3 when (state_reg=div) else rc when (state_reg=incr) else 
 rc_out when (state_reg=result) else "0000000000000000";
 

end structural;