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
    %amplifier_data_notch = filter_notch(amplifier_data, f_notch, fs);
    
%Both bandpass filters only 

    %low freq  1 to 300 Hz bandpass
    %filter_1_to_300_Hz = filter_bandpass(amplifier_data_notch, 200, 4000, fs);

    %high freq 250 to 4k Hz bandpass
    %filter_250_to_4k_Hz = filter_bandpass(amplifier_data_notch, f3, f4, fs);

%Both bandpass filters + notch each individually

    %low freq bandpass + notch
    %filter_bandpass_notch = filter_bandpass(amplifier_data_notch, f1, f2, fs);

    %high freq bandpass + notch
    %filter_bandpass_notch = filter_bandpass(amplifier_data_notch, f3, f4, fs);

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');