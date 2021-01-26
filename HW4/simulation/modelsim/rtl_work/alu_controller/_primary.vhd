library verilog;
use verilog.vl_types.all;
entity alu_controller is
    port(
        ALUop           : in     vl_logic_vector(1 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        ALUctr          : out    vl_logic_vector(2 downto 0);
        regwr           : out    vl_logic
    );
end alu_controller;
