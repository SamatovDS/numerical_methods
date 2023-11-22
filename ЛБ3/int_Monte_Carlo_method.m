function ans = int_Monte_Carlo_method(f, a, b, eps, delta)
    N = 1 / (4 * eps^2 * delta);
    under = 0;

    for i = 1:N
        x_val = rand(1) * (b - a) + a;
        under = under + f(x_val);
    end
    ans = under / N;
end