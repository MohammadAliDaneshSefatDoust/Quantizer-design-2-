function out=quantizer(a)
n=15;
lsb=2/(2^n);
vth=-1+lsb;
out=-1;
for i=1:((2^n)-1)
if a >=vth
out =-1+i*lsb;
vth=vth+lsb;
end
end
out=out+lsb/2;