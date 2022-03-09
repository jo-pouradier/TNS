clear variables; close all;

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

%abscisse en indice
kd=td*nue;
kf=tf*nue;
N=1:K;
stem(t,x);
X=fft(x,K);

%abscisse en fréquence réduite
fr=(0:(K-1))/K;

%abscisse en fréquence réelle (en kHz)
f=fr*nue;

figure(1);
subplot(221);stem(N,real(X));xlabel('N');ylabel('real(X)');title('real(X) en fonction de N');xlim([-inf inf]);
subplot(222);stem(N,imag(X));xlabel('N');ylabel('imag(X)');title('imag(X) en fonction de N');xlim([-inf inf]);
subplot(223);stem(N,abs(X));xlabel('N');ylabel('abs(X)');title('abs(X) en fonction de N');xlim([-inf inf]);
subplot(224);stem(N,angle(X));xlabel('N');ylabel('angle(X)');title('angle(X) en fonction de N');xlim([-inf inf]);

figure(2);
subplot(221);stem(fr,real(X));xlabel('fr');ylabel('real(X)');title('real(X) en fonction de N');xlim([-inf inf]);
subplot(222);stem(fr,imag(X));xlabel('fr');ylabel('imag(X)');title('imag(X) en fonction de N');xlim([-inf inf]);
subplot(223);stem(fr,abs(X));xlabel('fr');ylabel('abs(X)');title('abs(X) en fonction de N');xlim([-inf inf]);
subplot(224);stem(fr,angle(X));xlabel('fr');ylabel('angle(X)');title('angle(X) en fonction de N');xlim([-inf inf]);

figure(3);
subplot(221);stem(f,real(X));xlabel('f (en kHz)');ylabel('real(X)');title('real(X) en fonction de f en kHz');xlim([-inf inf]);
subplot(222);stem(f,imag(X));xlabel('f (en kHz)');ylabel('imag(X)');title('imag(X) en fonction de f en kHz');xlim([-inf inf]);
subplot(223);stem(f,abs(X));xlabel('f (en kHz)');ylabel('abs(X)');title('abs(X) en fonction de f en kHz');xlim([-inf inf]);
subplot(224);stem(f,angle(X));xlabel('f (en kHz)');ylabel('angle(X)');title('angle(X) en fonction de f en kHz');xlim([-inf inf]);