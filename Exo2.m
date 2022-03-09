clear variables;close all;

A1=8;
A2=5;
nu1=271;
nu2=1147;
phi1=25;
phi2=38;
td=0;
tf=18.41e-3;
nue=5e3;
Te=1/nue;

[x,t,K]=SommeEchant(A1,nu1,phi1,A2,nu2,phi2,td,tf,nue);


figure(1);
stem(t*1000,x);xlabel('t (en ms)');ylabel('s(t)');title('s(t)');xlim([-inf inf]);
