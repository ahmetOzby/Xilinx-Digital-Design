----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 15:20:22
-- Design Name: 
-- Module Name: h_adder_tb - Behavioral
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

entity h_adder_tb is
--  Port ( );
end h_adder_tb;

architecture Behavioral of h_adder_tb is

component h_adder_main is
    Port
    (   
        A: in std_logic;
        B: in std_logic;
        S: out std_logic;
        Co: out std_logic
    );
end component;
    
    signal A: std_logic := '0';
    signal B: std_logic := '0';
    signal S: std_logic;
    signal Co: std_logic;
    
begin
DUT : h_adder_main


port map
(
    A => A,
    B => B,
    S => S,
    Co => Co
);

STIMULI : process begin

A <= '0';
B <= '0';
wait for 1 ns;

A <= '1';
B <= '0';
wait for 1 ns;

A <= '0';
B <= '1';
wait for 1 ns;

A <= '1';
B <= '1';
wait for 1 ns;


end process;
end Behavioral;
