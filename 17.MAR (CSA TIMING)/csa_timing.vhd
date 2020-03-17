library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity csa_timing is
port ( A : in std_logic_vector (3 downto 0);
B : in std_logic_vector (3 downto 0);
C : in std_logic_vector (3 downto 0);
S : out std_logic_vector (4 downto 0);
Cout : out std_logic);
end csa_timing;
 
architecture dento of csa_timing is
 
component soma1 is
port(a,b,cin: in std_logic;
	  s,cout: out std_logic);
end component;
 
signal X,Y: std_logic_vector(3 downto 0);
signal C1,C2,C3:std_logic;
 
begin
--Bloco CSA:

FA1: soma1 PORT MAP(A(0),B(0),'0',S(0),X(0));
FA2: soma1 PORT MAP(A(1),B(1),'0',Y(0),X(1));
FA3: soma1 PORT MAP(A(2),B(2),'0',Y(1),X(2));
FA4: soma1 PORT MAP(A(3),B(3),'0',Y(2),X(3));

--Bloco RC:

FA5: soma1 PORT MAP(X(0),Y(0),'0',S(1),C1);
FA6: soma1 PORT MAP(X(1),Y(1),C1,S(2),C2);
FA7: soma1 PORT MAP(X(2),Y(2),C2,S(3),C3);
FA8: soma1 PORT MAP(X(3),'0',C3,S(4),Cout);
 
end dento;
