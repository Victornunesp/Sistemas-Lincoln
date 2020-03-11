-- PROJETO CI 7404
-- 12/02/2020
-- VICTOR RAMALHO
------------------
ENTITY CI7404 IS
PORT(
            A1,A2,A3,A4,A5,A6: IN BIT;
            Y1,Y2,Y3,Y4,Y5,Y6: OUT BIT
);
END CI7404;

ARCHITECTURE CI7404 OF CI7404 IS
BEGIN
Y1 <= not A1;
Y2 <= not A2;
Y3 <= not A3;
Y4 <= not A4;
Y5 <= not A5;
Y6 <= not A6;
END CI7404;

