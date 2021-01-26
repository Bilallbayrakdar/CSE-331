library verilog;
use verilog.vl_types.all;
entity adder_18 is
    port(
        input1          : in     vl_logic_vector(17 downto 0);
        input2          : in     vl_logic_vector(17 downto 0);
        answer          : out    vl_logic_vector(17 downto 0)
    );
end adder_18;
