entity testbench is
end testbench;

architecture test of testbench is

component cla4b is
port( a,b: in bit_vector(3 downto 0);
s: out bit_vector(3 downto 0);
cin: in bit;
cout: out bit);
end component;

signal a,b,s: bit_vector(3 downto 0);
signal cin,cout: bit;

begin

dut: cla4b port map(a,b,s,cin,cout);

a <= "0010",
	  "0011" after 10 ns,
	  "0101" after 20 ns,
	  "0100" after 30 ns,
	  "0000" after 40 ns;
b <= "0001",
	  "0001" after 10 ns,
	  "0011" after 20 ns,
	  "0001" after 30 ns,
	  "0000" after 40 ns;
end test;