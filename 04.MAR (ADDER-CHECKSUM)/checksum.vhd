entity checksum is
port(B1,B2,CS: in bit_vector(7 downto 0);
	  saida: out bit);
end checksum;

architecture dento of checksum is 

component somanb is
generic(size: integer := 8);
port(a,b: in bit_vector(size-1 downto 0);
	  s: out bit_vector(size-1 downto 0);
	  cin: in bit;
	  cout: out bit);
end component;

signal temp,sum: bit_vector(7 downto 0);
signal fodase1, fodase2: bit;

begin

soma1: somanb port map (B1,B2,temp,'0',fodase1);
soma2: somanb port map (temp,cs,sum,'0',fodase2);
saida <= sum(0) or sum(1) or sum(2) or sum(3) or 
			sum(4) or sum(5) or sum(6) or sum(7);
 

end dento;