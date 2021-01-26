library verilog;
use verilog.vl_types.all;
entity mips32_registers is
    port(
        clk             : in     vl_logic;
        readReg1        : in     vl_logic_vector(4 downto 0);
        readReg2        : in     vl_logic_vector(4 downto 0);
        writeReg1       : in     vl_logic_vector(4 downto 0);
        writeReg2       : in     vl_logic_vector(4 downto 0);
        regWrite1       : in     vl_logic;
        regWrite2       : in     vl_logic;
        writeData1      : in     vl_logic_vector(31 downto 0);
        writeData2      : in     vl_logic_vector(31 downto 0);
        readData1       : out    vl_logic_vector(31 downto 0);
        readData2       : out    vl_logic_vector(31 downto 0)
    );
end mips32_registers;
