----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 15:13:18
-- Design Name: 
-- Module Name: h_adder_main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity h_adder_main is
--  Port ( );
    Port
    (   
        A: in std_logic;
        B: in std_logic;
        S: out std_logic;
        Co: out std_logic
    );

end h_adder_main;

architecture Behavioral of h_adder_main is
component half_adder_component is
    Port
    (   
        A: in std_logic;
        B: in std_logic;
        S: out std_logic;
        Co: out std_logic
    );
end component;

begin
    ha1 : half_adder_component port map(A => A, B => B, S => S, Co => Co);
   
end Behavioral;
