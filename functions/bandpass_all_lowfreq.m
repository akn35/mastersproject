function bandpass_all_1_to_300_Hz = bandpass_all_lowfreq(f1, f2, fs, t, data)
bandpass_all_1_to_300_Hz = bandpass(data, [f1 f2], fs);
%plotting
y = 1;
tiledlayout(2,1);
plot(t(1:end),bandpass_all_1_to_300_Hz(y,1:end));
while y <= 30
    
    y = y + 1;
    nexttile
    plot(t(1:end),bandpass_all_1_to_300_H( y ,1:end));

end 
