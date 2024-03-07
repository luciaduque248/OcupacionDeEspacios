library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity contadorDescendente is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           start : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR(5 downto 0));
end contadorDescendente;

architecture arch_contadorDescendente of contadorDescendente is

    signal contador : STD_LOGIC_VECTOR(5 downto 0) := (others => '0');

begin

    process(clk, reset, start)
    begin
        if reset = '1' then
            contador <= (others => '0');
        elsif rising_edge(clk) then
            if start = '1' then
                if contador /= "000000" then
                    contador <= contador - 1;
                end if;
            end if;
        end if;
    end process;

    count <= contador;

end arch_contadorDescendente;
