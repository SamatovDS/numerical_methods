x = [0.1, 0.5, 1.1, 1.3];
y = 1 ./ x.^2;

xx = linspace(0.1, 1.3, 1000);
yy = newtonL(x, y, xx);

figure('Color', 'w')
fplot(@(x) 1 ./ x.^2, [0.1 1.3])

hold on
plot(xx, yy, 'r')
plot(x, y, 'bo')
plot(0.8, -6.65851, 'bo')
hold off

title('Интерполирование полиномом Ньютона');
legend('1/x^2', 'P_n (интерполяция)', 'узлы')
xlabel('x')
ylabel('y')
