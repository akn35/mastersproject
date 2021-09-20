function amplifier_data_notch = notch(data, f_notch, fs)
%notch (t, data, notch filter frequency, sampling frequency)
wo =f_notch/(fs/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch = filtfilt(b,a, data);
