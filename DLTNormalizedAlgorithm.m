function P = DLTNormalizedAlgorithm(a, b, c, d)
    TOrg = normalizationMatrix(a, b);
    TPct = normalizationMatrix(c, d);
   
    oldOrg = [a'; b'; ones(numel(a), 1)'];
    newOrg = (TOrg * oldOrg);
    a = newOrg(1, :)';  
    b = newOrg(2, :)';
    
    oldPct = [c' ; d'; ones(numel(c), 1)'];
    newPct = (TPct * oldPct);
    c = newPct(1, :)';
    d = newPct(2, :)';
    
    
    dltMatrix = DLTalgorithm(a, b, c, d);
    P = inv(TPct) * dltMatrix * TOrg;
end