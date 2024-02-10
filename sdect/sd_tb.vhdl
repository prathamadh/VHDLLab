LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE tbarc OF tb IS 
   
    
    

    signal CLK,RST,X : std_logic := '0';
    signal Z : std_logic;

 constant CLK_period : time := 10 ns;
 
BEGIN
   uut: entity work.sd PORT MAP (
          CLK => CLK,
          RST => RST,
          X => X,
          Z => Z
        );

    -- CLK process 
    CLK_process :process
    begin
    
    CLK <= '0';
    wait for CLK_period/2;
    CLK <= '1';
    wait for CLK_period/2;
    
    end process;
 

sim: process
    begin  
    
    X <= '0';
    RST <= '1';
    wait for 30 ns;

    RST <= '0';
    wait for 40 ns;
    
    X <= '1';
    wait for 10 ns;
    X <= '0';
    wait for 10 ns;
    X <= '1'; 
    wait for 10 ns;
    X <= '1'; 
    wait for 10 ns;
    X <= '0'; 
    wait for 10 ns;
    X <= '0'; 
    -- insert stimulus here 
    
    wait;
   end process sim;

end tbarc;
