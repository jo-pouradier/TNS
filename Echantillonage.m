function [s,k]=Echantillonage(A,f0,phi,kd,kf)
k=kd:kf;
s=A*sin(2*pi*k*f0+phi);
end