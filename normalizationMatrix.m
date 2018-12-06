function M = normalizationMatrix(a, b)
    median = [sum(a)/numel(a), sum(b)/numel(b)];
    translationMatrix = [1 0 -median(1) ; 0 1 -median(2); 0 0 1];
    
    old = [a'; b'; ones(numel(a), 1)'];
    new = translationMatrix * old;
    
    a = new(1, :);
    b = new(2, :);
    
    summ = 0;
    for i = 1 : numel(a)
        summ = summ + sqrt(a(i)*a(i) + b(i)*b(i));
    end
    average = summ / numel(a);
    
    scaleMatrix = [sqrt(2)/average 0 0; 0 sqrt(2)/average 0; 0 0 1];
    
    M = scaleMatrix * translationMatrix;
end
