LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY demultiplexer_tst IS
END demultiplexer_tst;

ARCHITECTURE tst_arc OF demultiplexer_tst IS
SIGNAL A,S2,S1,S0,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0: STD_LOGIC;

BEGIN
	UUT: entity work.demultiplexer
	PORT MAP(A,S2,S1,S0,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);

	simulation: PROCESS
	BEGIN
		--TEST CASE 1
		A<='1';
		S2<='0';
		S1<='0';
		S0<='0';
		WAIT FOR 10 ns;

		--TEST CASE 2
		A<='1';
		S2<='0';
		S1<='0';
		S0<='1';
		WAIT FOR 10 ns;

		--TEST CASE 3
		A<='1';
		S2<='0';
		S1<='1';
		S0<='0';
		WAIT FOR 10 ns;

		--TEST CASE 4
		A<='1';
		S2<='0';
		S1<='1';
		S0<='1';
		WAIT FOR 10 ns;

		--TEST CASE 5
		A<='1';
		S2<='1';
		S1<='0';
		S0<='0';
		WAIT FOR 10 ns;

		--TEST CASE 6
		A<='1';
		S2<='1';
		S1<='0';
		S0<='1';
		WAIT FOR 10 ns;

		WAIT;
	END PROCESS simulation;
END tst_arc;