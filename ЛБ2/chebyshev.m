function x_ch = chebyshev(n, a, b)
 
x_ch = zeros(size(n));

for m = 0:n-1
    x_ch(m+1) = (b + a) / 2 + (b - a) / 2 * cos((2 * m + 1) * pi / (2 * n));     
end