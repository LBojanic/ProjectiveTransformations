function P = naive(a, b, c, d)

A = [a(1:3) b(1:3) ones(3, 1)].';
B = [c(1:3) d(1:3) ones(3, 1)].';

koeficijenti1 = linsolve(A, [a(4) b(4) 1].');
P1 = [koeficijenti1(1)*[a(1) b(1) 1].', koeficijenti1(2)*[a(2) b(2) 1].', koeficijenti1(3)*[a(3) b(3) 1].'];

koeficijenti2 = linsolve(B, [c(4) d(4) 1].');
P2 = [koeficijenti2(1)*[c(1) d(1) 1].', koeficijenti2(2)*[c(2) d(2) 1].', koeficijenti2(3)*[c(3) d(3) 1].'];

P = P2 * inv(P1);
end