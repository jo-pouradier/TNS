clear variables; close all;

A1=8;
A2=5;
nu1=271;
nu2=1147;
phi1=90;
phi2=90;
td=-10.12e-3;
tf=10.12e-3;
nue=5e3;
Te=1/nue;

[x,t,K]=SommeEchant(A1,nu1,phi1,A2,nu2,phi2,td,tf,nue);

figure(1);
subplot(211); stem(t*1000,real(x));
subplot(212);stem(t*1000,imag(x));

%réorganisation du signal
x2=x(length(t)/2:length(t));

for i=1:length(t)-1
    if t(i)<0
        x2=[x2,x(i)];    
    end
end

figure(2);
stem(1:length(x2),x2);

N=512;
X=fft(x2,N);
figure(3);
stem(-0.5*(nue-nue/N):nue/N:0.5*(nue-nue/N),abs(X),'.');

N=101;
X2=fft(x,N);
figure(4);
stem(-0.5*(nue-nue/N):nue/N:0.5*(nue-nue/N),abs(X2))

