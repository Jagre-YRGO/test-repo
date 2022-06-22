library IEEE;
use IEEE.std_logic_1164.all;

entity mega_quiz_tb is
end entity;

architecture tb of mega_quiz_tb is

component mega_quiz is
	port
	(
      clk : in std_logic;
      q :   out std_logic_vector(3 downto 0)
	);
end component;

signal k_s : std_logic := '0';
signal q_s   : std_logic_vector(3 downto 0);
		
begin

  --instantiate unit under test
uut : mega_quiz
	port map(k_s, q_s);

process
begin
   k_s <= not k_s;
   wait for 5 ns;
end process; 	 


 
state_mach : process
begin
   wait;
end process; 	 

end architecture;