----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 18:05:07
-- Design Name: 
-- Module Name: two_bit_adder_tb - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity two_bit_adder_tb is
--  Port ( );
end two_bit_adder_tb;

architecture Behavioral of two_bit_adder_tb is
    component f_adder_main is
        Port
        (
            --Inputs
            X1: in std_logic_vector (3 downto 0);
            X2: in std_logic_vector (3 downto 0);
            
            --Outputs
            Y: out std_logic_vector (4 downto 0)
         );
    end component;
    
    signal X1: std_logic_vector (3 downto 0);
    signal X2: std_logic_vector (3 downto 0);
    signal Y: std_logic_vector (4 downto 0);
begin

DUT : f_adder_main
port map
(
    X1 => X1,
    X2 => X2,
    Y => Y
);

STIMULI : process begin

for i in 0 to 15 loop
    X1 <= std_logic_vector(to_unsigned(i, X1'length));
    for j in 0 to 15 loop
        X1 <= std_logic_vector(to_unsigned(j, X2'length));
        wait for 1 ns;
    end loop;
end loop;

end process;
end Behavioral;
