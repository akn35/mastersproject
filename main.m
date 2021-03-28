clear
addpath("functions\")

%Importing Intan Data
intanDataImport()

%notch filter
%parameters 
f_notch = 50;
fs = 30000;
notch(t, amplifier_data, f_notch, fs)
