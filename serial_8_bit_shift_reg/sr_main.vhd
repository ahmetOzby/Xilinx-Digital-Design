----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 10:23:31
-- Design Name: 
-- Module Name: sr_main - Behavioral
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

entity sr_main is
--  Port ( );
Port
(
    D: in std_logic;
    clk: in std_logic;
    y: out std_logic_vector (7 downto 0)
);
end sr_main;

architecture Behavioral of sr_main is
component sr_component is
Port
(
    D: in std_logic;
    clk: in std_logic;
    y: out std_logic_vector (7 downto 0)
);
end component;
begin
sr_1 : sr_component port map(D => D, clk => clk, y => y);

end Behavioral;
