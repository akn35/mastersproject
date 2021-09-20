function output = filter_highfreq(f3, f4, fs, data)
output = bandpass(data,[f3 f4], fs); 
