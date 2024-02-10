library ieee;
use ieee.std_logic_1164.all;

entity tb is 
	end tb;

architecture tbarc of tb is 
signal CLK, RESET: std_logic;
signal A, B, GCD: integer;
BEGIN
uut : entity work.gcd port map(CLK=> CLK, RESET=>  RESET, A=>A, B=>B, GCD=>GCD);
clock: process
begin
	CLK<= '1';
	wait for 100 ns;

	CLK <= '0';
	WAIT FOR 100 NS;
	
end process;
process
begin
	RESET <= '1';
	wait for 10 ns;
	RESET  <= '0';

	A <= 10;
	B <= 15;
	wait for 2600 ns;
	
	A <= 3456;
	B <= 234;
	wait for 2600 ns;
	
	A <= 546;
	B <= 24;
	wait for 2600 ns;

	WAIT;
end process;
end tbarc;

