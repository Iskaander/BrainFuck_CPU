library verilog;
use verilog.vl_types.all;
entity prog_ram is
    port(
        address         : in     vl_logic_vector(9 downto 0);
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        rden            : in     vl_logic;
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
end prog_ram;
