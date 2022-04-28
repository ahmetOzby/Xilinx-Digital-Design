----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2022 22:35:03
-- Design Name: 
-- Module Name: half_adder_component - Behavioral
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

entity half_adder_component is
--  Port ( );
 Port
   (   
       A: in std_logic;
       B: in std_logic;
       S: out std_logic;
       Co: out std_logic
   );
end half_adder_component;

architecture Behavioral of half_adder_component is
component half_adder_component is
    Port
    (   
        A: in std_logic;
        B: in std_logic;
        S: out std_logic;
        Co: out std_logic
    );
end component;
begin
    S <= A xor B;
    Co <= A and B;

end Behavioral;
