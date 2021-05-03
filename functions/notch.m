function amplifier_data_notch = notch(t, data, f_notch, fs ,channel)
%notch (t, data, notch filter frequency, sampling frequency)
wo =f_notch/(fs/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch = filtfilt(b,a, data);
figure(1)
plot(t(1:end),amplifier_data_notch(channel,1:end))