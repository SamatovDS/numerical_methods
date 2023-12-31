x = chebyshev(10, 0.1, 1.3);
y = 1./x.^2;
% задание точек, в которых требуется найти значения интерполяционного полинома
xx = linspace(0.1,1.3,1000);
% нахождение значений интерполяционного полинома
yy = lagrange(x,y,xx);
% построение графиков
figure('Color','w')
% вывод графика sin(x)
fplot(@(x) 1./x.^2, [0.1 1.3])
hold on
% вывод графика полинома
plot(xx,yy,'r')
% вывод узлов интерполяции
plot(x,y,'bo')
%plot(0.8, -1.8321,'bo')
hold off
% заголовок
title('Интерполирование полиномом Лагранжа');
% размещение легенды
legend('1/x^2','L_n (интерполяция)','узлы')
xlabel('x')
ylabel('y')