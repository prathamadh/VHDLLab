LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demultiplexer IS
PORT(
	A,S2,S1,S0:IN STD_LOGIC;
	D7,D6,D5,D4,D3,D2,D1,D0:OUT STD_LOGIC
);
END demultiplexer;

ARCHITECTURE de_arc OF demultiplexer IS
BEGIN
	D7<=S0 and S1 and S2 and A;
	D6<=(not S0) and S1 and S2 and A;
	D5<=S0 and (not S1) and S2 and A;
	D4<=(not S0) and (not S1) and S2 and A;
	D3<=S0 and S1 and (not S1) and A;
	D2<=(not S0) and S1 and (not S2) and A;
	D1<=S0 and (not S1) and (not S2) and A;
	D0<=(not S0) and (not S1) and (not S2) and A;
END dearc;
