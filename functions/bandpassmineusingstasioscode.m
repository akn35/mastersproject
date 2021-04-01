%bandpass filter 1 to 300 Hz
%highpass filter
wp1 = f1/fn; 
ws1 = (f1/10)/fn;
Rp1 = 0.1;
Rs1 = 40;
[n1,wn1] = buttord(wp1,ws1,Rp1,Rs1);
[b_high1,a_high1] = butter(n1,wn1,'high');
%lowpass filter
wp2 = f2/fn;
ws2 = (2*f2)/fn;
Rp2 = 0.1;
Rs2 = 40;
[n2,wn2] = buttord(wp2,ws2,Rp2,Rs2);
[b_low1,a_low1] = butter(n2,wn2);

%bandpass 250 to 4k Hz
%highpass filter
wp3 = (f3+100)/fn; 
ws3 = (0.5*f3)/fn;
Rp3 = 0.1;
Rs3 = 60;
[n3,wn3] = buttord(wp3,ws3,Rp3,Rs3);
[b_high2,a_high2] = butter(n3,wn3,'high');
%lowpass filter
wp4 = f4/fn;
ws4 = (1.25*f4)/fn;
Rp4 = 0.1;
Rs4 = 120;
[n4,wn4] = buttord(wp4,ws4,Rp4,Rs4);
[b_low2,a_low2] = butter(n4,wn4);

%plot bandpass low freq
ad_o = filtfilt(b_high1,a_high1,amplifier_data_notch);
ad_1_to_300_Hz = filtfilt(b_low1,a_low1,ad_o);
figure(2)
plot(t(1:end),ad_1_to_300_Hz(1,1:end))

%plot bandpass high freq
ad_o = filtfilt(b_high2,a_high2,amplifier_data_notch);
ad_250_to_4k_Hz = filtfilt(b_low2,a_low2,ad_o);
figure(3)
plot(t(1:end),ad_250_to_4k_Hz(1,1:end))

%raw data plot
%figure()
%plot(t(1:end),amplifier_data(1,1:end))
