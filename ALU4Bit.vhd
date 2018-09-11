library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ALU4Bit is
port(a : in signed(3 downto 0);
	  b : in signed(3 downto 0);
	Cin : in signed(0 downto 0);
	SEL : in signed(3 downto 0);
	RES : out signed(3 downto 0));
end ALU4Bit;

architecture behave of ALU4Bit is
begin
process(SEL, a, b)
begin
case SEL is 

when "0000" => 
RES<=a;
 
when "0001" => 
RES<=a+1;
 
when "0010" => 
RES<=a-1;

when "0011" => 
RES<=b;

when "0100" => 
RES<=b+1;

when "0101" => 
RES<=b-1;

when "0110" => 
RES<=a+b;
 
when "0111" => 
RES<=(a+b)+Cin;

when "1000" => 
RES<=not a; 

when "1001" => 
RES<=not b;

when "1010" => 
RES<=a and b;

when "1011" => 
RES<=a or b;

when "1100" => 
RES<=a nand b;

when "1101" => 
RES<=a nor b;

when "1110" => 
RES<=a xor b;

when "1111" => 
RES<=a xnor b;

end case;
end process;
end behave;
