clear
addpath("functions\")
addpath("UI\")

%Importing Intan Data
importIntanData()

%parameters 
f_notch = 50; %notch filter freq
fs = 30000; %sampling freq

%notch filter single
channel = 1; 
amplifier_data_notch = notch(t, amplifier_data, f_notch, fs, channel);

%notch filer all
amplifier_data_notchall = notchall (t, amplifier_data, f_notch, fs);

%stasios code
%parameters
%fn = fs/2; %Nyquist freq
%f0 = 6; %order
f1 = 1;
f2 = 300; 
f3 = 250;
f4 = 4000;

%filter single - low freq 1 to 300 Hz 
bandpass_1_to_300_Hz = bandpass_lowfreq(f1, f2, fs, t, amplifier_data_notch);

%filter single - high freq 250 to 4k Hz 
bandpass_250_to_4k_Hz = bandpass_highfreq(f3, f4, fs, t, amplifier_data_notch);

%bandpassfilter single - low freq + high freq
bandpass_250_to_4k_Hz = bandpass_highfreq_2(f3, f4, fs, t, bandpass_1_to_300_Hz);

%bandpassfilter all - low freq + high freq
bandpass_all_1_to_300_Hz = bandpass_all_lowfreq(f1, f2, fs, t);

%interface
interfacedesign()

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');