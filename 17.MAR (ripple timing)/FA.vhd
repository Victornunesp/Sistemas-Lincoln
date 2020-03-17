LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity FA is
port(a,b,cin: in std_logic;
	  s,cout: out std_logic);
end FA;

architecture FA of FA is

signal temp: std_logic;

begin

temp <= a xor b;
s <= cin xor temp;
cout <= (a and b) or (cin and temp);

end FA;