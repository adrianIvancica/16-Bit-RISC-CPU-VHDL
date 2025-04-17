library iee;
use iee.std_logic_1164.all;
use iee.numeric_std.all;

entity multiplier is
	port( x,y in std_logic_vector (15 downto 0); -- 16 bit inputs
	p: out std_logic_vector (31 downto 0);
	);
end multiplier;

architecture Multiplication of multiplier is
	--signal amfupdt : in std_logic_vector(4 downto 0);
	signal storage : std_logic_vector(31 downto 0);

	begin
	process(x,y)
	begin
	
	storage <= CONV_STD_LOGIC_VECTOR(TO_INTEGER(signed(x)))*(TO_INTEGER(signed(x)));
	
	end process
	p <= storage;
	end;

	