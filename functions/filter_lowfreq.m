function output = filter_lowfreq(f1, f2, fs, data)
output = bandpass(data, [f1 f2], fs, 'StopbandAttenuation', 10, 'Steepness',0.5);

