
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
amplifier_data_notch = notch(amplifier_data, f_notch, fs);

%%%%notch filer all
%amplifier_data_notch_all = notch_all(amplifier_data, f_notch, fs);

%parameters
%fn = fs/2; %Nyquist freq
%f0 = 6; %order
 f1 = 1;
 f2 = 100;
 f3 = 50;
 f4 = 4000;

% 2 bandpass filters for single channel buttons

%low freq  1 to 300 Hz bandpass
%filter_1_to_300_Hz = filter_lowfreq(200, 4000, fs, amplifier_data_notch);

%lhigh freq 250 to 4k Hz bandpass
%filter_250_to_4k_Hz = filter_highfreq(f3, f4, fs, amplifier_data_notch);

%%%%%%individual filters and notch combined (single channel and maybe add all
%for each)

%low freq bandpass + notch
%filter_lowfreq_notch = filter_lowfreq(f1, f2, fs, amplifier_data_notch);

%high freq bandpass + notch
%filter_highfreq_notch = filter_highfreq(f3, f4, fs, amplifier_data_notch);

%low and high bandpass filters and notch combined (single channel and all channels)

%bandpassfilter single channel - low freq + high freq + notch
%bandpass_notch_single = filter_highfreq(f3, f4, fs, filter_lowfreq_notch);

%%%%%%bandpassfilter all channels - low + high freq + notch
%   bandpass_notch_all = filter_highfreq_all(f3, f4, fs, filter_highfreq_notch);

%interface
interfacedesign()

%openExample('matlab/TopLevelMultiwindowAppExample','supportingFile','DialogAppExample');appdesigner('MainAppExample');