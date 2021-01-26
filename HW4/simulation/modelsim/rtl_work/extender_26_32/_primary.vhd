library verilog;
use verilog.vl_types.all;
entity extender_26_32 is
    port(
        res             : out    vl_logic_vector(31 downto 0);
        num             : in     vl_logic_vector(25 downto 0)
    );
end extender_26_32;
