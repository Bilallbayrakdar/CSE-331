library verilog;
use verilog.vl_types.all;
entity shifter_2_14 is
    port(
        a               : in     vl_logic_vector(13 downto 0);
        res             : out    vl_logic_vector(13 downto 0)
    );
end shifter_2_14;
