library verilog;
use verilog.vl_types.all;
entity decodificador is
    port(
        bcdA            : in     vl_logic;
        bcdB            : in     vl_logic;
        bcdC            : in     vl_logic;
        bcdD            : in     vl_logic;
        SEG             : out    vl_logic_vector(6 downto 0)
    );
end decodificador;
