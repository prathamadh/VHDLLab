LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE dec_tb OF tb IS
    SIGNAL A0, A1, E, Y3, Y2, Y1, Y0 : STD_LOGIC;

BEGIN
    UUT: entity  work.dec
    PORT MAP(A0 => A0, A1 => A1, E => E, Y3 => Y3, Y2 => Y2, Y1 => Y1, Y0 => Y0);

    simulation: PROCESS
    BEGIN
        -- Test case 1
        A0<='0';
        A1<='0';
        E<='1';
        WAIT FOR 10 ns;

        -- Test case 2
        A0<='1';
        A1<='0';
        E<='1';
        WAIT FOR 10 ns;

        -- Test case 3
        A0<='0';
        A1<='1';
        E<='1';
        WAIT FOR 10 ns;

        -- Test case 4
        A0<='1';
        A1<='1';
        E<='1';
        WAIT FOR 10 ns;

        -- End simulation
        WAIT;
    END PROCESS simulation;

END dec_tb;