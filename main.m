clear
addpath("functions\")
addpath("UI\")

%Importing Intan Data
importIntanData()

%notch filter
%parameters 
f_notch = 50; %notch filter freq
fs = 30000; %sampling freq
channel = 1; 
amplifier_data_notch = notch(t, amplifier_data, f_notch, fs, channel);

%stasios code
%parameters
%fn = fs/2; %Nyquist freq
%f0 = 6; %order
f1 = 1;
f2 = 300; 
f3 = 250;
f4 = 4000;

%bandpassfilter - low freq 1 to 300 Hz 
bandpass_1_to_300_Hz = bandpass_lowfreq(f1, f2, fs, t, amplifier_data_notch);

%bandpassfilter - high freq 250 to 4k Hz
bandpass_250_to_4k_Hz = bandpass_highfreq(f3, f4, fs, t, amplifier_data_notch);

%interface
interfacedesign()

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');