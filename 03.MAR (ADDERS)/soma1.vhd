entity soma1 is
port(a,b,cin: in bit;
		s,cout: out bit);
end soma1;

architecture dento of soma1 is
signal x: bit;
begin

x <= a xor b;
s <= cin xor x;
cout <= (a and b) or (cin and x);

end dento;