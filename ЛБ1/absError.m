function error = absError(x)

t_l = 0.1:0.4:1.3;
t_n = [0.1, 0.5, 1.1, 1.3];
t_ch = chebyshev(10, 0.1, 1.3);

ff = 1 ./ x.^2;

L = lagrange(t_l, 1 ./ t_l.^2, x);
L_ch = lagrange(t_ch, 1 ./ t_ch.^2, x);
N = newton(t_n, 1 ./ t_n.^2, x);


error = zeros(1,3);

error(1) = abs(ff - L);
error(2) =  abs(ff - L_ch);
error(3) = abs(ff - N);

end
