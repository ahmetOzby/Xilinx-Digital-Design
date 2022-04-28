----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.04.2022 21:31:27
-- Design Name: 
-- Module Name: basic_IO - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity basic_IO is
--  Port ( );
    Port
    (
        input: in std_logic_vector(7 downto 0);
        output: out std_logic
     );
end basic_IO;

architecture Behavioral of basic_IO is
constant key: std_logic_vector(7 downto 0) := "11110000";

begin

--------------Behavioral-------------
--    process(input)
--    begin
--        if key = input then
--            output <= '1';
--        else
--            output <= '0';
--        end if;
--    end process;
-------------------------------------

----------------Structural---------------
    process(input)
    begin
    output <=  not input(0) and
               not input(1) and 
               not input(2) and 
               not input(3) and
               input(4) and 
               input(5) and
               input(6) and
               input(7);
    end process;              
------------------------------------------          
end Behavioral;
