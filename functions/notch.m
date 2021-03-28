function notch(time, data, f_notch, fs)
wo =f_notch/(fs/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch = filtfilt(b,a, data);
figure(1)
plot(time(1:end),amplifier_data_notch(1,1:end))