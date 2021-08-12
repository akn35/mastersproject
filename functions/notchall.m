function amplifier_data_notchall = notchall (t, data, f_notch, fs)
%notch (t, data, notch filter frequency, sampling frequency)
wo = f_notch/(fs/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch = filtfilt(b,a, data);
%plotting
x = 0;
tiledlayout(8,1)
while x < 8
    
    x = x + 1;
    nexttile
    plot(t(1:end),amplifier_data_notch( x ,1:end));

end 



