library verilog;
use verilog.vl_types.all;
entity is_zero is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        res             : out    vl_logic
    );
end is_zero;
