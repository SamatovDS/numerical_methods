function [splines, f_X] = spline(n, x_ch, a, b, c, d, X)
    splines = zeros(n-1, 100);

    for i = 2:n
        xx = linspace(x_ch(i-1), x_ch(i), 100);
        
        for j = 1:length(xx)
            splines(i, j) = a(i) + b(i) * (xx(j) - x_ch(i)) + c(i) * (xx(j) - x_ch(i))^2 / 2 + d(i) * (xx(j) - x_ch(i))^3 / 6;
        
        if (x_ch(i-1) <= X) && (X < x_ch(i))
            f_X = a(i) + b(i) * (X - x_ch(i)) + c(i) * (X - x_ch(i))^2 / 2 + d(i) * (X - x_ch(i))^3 / 6;
        end
        
        end
    end
end