library	IEEE;
use	IEEE.std_logic_1164.all;

entity	tb	is
end	tb;

architecture	tb_arc	of	tb	is

signal	A,B,Cin,S,C:STD_LOGIC;

begin

uut	:entity	work.full_adder	port	map(
A=>A,	B=>B,
Cin=>Cin,S=>S,C=>C);

simulation:	process
begin
A<='0';
B<='0';
Cin<='0';
wait	for	10	ns;

A<='0';
B<='0';
Cin<='1';
wait	for	10	ns;

A<='0';
B<='1';
Cin<='0';
wait	for	10	ns;

A<='0';
B<='1';
Cin<='1';
wait	for	10	ns;
	wait;

end	process;
end	tb_arc;