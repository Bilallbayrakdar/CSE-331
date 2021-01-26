library verilog;
use verilog.vl_types.all;
entity program_counter is
    port(
        clk             : in     vl_logic;
        \next\          : in     vl_logic_vector(13 downto 0);
        pc              : out    vl_logic_vector(13 downto 0);
        res             : out    vl_logic_vector(31 downto 0)
    );
end program_counter;
