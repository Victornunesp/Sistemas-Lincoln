entity somanb is
generic(size: integer := 499);
port(a,b: in bit_vector(size-1 downto 0);
	  s: out bit_vector(size-1 downto 0);
	  cin: in bit;
	  cout: out bit);
end somanb;

architecture dento of somanb is

component soma1
port(a,b,cin: in bit;
		s,cout: out bit);
end component;

signal carry: bit_vector(size downto 0);

begin

laco: for i in 0 to size-1 generate
	dento: soma1 port map(a(i),
								  b(i),
								  carry(i),
								  s(i),
								  carry(i+1));
end generate;

carry(0) <= cin;
cout <= carry(size);

end dento;