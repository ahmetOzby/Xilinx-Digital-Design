----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 10:34:22
-- Design Name: 
-- Module Name: sr_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sr_tb is
--  Port ( );
end sr_tb;

architecture Behavioral of sr_tb is
component sr_main is
    Port
    (
        D: in std_logic;
        clk: in std_logic;
        y: out std_logic_vector(7 downto 0)
    );
end component;

signal D: std_logic;
signal clk: std_logic := '0';
signal y: std_logic_vector(7 downto 0);

begin
CLOCK:
clk <= not clk after 0.5 ns;

uut : sr_main
port map
(
    D => D,
    clk => clk,
    y => y
);

STIMULI : process begin
for i in 0 to 100 loop
D <= '0';
wait for 3 ns;
D <= '1';
wait for 3 ns;
end loop;
end process;
end Behavioral;
