----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 00:20:30
-- Design Name: 
-- Module Name: counter_main - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_main is
--  Port ( );
    Port
    (
        --Inputs
        clk: in std_logic;
        rst: in std_logic;
        
        --Outputs
        y: out std_logic_vector (7 downto 0)
     );
end counter_main;

architecture Behavioral of counter_main is
component counter_component is
    Port
    (
        --Inputs
        clk: in std_logic;
        rst: in std_logic;
        
        --Outputs
        y: out std_logic_vector (7 downto 0)
     );
end component;
begin

ctr1 : counter_component port map(clk => clk, rst => rst, y => y);


end Behavioral;
