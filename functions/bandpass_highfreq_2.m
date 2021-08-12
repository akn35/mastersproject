function bandpass_250_to_4k_Hz = bandpass_highfreq_2(f3, f4, fs, t, data)
bandpass_250_to_4k_Hz = bandpass(data,[f3 f4], fs); 
figure (4)
plot(t(1:end),bandpass_250_to_4k_Hz(1,1:end))