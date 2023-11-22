clc; clear All;

left_board = -0.9;
right_board = 0.9;
b0 = -1 / sqrt(1-left_board^2) + 1;  
bn = -1 / sqrt(1-right_board^2) + 1;
n = 10;
X = 0.2;

x_ch = chebyshev(n, left_board, right_board);

x_ch = sort(x_ch);
h = [0, diff(x_ch)];
y = @(x) acos(x) + x;

a = y(x_ch);
c = find_c(n, h, a);
d = find_d(n, h, c);
b = find_b(n, h, a, c, d, b0, bn);


[splines, f_X] = spline(n, x_ch,a, b, c, d, X);

create_spline(n, x_ch, y, splines, X, f_X)

error = abs(y(0.2) - f_X);
