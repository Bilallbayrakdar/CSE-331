library verilog;
use verilog.vl_types.all;
entity zero_extender_14_32 is
    port(
        res             : out    vl_logic_vector(31 downto 0);
        a               : in     vl_logic_vector(13 downto 0)
    );
end zero_extender_14_32;
