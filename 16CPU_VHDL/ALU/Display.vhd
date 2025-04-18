library ieee;
use ieee.std_logic_signed.all;
use ieee.std_logic_1164.all;

entity Display is
port(
Input: in std_logic_vector(3 downto 0); --input from calc
segmentSeven : out std_logic_vector(6 downto 0)); --7 bit output end Display_Ckt;
end Display;

Architecture behav_display of Display is
begin
process (Input)
Begin
 case Input is
 when"0000"=> segmentSeven <= "1000000"; -- 0
 when"0001"=> segmentSeven <= "1111001"; -- 1
 when"0010"=> segmentSeven <= "0100100"; -- 2
 when"0011"=> segmentSeven <= "0110000"; -- 3
 when"0100"=> segmentSeven <= "0011001"; -- 4
 when"0101"=> segmentSeven <= "0010010"; -- 5
 when"0110"=> segmentSeven <= "0000010"; -- 6
 when"0111"=> segmentSeven <= "1111000"; -- 7
 when"1000"=> segmentSeven <= "0000000"; -- 8
 when"1001"=> segmentSeven <= "0010000"; -- 9
 when"1010"=> segmentSeven <= "0001000"; -- 10 A
 when"1011"=> segmentSeven <= "0000011"; -- 11 b
 when"1100"=> segmentSeven <= "1000110"; -- 12 c
 when"1101"=> segmentSeven <= "0100001"; -- 13 d
 when"1110"=> segmentSeven <= "0000110"; -- 14 e
 when"1111"=> segmentSeven <= "0001110"; -- 15 f
 when others => segmentSeven <= "1111111";
end case;
end process;
end behav_display;


