function amplifier_data_notch_all = notch_all(t, data, f_notch, fs, start_channel, all_channels)
%notch (t, data, notch filter frequency, sampling frequency, channel to start at (only if plotting 8 channels), set at 0 if not plotting all and 1 if plotting 32)
wo = f_notch/(fs/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch_all = filtfilt(b,a, data);

%plotting
figure; hold on;

if all_channels == 0
    tiledlayout(8 ,1)
    for x = 0:7
        nexttile
        plot(t(1:end),amplifier_data_notch_all( x + start_channel, 1:end))  
    end
else 
    tiledlayout(8 ,4)
    for x = 1:32
       nexttile
       plot(t(1:end),amplifier_data_notch_all( x , 1:end))
    end
end

    


