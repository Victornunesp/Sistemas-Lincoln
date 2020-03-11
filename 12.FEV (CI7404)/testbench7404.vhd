entity testbench7404 is
end testbench7404;

architecture test of testbench7404 is

component CI7404 is
port(A1,A2,A3,A4,A5,A6: IN BIT;
     Y1,Y2,Y3,Y4,Y5,Y6: OUT BIT);
END component;

signal A1,A2,A3,A4,A5,A6: BIT;
signal Y1,Y2,Y3,Y4,Y5,Y6: BIT;

begin

dut: ci7404 port map(A1,A2,A3,A4,A5,A6
						  ,Y1,Y2,Y3,Y4,Y5,Y6);
	A1<= '0',
		  '1' AFTER 10 ns,
		  '0' AFTER 20 ns;
	A2<= '0',
		  '1' AFTER 20 ns,
		  '0' AFTER 30 ns;
	A3<= '0',
		  '1' AFTER 30 ns,
		  '0' AFTER 40 ns;
	A4<= '0',
		  '1' AFTER 40 ns,
		  '0' AFTER 50 ns;
	A5<= '0',
		  '1' AFTER 50 ns,
		  '0' AFTER 60 ns;
	A6<= '0',
		  '1' AFTER 60 ns,
		  '0' AFTER 70 ns;
end test;