----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 00:33:09
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_tb is
--  Port ( );
end counter_tb;

architecture Behavioral of counter_tb is
component counter_main is
    Port
    (
        --Inputs
        clk: in std_logic;
        rst: in std_logic;
        
        --Outputs
        y: out std_logic_vector (7 downto 0)
     );
end component;

signal clk: std_logic := '0';
signal rst: std_logic := '0';
signal y: std_logic_vector(7 downto 0);

begin
CLOCK :
clk <=  '1' after 0.5 ns when clk = '0' else
        '0' after 0.5 ns when clk = '1';

UUT : counter_main
port map
(
    clk => clk,
    rst => rst,
    y => y
);


STIMULI : process begin

    rst <= '1';
    wait for 2 ns;
    rst <= '0';
    wait for 200 ns;
end process;
end Behavioral;
