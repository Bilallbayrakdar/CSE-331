library verilog;
use verilog.vl_types.all;
entity pc_handler is
    port(
        address         : in     vl_logic_vector(13 downto 0);
        pc_val          : in     vl_logic_vector(13 downto 0);
        rs_cnt          : in     vl_logic_vector(13 downto 0);
        branch          : in     vl_logic;
        bneq            : in     vl_logic;
        zero            : in     vl_logic;
        jmp             : in     vl_logic;
        jr              : in     vl_logic;
        res             : out    vl_logic_vector(13 downto 0)
    );
end pc_handler;
