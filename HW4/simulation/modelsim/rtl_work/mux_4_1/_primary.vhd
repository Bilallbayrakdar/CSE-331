library verilog;
use verilog.vl_types.all;
entity mux_4_1 is
    port(
        res             : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        sl              : in     vl_logic_vector(1 downto 0)
    );
end mux_4_1;
