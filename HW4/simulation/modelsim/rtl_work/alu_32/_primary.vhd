library verilog;
use verilog.vl_types.all;
entity alu_32 is
    port(
        res             : out    vl_logic_vector(31 downto 0);
        cout            : out    vl_logic;
        z               : out    vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        op              : in     vl_logic_vector(2 downto 0)
    );
end alu_32;
