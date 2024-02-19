-- OR Gate
library IEEE;
use IEEE.std_logic_1164.all;

entity OR_GATE is
    port (
        X, Y: in std_logic;
        W: out std_logic
    );
end OR_GATE;

architecture OR_STRUCTURAL of OR_GATE is
begin
    process(X, Y)
    begin
        W <= X OR Y;
    end process;
end OR_STRUCTURAL;

-- AND Gate
library IEEE;
use IEEE.std_logic_1164.all;

entity AND_GATE is
    port (
        X, Y: in std_logic;
        W: out std_logic
    );
end AND_GATE;

architecture AND_STRUCTURAL of AND_GATE is
begin
    process(X, Y)
    begin
        W <= X AND Y;
    end process;
end AND_STRUCTURAL;

-- not gate 

library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_GATE is
    port (
        X: in std_logic;
        W: out std_logic
    );
end NOT_GATE;
architecture NOT_STRUCTURAL of NOT_GATE is
begin
    
        W <= not x;
    
end NOT_STRUCTURAL;

--- question 

library IEEE;
use IEEE.std_logic_1164.all;

entity MUX_STRUCTURAL is 
	Port ( 
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           y : out  STD_LOGIC
         );
end MUX_STRUCTURAL;

architecture structural of MUX_structural is 
	component OR_GATE
        port (
            X, Y: in std_logic;
            W: out std_logic
        );
    end component;

    component AND_GATE
        port (
            X, Y: in std_logic;
            W: out std_logic
        );
    end component;

    component NOT_GATE
	    port( 
	    X: in std_logic ;
	    w: out std_logic
    );
    end component;

    signal and_out1 : std_logic;
    signal and_out2 : std_logic;
    signal or_out : std_logic;
    signal not_out : std_logic;

begin 
	
	
	not1: NOT_GATE port map (sel,not_out);
	and1: AND_GATE port map (a,not_out,and_out1);
	and2 :AND_GATE port map (b,sel,and_out2);
	or1: OR_GATE port map (and_out1,and_out2,or_out);
	y<= or_out;

end structural;

