----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 00:25:28
-- Design Name: 
-- Module Name: counter_component - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_component is
--  Port ( );
    Port
    (
        --Inputs
        clk: in std_logic;
        rst: in std_logic;
        
        --Outputs
        y: out std_logic_vector (7 downto 0)
     );
     
     signal number: integer := 0;
end counter_component;


architecture Behavioral of counter_component is


begin

    process(clk, rst) begin
    if(rst = '1') then
        y <= (others => '0');
        number <= 0;
    elsif(clk'event and (clk = '1')) then
        number <= number + 1;
        y <= std_logic_vector(to_unsigned(number, y'length));
    end if;
    end process;
end Behavioral;
