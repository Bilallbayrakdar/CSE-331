library verilog;
use verilog.vl_types.all;
entity main_control is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        Jal             : out    vl_logic;
        Imm             : out    vl_logic;
        Jmp             : out    vl_logic;
        RegDest         : out    vl_logic;
        Branch          : out    vl_logic;
        Bneq            : out    vl_logic;
        MemRead         : out    vl_logic;
        MemtoReg        : out    vl_logic;
        ALUOp           : out    vl_logic_vector(1 downto 0);
        MemWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        RegWrite        : out    vl_logic;
        RegWrite2       : out    vl_logic;
        Lui             : out    vl_logic
    );
end main_control;
