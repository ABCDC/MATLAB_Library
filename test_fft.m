clear all;
close all;

% make input data
fs = 1000;    % sample frequency                    
ts  = 1/fs;
len  = 1000;
t  = ( 0 : len - 1 ) * ts;

tmp = sin( 2 * pi * 150 * t );                % sin(2?/T*t)   T:period
input_data = tmp + randn( 1, len );    % add white noise

% test original function
y = FFT_plot( input_data, fs );