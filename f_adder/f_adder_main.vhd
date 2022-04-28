----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 17:02:53
-- Design Name: 
-- Module Name: f_adder_main - Behavioral
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
use IEEE.numeric_std.all;
entity f_adder_main is
    Port
    (
        --Inputs
        X1: in std_logic_vector (3 downto 0);
        X2: in std_logic_vector (3 downto 0);
        --Outputs
        Y: out std_logic_vector (4 downto 0)
     );
end f_adder_main;


architecture Structural of f_adder_main is
    component f_adder is
        Port
        (
            A: in std_logic;
            B: in std_logic;
            Ci: in std_logic;
            S: out std_logic;
            Co: out std_logic
        );
    end component;
    
    signal co1, co2, co3, co4: std_logic;
    signal ci1: std_logic := '0';
begin

    F_ADDER_1 : f_adder port map(A => X1(0), B => X2(0), Ci => ci1, S => Y(0), Co => co1);
    F_ADDER_2 : f_adder port map(A => X1(1), B => X2(1), Ci => co1, S => Y(1), Co => co2);
    F_ADDER_3 : f_adder port map(A => X1(2), B => X2(2), Ci => co2, S => Y(2), Co => co3);
    F_ADDER_4 : f_adder port map(A => X1(3), B => X2(3), Ci => co3, S => Y(3), Co => Y(4));

end Structural;
