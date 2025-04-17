library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Arraymemory is
port(
clk : in std_logic;
address : in std_logic_vector(3 downto 0);
output : out std_logic_vector(23 downto 0);
read : out std_logic -- signal for the memory 
);
end Arraymemory;
architecture behav of Arraymemory is 

type storage is array(0 to 8) of std_logic_vector(23 downto 0);
signal memory : storage := (
 "010000000000000000100000",
 "010000000000000000110101",
 "010000000000000001000010",
 "010000000000000000100111",   --MY1 = 2
 "010010110110101000111000", -- SI = B6A3
 "001010100110100010100000", -- AR = AX0 + AY1
 "001010000010100010110000", -- MR0 = MX0 * MY1
 "000011110000000011111011", -- SR = Lshift
 "000000101000000000000000" -- idle
 );
begin
		read <= '1';
process(clk)
variable addressSig : integer;
begin
if falling_edge(clk) then 
 addressSig := to_integer(unsigned(address));
 if addressSig >= 0 and addressSig <= 10 then
 output <= memory(addressSig);
 else
 output <= (others => '0');
 end if;
 end if;
 end process;
end behav;