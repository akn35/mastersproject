function output = filter_bandpass(data, f1, f2, fs)
    % Wrapper function to apply a bandpass filter.
    %
    % Params
    % - data: array of datapoints to apply filter on.
    % - f1:   lower threshold of the bandpass filter.
    % - f2:   upper threshold of the bandpass filter.
    % - fs:   sampling frequency of the input data.
    %
    % Return
    % - data with filter applied (same size as input).

    output = bandpass(data, [f1 f2], fs, 'StopbandAttenuation', 10, 'Steepness', 0.5);
end

