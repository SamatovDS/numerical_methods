function b = find_b(n, h, a, c, d, b0, bn)
    b = zeros(n, 1);
    
    for i = 2:(n-1)
        b(i) = (a(i) - a(i-1)) / h(i) + (c(i) * h(i)) / 2 - (d(i) * h(i) * h(i) / 6); 
    end

    b(1) = b0; 
    b(n) = bn;
    
end