function output = notch(data, f_notch, fs)
    % Applies a notch filter to given data.
    %
    % Params
    % - data:    array of datapoints to apply filter on.
    % - f_notch: frequency of the notch.
    % - fs:      sampling frequency of the input data.
    %
    % Return
    % - data with filter applied (same size as input).

    wo = f_notch/(fs/2);
    bw = wo/35;
    [b,a] = iirnotch(wo,bw);
    output = filtfilt(b,a, data);
end
