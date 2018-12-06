function P = DLTalgorithm(a, b, c, d)
A = [];
for i = 1:numel(a)
    A = [A ; makeMatrix(a(i), b(i), c(i), d(i))];
end
[U, S, V] = svd(A);

tmp = V(:, end);

P = reshape(tmp, 3, 3)';
end