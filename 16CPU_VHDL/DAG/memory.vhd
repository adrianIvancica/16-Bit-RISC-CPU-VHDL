library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity memory is
  Port( clk, wren : in std_logic; -- wren is read and write
	Address : in std_logic_vector(13 downto 0); -- input address
	data: in std_logic_vector (15 downto 0); -- data to be written
      q : out std_logic_vector(15 downto 0) -- output data
  );
end memory;

architecture instruction of memory is
begin
	process(clk, address, wren, data)
	begin
	
	if (wren = '0') then -- read only
		

end process;
end;
