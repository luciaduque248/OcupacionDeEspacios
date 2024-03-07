library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testdecontadores is
    Port (
        clk: in std_logic;
        reset: in std_logic;
        start_up: in std_logic; -- Señal para iniciar el contador ascendente
        start_down: in std_logic; -- Señal para iniciar el contador descendente
        count_up: out std_logic_vector(5 downto 0); -- Salida del contador ascendente
        count_down: out std_logic_vector(5 downto 0); -- Salida del contador descendente
        alarm_triggered: out std_logic -- Señal que indica si se ha activado la alarma
    );
end testdecontadores;

architecture Behavioral of testdecontadores is

    component contadorAscendente
        Port ( 
            clk: in std_logic;
            reset: in std_logic;
            start: in std_logic;
            count: out std_logic_vector(5 downto 0)
        );
    end component;

    component contadorDescendente
        Port ( 
            clk: in std_logic;
            reset: in std_logic;
            start: in std_logic;
            count: out std_logic_vector(5 downto 0)
        );
    end component;

    signal count_up_internal, count_down_internal: std_logic_vector(5 downto 0);
    signal alarm_up, alarm_down: std_logic;

begin

    U1: contadorAscendente port map(clk, reset, start_up, count_up_internal);
    U2: contadorDescendente port map(clk, reset, start_down, count_down_internal);

    count_up <= count_up_internal;
    count_down <= count_down_internal;

    -- Lógica para activar la alarma si el contador descendente llega a cero
    alarm_triggered <= '1' when count_down_internal = "000000" else '0';

end Behavioral;
