%% Spectral analysis
f=(0:N_sample/2)/(N_sample*Ts);
spect_out=abs(fft(out))/N_sample;
spect_out=spect_out(1:N_sample/2+1);
spect_eq=abs(fft(error))/N_sample;
spect_out(1)=0;                            
spect_eq(1)=0;                              
spect_nd=spect_out;                                                  
spect_n=spect_nd;                          
spect_n([3:2:15])=0;                        
spect_n([N_sample/2-8:2:N_sample/2])=0;     
s=find(spect_out==max(spect_out));
Ps=2*spect_out(s)^2;  
r=find(spect_out>10^(-4));
spect_n(r)=0;
spect_nd(s)=0;
PQ=sum(spect_eq.^2);                       
PNDR=sum(spect_nd.^2)*2;                    
PN=sum(spect_n.^2)*2;                       
sqnr_db=10*log10(Ps/PQ);
snr_db=10*log10(Ps/PN);
sndr_db=10*log10(Ps/PNDR);
sfdr_db=10*log10(Ps/(2*max(spect_nd(1:end)).^2));
ENOB=(sndr_db-1.76)/6.02;

