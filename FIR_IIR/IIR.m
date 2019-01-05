% Output
% y : filter data
% Input
% x : input data
% a, b : coefficient  1*(n+1) matrix
% n : orders

function y = IIR( x, a, b, n )

    y = [];

    for i = 1 : length( x )
        y_k = 0;
        for j = 0 : n    % repeat as many as the number of orders
            if j == 0
                x_tmp = x(i - j);
                y_tmp = 0;
            else
                if i > j    % delay data
                    x_tmp = x(i - j);
                    y_tmp = y(i - j);
                else
                    x_tmp = 0;
                    y_tmp = 0;
                end
            end
            y_k = y_k + x_tmp * a(j + 1) - y_tmp * b(j + 1);
        end
        y = [ y; y_k ];
    end
















end