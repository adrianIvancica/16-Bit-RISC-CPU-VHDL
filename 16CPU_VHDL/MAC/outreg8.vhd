library ieee;
use ieee.std_logic_1164.all;

--all inputs are active high

Entity outreg8 is
  Port(
      clk, load: in std_logic;
	input : in std_logic_vector(7 downto 0);
      output : out std_logic_vector(7 downto 0)
  );
end outreg8;

architecture Arch_Register16 of outreg8 is
  signal storage : std_logic_vector(7 downto 0);
begin
  process(clk)
  begin
    --if the clock just went high and load is high, then save datain to storage

    if (clk'event and clk = '1' and load = '1') then
      storage <= input;
    end if;
  end process;

output <= storage;
end Arch_Register16;
