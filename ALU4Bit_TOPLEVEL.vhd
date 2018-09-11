library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ALU4Bit_TOPLEVEL is 
port(SW : in signed(17 downto 0);
	LEDR : out signed(3 downto 0));
	end ALU4Bit_TOPLEVEL;
	
Architecture structure of ALU4Bit_TOPLEVEL is
component ALU4Bit is
port(a : in signed(3 downto 0);
	  b : in signed(3 downto 0);
	Cin : in signed(0 downto 0);
	SEL : in signed(3 downto 0);
	RES : out signed(3 downto 0));
end component;
begin	
m1: ALU4Bit port map(SW(3 downto 0),SW(7 downto 4),SW(8 downto 8),SW(17 downto 14), LEDR(3 downto 0));
end structure;

