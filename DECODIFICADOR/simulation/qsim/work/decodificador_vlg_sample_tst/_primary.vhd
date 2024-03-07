library verilog;
use verilog.vl_types.all;
entity decodificador_vlg_sample_tst is
    port(
        bcdA            : in     vl_logic;
        bcdB            : in     vl_logic;
        bcdC            : in     vl_logic;
        bcdD            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end decodificador_vlg_sample_tst;
