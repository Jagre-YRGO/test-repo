library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity mega_quiz is
	port
	(
      clk : in std_logic;
      d :   in std_logic;
      q :   out std_logic
	);
end entity;

architecture gate of mega_quiz is

signal s1,s2,s3 : std_logic;
begin
   process (clk)
   begin
      if rising_edge(clk) then
         s1 <= d;
         s2 <= s1;
         q  <= s2;
      end if;
   end process;
end architecture;
