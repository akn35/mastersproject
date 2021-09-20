function amplifier_data_notch_all = notch_all(data, f_notch, fs)
%notch (t, data, notch filter frequency, sampling frequency, channel to start at (only if plotting 8 channels), set at 0 if not plotting all and 1 if plotting 32)
wo = f_notch/(fs/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch_all = filtfilt(b,a, data);

    


