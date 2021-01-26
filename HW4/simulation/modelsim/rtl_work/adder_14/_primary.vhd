library verilog;
use verilog.vl_types.all;
entity adder_14 is
    port(
        a               : in     vl_logic_vector(13 downto 0);
        b               : in     vl_logic_vector(13 downto 0);
        c_out           : out    vl_logic;
        res             : out    vl_logic_vector(13 downto 0)
    );
end adder_14;
