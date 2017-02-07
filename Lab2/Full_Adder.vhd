----------------------------------------------------------------------------------
-- Company: KU
-- Engineer: Nick Bukaty
-- 
-- Create Date: 02/01/2017 09:22:44 AM
-- Design Name: 
-- Module Name: Full_Adder - Behavioral
-- Project Name: Full_Adder
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

entity Full_Adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin
S <= A XOR B XOR Cin;
Cout <= (A AND Cin) OR (A AND B) OR (B AND Cin);

end Behavioral;
