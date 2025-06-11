library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity memoria is
    generic (
        DATA_WIDTH : natural := 3; 
        DEPTH      : natural := 8 
    );
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        we       : in  STD_LOGIC;
        re       : in  STD_LOGIC;
        data_in  : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        data_out : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        empty    : buffer STD_LOGIC;
        full     : buffer STD_LOGIC
    );
end memoria;

architecture Behavioral of memoria is

    function log2_ceil(N : natural) return natural is
        variable result : natural := 0;
        variable temp_N : natural := N - 1;
    begin
        if N = 0 then
            return 0; 
        end if;

        while temp_N > 0 loop
            temp_N := temp_N / 2;
            result := result + 1;
        end loop;
        return result;
    end function;
    type fifo_memory_type is array (0 to DEPTH-1) of STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
    signal fifo_memory : fifo_memory_type;
    constant PTR_WIDTH : natural := log2_ceil(DEPTH) + 1;
    signal wr_ptr_reg : STD_LOGIC_VECTOR(PTR_WIDTH-1 downto 0) := (others => '0');
    signal rd_ptr_reg : STD_LOGIC_VECTOR(PTR_WIDTH-1 downto 0) := (others => '0');
    signal wr_ptr_next : STD_LOGIC_VECTOR(PTR_WIDTH-1 downto 0);
    signal rd_ptr_next : STD_LOGIC_VECTOR(PTR_WIDTH-1 downto 0);
    signal count : integer range 0 to DEPTH := 0; 

begin

    process(clk, reset)
    begin
        if reset = '1' then
            wr_ptr_reg <= (others => '0');
            rd_ptr_reg <= (others => '0');
            count <= 0;
        elsif rising_edge(clk) then
            wr_ptr_reg <= wr_ptr_next;
            rd_ptr_reg <= rd_ptr_next;

            if we = '1' and re = '0' and full = '0' then
                count <= count + 1;
            elsif we = '0' and re = '1' and empty = '0' then 
                count <= count - 1;
            elsif we = '1' and re = '1' and full = '0' and empty = '0' then
                count <= count;
            end if;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' and full = '0' then
                fifo_memory(to_integer(unsigned(wr_ptr_reg(PTR_WIDTH-2 downto 0)))) <= data_in;
            end if;
        end if;
    end process;

    data_out <= fifo_memory(to_integer(unsigned(rd_ptr_reg(PTR_WIDTH-2 downto 0))));
    wr_ptr_next <= STD_LOGIC_VECTOR(unsigned(wr_ptr_reg) + 1) when we = '1' and full = '0' else wr_ptr_reg;
    rd_ptr_next <= STD_LOGIC_VECTOR(unsigned(rd_ptr_reg) + 1) when re = '1' and empty = '0' else rd_ptr_reg;
    empty <= '1' when count = 0 else '0';
    full  <= '1' when count = DEPTH else '0';

end Behavioral;