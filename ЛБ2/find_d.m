function d = find_d(n, h, c)

    d = zeros(n, 1);
    
    for i = 2:(n-1)
        d(i) = (c(i) - c(i-1)) / h(i);
    end
    
    dn = (c(n) - c(n-1)) / h(n);
    d(n) = dn;
end