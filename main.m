clear

%Importing Intan Data
addpath("functions\")
intanDataImport()

notch(t, amplifier_data ,50, 30000)
