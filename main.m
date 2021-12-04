clear
addpath("functions\")
addpath("UI\")

%ImportIntanData
importIntanData;
            
%interface
interfacedesign()

%Filters

%Params

    %f_notch = 50;
    %fs = 30000;
    %f1 = 1;
    %f2 = 300;
    %channel = 1;
       
%notch filter only

    %amplifier_data_notch = filter_notch(amplifier_data, f_notch, fs);
    
%bandpass filter only

    %amplifier_data_bandpass = filter_bandpass(amplifier_data, f1, f2, fs);

%notch and bandpass filter

    %amplifier_data_notch_&_bandpass = filter_bandpass(amplifier_data_notch, f1, f2, fs);
    
%plot single channel
    
    %plot(t(1:end), amplifier_data_notch(channel, 1:end));

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');