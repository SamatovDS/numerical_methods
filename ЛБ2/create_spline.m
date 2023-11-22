function create_spline(n, x_ch, y, splines, X, f_X)

    figure('Color', 'w')
    fplot(y, [-0.9 0.9])
    
    for i = 2:n
        xx = linspace(x_ch(i-1), x_ch(i), 100);
        
        hold on
        plot(xx, splines(i, :), 'r')

        plot(X, f_X, '*')
        plot(x_ch, y(x_ch), 'bo')
        hold off
        
        grid on
        grid minor

    end
    
    title('Сплайн интерполяция');
    legend('arccos(x) + x', 'S (интерполяция)', 'Значение S(0.2)', 'узлы')
    xlabel('x')
    ylabel('y')
end