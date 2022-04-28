----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 00:19:49
-- Design Name: 
-- Module Name: basic_IO_sim - Behavioral
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

entity basic_IO_sim is
--  Port ( );
end basic_IO_sim;

architecture Behavioral of basic_IO_sim is

component basic_IO is

    Port
    (
        input: in std_logic_vector(7 downto 0);
        output: out std_logic
     );
end component;

signal input: std_logic_vector(7 downto 0) := "00000000";
signal output: std_logic;

begin

DUT : basic_IO
port map 
(
    input => input ,
    output => output
 );


STIMULI : process begin

    input <= "00001111";
    wait for 1 ns;
    
    input <= "00011110";
    wait for 1 ns;
    
    input <= "00111100";
    wait for 1 ns;
    
    input <= "01111000";
    wait for 1 ns;
    
    input <= "11110000";
    wait for 1 ns;

end process;

end Behavioral;
