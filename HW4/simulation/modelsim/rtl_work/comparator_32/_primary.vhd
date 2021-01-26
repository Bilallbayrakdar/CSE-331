library verilog;
use verilog.vl_types.all;
entity comparator_32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        big             : out    vl_logic;
        eq              : out    vl_logic;
        sm              : out    vl_logic
    );
end comparator_32;
