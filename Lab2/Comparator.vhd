----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/01/2017 09:51:35 AM
-- Design Name: 
-- Module Name: Comparator - Behavioral
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

entity Comparator is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           G : out STD_LOGIC;
           L : out STD_LOGIC;
           E : out STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
process (A,B)
begin
   if (A>B) then
   G <= '1'; L <= '0';E<='0';
   else if(A<B) then
   G<='0'; L<='1'; E<='0';
   else
   G<='0'; L<='0'; E<='1';
   end if;
   end if;
end process;

end Behavioral;
