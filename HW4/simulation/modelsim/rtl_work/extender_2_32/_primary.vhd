library verilog;
use verilog.vl_types.all;
entity extender_2_32 is
    port(
        res             : out    vl_logic_vector(31 downto 0);
        num             : in     vl_logic_vector(1 downto 0)
    );
end extender_2_32;
