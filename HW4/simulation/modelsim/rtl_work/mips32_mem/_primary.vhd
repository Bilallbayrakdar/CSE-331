library verilog;
use verilog.vl_types.all;
entity mips32_mem is
    port(
        clk             : in     vl_logic;
        memWrite        : in     vl_logic;
        memRead         : in     vl_logic;
        address         : in     vl_logic_vector(17 downto 0);
        writeData       : in     vl_logic_vector(31 downto 0);
        readData        : out    vl_logic_vector(31 downto 0)
    );
end mips32_mem;
