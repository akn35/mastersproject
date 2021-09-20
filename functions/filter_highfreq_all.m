function output = filter_highfreq_all(f3, f4, fs, data)
output = bandpass(data, [f3 f4], fs);
