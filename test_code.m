clear all;

% constant
ORDER = 2;

% input is randn
% input_data = load( "input_x.mat" );    % randn 100*1 matrix
% x = input_data.x;

% input is impulse
x = [ 1 zeros( 1, 39 ) ];

% a = ones( 1, ORDER ) / ORDER;    % moving average

% text coefficient
b = [1 .1 .2];    % convergence
a = [1 1 1];
% b = [1 0.1 2];    % divergence
% a = [1 1 1];

% original filter
% y = FIR( x, a, ORDER );
y = IIR( x, a, b, ORDER );

plot_t = 1 : 100;
% plot( plot_t, x );
stem( x );
hold on;

% plot( plot_t, y );    % filter data plot
stem( y );

% check moving average
% y_m = filter( a, 1, x );    % MATLAB function
% plot( plot_t, y_m);

legend( 'input data', 'filter data' );