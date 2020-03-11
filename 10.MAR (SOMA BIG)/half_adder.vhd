entity half_adder is
port(a,b: in bit;
		p,g: out bit);
end half_adder;

architecture ocarlo of half_adder is
begin

g <= a and b;
p <= a xor b;

end ocarlo;