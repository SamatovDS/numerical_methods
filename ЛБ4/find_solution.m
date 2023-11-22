function u = find_solution(x, y, hx, hy)
    u = zeros(length(x), length(y));
    
    for i = 1:length(x)
        u(i,i) = 1 - 2 * x(i);
    end
    
    for diag = 1:length(x)
        for i = diag:length(x)-1
            j = i-diag+1; 
            u(i+1,j) = (u(i,j) * (2 - (u(i,j) - x(i)) / hx) + u(i+1,j+1) * (y(j) - u(i,j)) / hy) / ...
            ((x(i) - u(i,j)) / hx + (y(j) - u(i,j)) / hy);
        end
    end
end