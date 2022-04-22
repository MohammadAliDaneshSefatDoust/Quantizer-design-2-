for j=1:N_sample
out(j)=quantizer(Vin(j));
error(j)=Vin(j)-out(j);
end