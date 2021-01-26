library verilog;
use verilog.vl_types.all;
entity alu_1 is
    port(
        res             : out    vl_logic;
        cout            : out    vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        op              : in     vl_logic_vector(2 downto 0)
    );
end alu_1;
