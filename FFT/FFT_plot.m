% Output
% y  : fft data
% Input
% x  : input data
% fs : sampling frequency

function y = FFT_plot( x, fs )

    % calculate plota data
    y = fft( x );
    plot_tmp = abs( y );
    data_len = length( x );
    plot_data = plot_tmp( 1 : data_len / 2 + 1 );    % only one side

    % plot original data
    ts = 1 / fs;              % sampling period       
    plot_t  = ( 0 : data_len - 1 ) * ts;

    subplot( 2, 1, 1 );    % 2*1 matrix
    plot( plot_t, x );
    title( 'Original data' );
    xlabel('time [s]');
    ylabel('input data');
    
    % plot fft data
    plot_f = fs * ( 0 : (data_len / 2) ) / data_len;
    
    subplot( 2, 1, 2 );    % 2*1 matrix
    plot( plot_f, plot_data );
    title( 'FFT data' );
    xlabel( 'frequency [Hz]' );
    ylabel( 'frequency spectrum' );

end