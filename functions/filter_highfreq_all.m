function output = filter_highfreq_all(f3, f4, fs, t, data, start_channel, all_channels )
output = bandpass(data, [f3 f4], fs);
%plotting
figure; hold on;

if all_channels == 0
    tiledlayout(8,1);
    for y = 0:7
        nexttile
        plot(t(1:end),output( y + start_channel,1:end))  
    end 
else
    tiledlayout(8 ,4)
    for y = 1:32
        nexttile
        plot(t(1:end),output( y,1:end))  
    end
    
end