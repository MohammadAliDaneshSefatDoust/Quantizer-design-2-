Fin=5.49621582*10^6;              %input frequency
N_sample=32768;                   %number of samples
Fs=100000000;                     %sampling rate
Ts=(1/100000000);                 %TS=1/sampling rate
t=(0:1:32767).*Ts;                %time
Vin=0.1*sin(2*pi*Fin*t);            %input
Vin=Vin+0.1*Vin.^2-0.5*Vin.^3;
Numbits=15;
FSV=2*1;                          %Full Scale Voltage
LSB=(FSV)/(2^Numbits);            %Least Significant Bit
