library ieee;
use ieee.std_logic_1164.all;
entity main is
port
(
   bit0 , bit1 , bit2 , bit3 : in bit;
   f , g : out bit
);
 end entity; --main
 architecture behavioral of main is 
 begin

f <= ( ((not bit0) and (not bit2) and (not bit3)) or ((bit0 or bit2) and bit3) or (((not bit0) and (not bit1)) and bit2) or ((bit0 and bit1) and ((not bit2) and (not bit3)))) ;
g <= (((bit0 and bit1) and ((not bit2) and (not bit3))) or ((not bit1) and bit3) or (((not bit0) or(not bit3)) and bit2) or (bit0 nor bit3)) ;

 end architecture; --behavioral