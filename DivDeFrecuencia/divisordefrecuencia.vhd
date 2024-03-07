library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divisordefrecuencia is
    Port ( clk : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end divisordefrecuencia;

architecture arch_divisordefrecuencia of divisordefrecuencia is

    signal clk_div : STD_LOGIC := '0';

begin

    process(clk)
    begin
        if rising_edge(clk) then
            clk_div <= not clk_div;
        end if;
    end process;

    clk_out <= clk_div;

end arch_divisordefrecuencia;
