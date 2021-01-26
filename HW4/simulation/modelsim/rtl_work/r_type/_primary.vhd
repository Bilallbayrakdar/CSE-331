library verilog;
use verilog.vl_types.all;
entity r_type is
    port(
        alu_out         : in     vl_logic_vector(31 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end r_type;
