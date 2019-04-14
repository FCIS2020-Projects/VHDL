library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity DEC32 is
    Port ( sel : in  STD_LOGIC_VECTOR (4 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end DEC32;

architecture Behavioral of DEC32 is

begin
process
begin
o<=(others => '0');
o(to_integer(unsigned(sel)))<='1';
end process;

end Behavioral;

