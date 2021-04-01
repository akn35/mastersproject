function bandpass_250_to_4k_Hz = bandpass_highfreq (f0, f3, f4, fs, t, data)
bpFilt2= designfilt('bandpassiir', 'FilterOrder', f0, 'HalfPowerFrequency1', f3, 'HalfPowerFrequency2', f4, 'SampleRate', fs);
bandpass_250_to_4k_Hz = filter(bpFilt2, data);
figure (3)
plot(t(1:end),bandpass_250_to_4k_Hz(1,1:end))