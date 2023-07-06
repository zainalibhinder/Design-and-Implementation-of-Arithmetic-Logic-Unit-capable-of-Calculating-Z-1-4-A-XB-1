library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity testbench is 
end testbench;

architecture arch of testbench is  

component arithmetic_unit is
 port(
  A,B: in std_logic_vector(7 downto 0);
  clk,clr,load: in std_logic;
  Z: out std_logic_vector(15 downto 0);
  end_flag: out std_logic
  );
end component;

constant clk_period:time:=10 ns;
signal A  : std_logic_vector(7 downto 0):="11111000";
signal B  : std_logic_vector(7 downto 0):="00001000";
signal clk : std_logic:='1';
signal clr : std_logic:='0';
signal load : std_logic:='0';
signal Z  : std_logic_vector(15 downto 0);
signal end_flag : std_logic;

begin
  process  
    begin 
      clk<='0';
      wait for clk_period/2;
      clk<='1';
      wait for clk_period/2;
    end process;
    
  process 
    begin
      wait for 40 ns;
      clr<='0';
		--wait for 2*clk_period;
		--clr<='1';
  end process;
  
  process
    begin
      wait for 40 ns;
       A<=A + "00000010";
       B<=B + "00000010";
       load<='0';
       wait for 60 ns;
       load<='1';
  end process;
  
  dut: arithmetic_unit port map(A=>A,B=>b,clk=>clk,clr=>clr,load=>load,Z=>Z,end_flag=>end_flag);
  
end arch;  
