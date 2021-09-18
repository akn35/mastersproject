clear
addpath("functions\")
addpath("UI\")

%Importing Intan Data
importIntanData()

%parameters 
f_notch = 50; %notch filter freq
fs = 30000; %sampling freq

%notch filter only

    %notch filter single
    channel = 1; 
    amplifier_data_notch = notch(t, amplifier_data, f_notch, fs, 1);

    %notch filer all
    amplifier_data_notch_all = notch_all(t, amplifier_data, f_notch, fs, 1, 0);

%stasios code
%parameters
%fn = fs/2; %Nyquist freq
%f0 = 6; %order
f1 = 1;
f2 = 300; 
f3 = 250;
f4 = 4000;

%bandpass only
%bandpassfilter single - low + high
    
    %low freq  1 to 300 Hz
    filter_1_to_300_Hz = filter_lowfreq(f1, f2, fs, t, amplifier_data, 1);
    
    %low freq  1 to 300 Hz + high freq 250 to 4k Hz
    bandpass_single = filter_highfreq(f3, f4, fs, t, filter_1_to_300_Hz, 1);
    
%individual filters and notch combined (single channel and maybe add all
%for each)

    %low freq + notch
    filter_lowfreq_notch = filter_lowfreq(f1, f2, fs, t, amplifier_data_notch, 1);

    %high freq + notch
    filter_highfreq_notch = filter_highfreq(f3, f4, fs, t, amplifier_data_notch, 1);

%bandpass filter and notch combined (single channel and all channels)
    
    %bandpassfilter single channel - low freq + high freq + notch
    bandpass_notch_single = filter_highfreq(f3, f4, fs, t, filter_lowfreq_notch, 1);

    %bandpassfilter all channels - low + high freq + notch
    bandpass_notch_all = filter_highfreq_all(f3, f4, fs, t, filter_lowfreq_notch, 1, 0);

%interface
interfacedesign()

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');