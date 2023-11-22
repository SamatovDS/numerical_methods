function yy = newtonL(x, y, xx)

N = length(x);
dd = zeros(size(x));

for k = 1:N
    for i = 1:k
        w = 1;
        for j = 1:k
            if i ~= j
                w = w / (x(i) - x(j));
            end
        end
        
        dd(k) = dd(k) + y(i) * w;
    end
end

yy = dd(N) * ones(size(xx));
for i = N-1:-1:1
    yy = dd(i) + (xx - x(i)) .* yy;
end