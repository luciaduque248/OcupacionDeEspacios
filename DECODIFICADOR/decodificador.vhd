library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decodificador is
	Port (  	bcdA : in std_logic;
				bcdB : in std_logic;
				bcdC : in std_logic;
				bcdD : in std_logic;
				
				SEG : out std_logic_vector (6 downto 0));
end decodificador;

architecture arch_decodificador of decodificador is

	signal ABCD : std_logic_vector(3 downto 0);
	 
begin 
	ABCD <= bcdA & bcdB & bcdC & bcdD;
  
	with (ABCD) select
		SEG <= "0000001" when "0000",
				  "1001111" when "0001",
				  "0010010" when "0010",
				  "0000110" when "0011",
				  "1001100" when "0100",
				  "0100100" when "0101",
				  "1100000" when "0110",
				  "0001111" when "0111",
				  "0000000" when "1000",
				  "0001100" when "1001",  
				  "1111111" when others; 

end arch_decodificador;
