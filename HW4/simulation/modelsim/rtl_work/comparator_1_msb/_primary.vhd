library verilog;
use verilog.vl_types.all;
entity comparator_1_msb is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        big             : out    vl_logic;
        eq              : out    vl_logic;
        sm              : out    vl_logic
    );
end comparator_1_msb;
