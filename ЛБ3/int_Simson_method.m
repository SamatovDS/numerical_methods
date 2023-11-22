function num = int_Simson_method(n, f, a, b)

    h = (b-a) / (2 * n);
    x = a:h:b;

    sum = f(x(1)) + f(x(2*n+1));

    for i = 2:2*n
        if mod(i,2) == 0
            sum = sum + 4 * f(x(i)); 
        else
            sum = sum + 2 * f(x(i));
        end

    end
 
    num = (b-a) / (6 * n) * sum;
end