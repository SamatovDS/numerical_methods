function c = find_c(n, h, y)
 
    A = zeros(n-2, n-2);
    
    for i = 2:(n-1)
        A(i-1, i-1) = h(i);
        A(i-1, i) = 2 * (h(i) + h(i+1));
        A(i-1, i+1) = h(i+1);
    end

    A(:, [1, 10]) = [];
    B = zeros(n-2, 1);
    
    for i = 2:(n-1)
        B(i-1) = 6 * ((y(i+1) - y(i)) / h(i+1) - (y(i) - y(i-1)) / h(i)); 
    end
    
    C = horzcat(A,B);

    for column = 1:7
        [el_max, index_max] = max(abs(C(column:8, column)));
        index_max = index_max + column - 1;
        C([column, index_max],:) = C([index_max, column],:);
        for row = column+1:8
           C(row, :) = C(row, :) - C(column, :) * C(row, column) / C(column, column);
        end
    end

    c = zeros(n-2, 1);

    for i = 8:-1:1
       sum = 0;
       for j = i+1:8
           sum = sum + c(j) * C(i,j);
       end
       c(i) = (C(i,9) - sum) / C(i,i);
    end
  
    cn = 1 / h(n-1) * (6 * ((y(n) - y(n-1)) / h(n) - (y(n-1) - y(n-2)) / h(n-1)) - c(n-4) * h(n-1) - 2 * (h(n-1) + h(n)) * c(n-3));
    c = vertcat(0, c, cn);
end