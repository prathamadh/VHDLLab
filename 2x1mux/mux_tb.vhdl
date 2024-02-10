library ieee;
use ieee.std_logic_1164.all;

entity mux_tb  is
end mux_tb;

architecture muxtst_arc of mux_tb is
signal A0,A1,S0,Y:std_logic;



begin
    UUT: entity work.mux
    port map(A0 => A0, A1 => A1, S0 => S0, Y => Y);


    simulation: process
    begin

        --test case 1
        S0 <= '0';
        A0 <= '0';
        A1 <= '0';
        wait for 10 ns;

        --test case 2
        S0 <= '0';
        A0 <= '0';
        A1 <= '1';
        wait for 10 ns;

        --test case 3
        S0 <= '0';
        A0 <= '1';
        A1 <= '0';
        wait for 10 ns;
        --test case 4
        S0 <= '0';
        A0 <= '1';
        A1 <= '1';
        wait for 10 ns;

        --test case 5
        S0 <= '1';
        A0 <= '0';
        A1 <= '0';
        wait for 10 ns;

        --test case 6
        S0 <= '1';
        A0 <= '0';
        A1 <= '1';
        wait for 10 ns;
        wait;
    end process simulation;
end muxtst_arc;