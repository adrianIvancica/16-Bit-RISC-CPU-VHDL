library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity mux4to1 is

	port ( input1, input2, input3, input4: in std_logic_vector( 13 downto 0);-- 4 inputs
		en: in std_logic_vector (1 downto 0); -- 2 bit select line
		output: out std_logic_vector (13 downto 0)-- next address
	);
end mux4to1;

Architecture selection of mux4to1 is
begin 

	process(input1,input2,input3,input4,en)
	begin
	if (en = "00") then
		output <= input1;
	elsif (en = "01") then
		output <= input2;
	elsif (en ="10") then
		output <= input3;
	else
		output <= input4;
	end if;
     end process;
end;




