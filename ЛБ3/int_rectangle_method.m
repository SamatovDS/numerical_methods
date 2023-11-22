function num = int_rectangle_method(n, f, a, b)
    h = (b-a) / n;
    x = a:h:b;
    sum = 0;
 
    for i=1:n 
        sum = sum + f(x(i) + h / 2);  
    end
    num = h * sum;
end
