
clear
addpath("functions\")
addpath("UI\")

%ImportIntanData
importIntanData;
            
%interface
interfacedesign()

%Filters

%notch filter only

    %notch filter single
    %amplifier_data_notch = notch(amplifier_data, f_notch, fs);
    
%Both bandpass filters only 

    %low freq  1 to 300 Hz bandpass
    %filter_1_to_300_Hz = filter_lowfreq(200, 4000, fs, amplifier_data_notch);

    %high freq 250 to 4k Hz bandpass
    %filter_250_to_4k_Hz = filter_highfreq(f3, f4, fs, amplifier_data_notch);

%Both bandpass filters + notch each individually

    %low freq bandpass + notch
    %filter_lowfreq_notch = filter_lowfreq(f1, f2, fs, amplifier_data_notch);

    %high freq bandpass + notch
    %filter_highfreq_notch = filter_highfreq(f3, f4, fs, amplifier_data_notch);

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');