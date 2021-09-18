function output = filter_highfreq(f3, f4, fs, t, data, channel)
output = bandpass(data,[f3 f4], fs); 
figure;hold on;
plot(t(1:end),output(channel,1:end))