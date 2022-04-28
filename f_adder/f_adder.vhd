-- Tarih: 15/04/2022
-- Amaç: Tam toplayýcý modül tasarýmý
-- Yazar: Ahmet ÖZBAY

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity f_adder is
    Port
    (
        A: in std_logic;
        B: in std_logic;
        Ci: in std_logic;
        S: out std_logic;
        Co: out std_logic
    );
end f_adder;

architecture Behavioral of f_adder is
begin

    process(A, B, Ci) begin
        S <= A xor B xor Ci;
        Co <= (A and B) OR (A and Ci) OR (B and Ci);
    end process;
end Behavioral;
