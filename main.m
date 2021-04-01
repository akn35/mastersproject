clear
addpath("functions\")

%Importing Intan Data
intanDataImport()

%notch filter
%parameters 
f_notch = 50; %notch filter freq
fs = 30000; %sampling freq
amplifier_data_notch = notch(t, amplifier_data, f_notch, fs);

%stasios code
%parameters
fn = fs/2; %Nyquist freq
f0 = 6; %order
f1 = 1;
f2 = 300; 
f3 = 250;
f4 = 4000;


%my filter
%bpf - low freq 1 to 300 Hz 
bandpass_1_to_300_Hz = bandpass_lowfreq (f0, f1, f2, fs, t, amplifier_data_notch);

%bpf - high freq 250 to 4k Hz)
bandpass_250_to_4k_Hz = bandpass_highfreq (f0, f3, f4, fs, t, amplifier_data_notch);

% fourier transform check on filters

%y = fft(amplifier_data);
%n = length(amplifier_data);
%f = (0:n-1)*(30000/n);
%power = abs(y).^2/n;
%y2 = fft(ad_1_to_300_Hz);
%n2 = length(ad_1_to_300_Hz);
%g = (0:n2-1)*(30000/n2);
%power2 = abs(y2).^2/n2;
%y3 = fft(bandpass_250_to_4k_Hz);
%n3 = length(bandpass_250_to_4k_Hz);
%h = (0:n3-1)*(30000/n3);
%power3 = abs(y3).^2/n3;
%figure(4)
%semilogx(f,power)
%figure(5)
%semilogx(g,power2)
%figure(6)
%semilogx(h,power3)

