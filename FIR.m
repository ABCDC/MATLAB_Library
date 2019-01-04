% Output
% y : filter data
% Input
% x : input data
% a : coefficient  1*(n+1) matrix
% n : orders

function y = FIR( x, a, n )

    y = [];

    for i = 1 : length( x )
        y_k = 0;
        for j = 0 : n - 1          % repeat as many as the number of orders
            if i > j
                x_k = x(i - j);    % delay data
            else
                x_k = 0;
            end
            y_k = y_k + x_k * a(j + 1);
        end
        y = [ y; y_k ];
    end
















end