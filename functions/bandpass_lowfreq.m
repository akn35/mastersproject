function bandpass_1_to_300_Hz = bandpass_lowfreq (f0, f1, f2, fs, t, data)
bpFilt1 = designfilt('bandpassiir', 'FilterOrder', f0, 'HalfPowerFrequency1', f1, 'HalfPowerFrequency2', f2, 'SampleRate', fs);
bandpass_1_to_300_Hz = filter(bpFilt1, data);
figure (2)
plot(t(1:end),bandpass_1_to_300_Hz(1,1:end))