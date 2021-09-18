function output = filter_lowfreq(f1, f2, fs, t, data, channel)
output = bandpass(data, [f1 f2], fs);
figure;hold on;
plot(t(1:end),output(channel,1:end))