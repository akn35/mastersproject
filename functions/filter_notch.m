function output = filter_notch(data, f_notch, fs)
    % Applies a notch filter to given data.
    %
    % Params
    % - data:    array of datapoints to apply filter on.
    % - f_notch: frequency of the notch.
    % - fs:      sampling frequency of the input data.
    %
    % Return
    % - data with filter applied (same size as input).

    w0 = f_notch/(fs/2);
    bw = w0/35;
    [a,b] = iirnotch(w0,bw);
    output = filtfilt(a,b, data);
end
