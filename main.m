clear

%Importing Intan Data
addpath("functions\")
intanDataImport()

%notch(50, 30000)
wo =50/(30000/2);
bw = wo/35;
[b,a] = iirnotch(wo,bw);
amplifier_data_notch = filtfilt(b,a,amplifier_data);
figure(1)
plot(t(1:end),amplifier_data_notch(1,1:end))