library verilog;
use verilog.vl_types.all;
entity zero_extender_32 is
    port(
        res             : out    vl_logic_vector(31 downto 0);
        a               : in     vl_logic_vector(15 downto 0)
    );
end zero_extender_32;