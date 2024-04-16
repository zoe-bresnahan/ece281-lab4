----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2024 10:35:31 PM
-- Design Name: 
-- Module Name: bin2bin_converter - Behavioral
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

entity bin2bin_converter is
    Port ( i_floor : in STD_LOGIC_VECTOR (3 downto 0);
           o_tens : out STD_LOGIC_VECTOR (3 downto 0);
           o_ones : out STD_LOGIC_VECTOR (3 downto 0));
end bin2bin_converter;

architecture Behavioral of bin2bin_converter is

begin

o_tens <= "0001" when (i_floor > "1001" or i_floor = "0000") else "0000";

o_ones <= "0000" when (i_floor = "1010") else
          "0001" when (i_floor = "0001" or i_floor = "1011") else
          "0010" when (i_floor = "0010" or i_floor = "1100")else
          "0011" when (i_floor = "0011" or i_floor = "1101")else   
          "0100" when (i_floor = "0100" or i_floor = "1110")else 
          "0101" when (i_floor = "0101" or i_floor = "1111")else
          "0110" when (i_floor = "0110" or i_floor = "0000")else
          "0111" when (i_floor = "0111")else
          "1000" when (i_floor = "1000")else
          "1001" when (i_floor = "1001");
          
end Behavioral;
