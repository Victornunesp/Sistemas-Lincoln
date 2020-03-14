entity testbench is
end testbench;

architecture test of testbench is

component csa_mod is
port ( A : in bit_vector (3 downto 0);
B : in bit_vector (3 downto 0);
C : in bit_vector (3 downto 0);
S : out bit_vector (4 downto 0);
Cout : out bit);

end component;

--Entradas
signal A : bit_vector(3 downto 0) := (others => '0');
signal B : bit_vector(3 downto 0) := (others => '0');
signal C : bit_vector(3 downto 0) := (others => '0');

signal S : bit_vector(4 downto 0) := (others => '0');
signal Cout : bit;

begin

dut: csa_mod port map(A,B,C,S,Cout);

A <= "0111",
		  "0001" after 10 ns,
		  "0001" after 20 ns,
		  "0010" after 30 ns,
		  "0000" after 40 ns;

B <= "0001",
		  "0001" after 10 ns,
		  "0011" after 20 ns,
		  "0001" after 30 ns,
		  "0000" after 40 ns;

		  
end test;