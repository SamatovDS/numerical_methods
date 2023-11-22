function num = int_s(n, f, a, b)

    h = (b-a) / (2 * n);

    sum = f(a) + f(b);
    x = a;
    
    for i = 1:(2*n-1)
        x = x + h;
        if mod(i,2) == 0
            sum = sum + 2 * f(x); 
        else
            sum = sum + 4 * f(x);
        end

    end

    num = (b-a) / (6 * n) * sum;
end