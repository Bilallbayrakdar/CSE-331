library verilog;
use verilog.vl_types.all;
entity shifter_2 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end shifter_2;
