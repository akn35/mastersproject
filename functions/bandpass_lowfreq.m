function bandpass_1_to_300_Hz = bandpass_lowfreq(f1, f2, fs, t, data)
bandpass_1_to_300_Hz = bandpass(data, [f1 f2], fs);
figure (2)
plot(t(1:end),bandpass_1_to_300_Hz(1,1:end))