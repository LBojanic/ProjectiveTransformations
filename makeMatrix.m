function m = makeMatrix(a, b, u, v)
    m = [0 0 0 -a -b -1 v*a v*b v ; a b 1 0 0 0 -u*a -u*b -u];
end