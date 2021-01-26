library verilog;
use verilog.vl_types.all;
entity mux_14_2_1 is
    port(
        a               : in     vl_logic_vector(13 downto 0);
        b               : in     vl_logic_vector(13 downto 0);
        s               : in     vl_logic;
        res             : out    vl_logic_vector(13 downto 0)
    );
end mux_14_2_1;
