clc
clear all
close all
warning off
%Elapsed time is "tic - toc"
tic  
%--------input"Vin=1*sin(2*pi*Fin*t)"
inputs
%--------The main function & function Of quantizer  
main_loop
%--------Spectral analysis
Spectral_analysis
%Elapsed time is "tic - toc"
toc;
%--------print(SQNR,SNR,SNDR,SFDR,ENOB)
fprint
%--------Figure section
Figures           
