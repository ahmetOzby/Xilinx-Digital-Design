----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 10:26:53
-- Design Name: 
-- Module Name: sr_component - Behavioral
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

entity sr_component is
--  Port ( );
Port
(
    D: in std_logic;
    clk: in std_logic;
    y: out std_logic_vector (7 downto 0)
);
end sr_component;

architecture Behavioral of sr_component is
signal sr_sig: std_logic_vector (7 downto 0) := X"00";
begin
process(clk, D) begin
if(clk'event and (clk = '1')) then
-- Shift right
sr_sig(7) <= D;
sr_sig(6 downto 0) <= sr_sig(7 downto 1);
end if;

y <= sr_sig;
end process;
end Behavioral;
