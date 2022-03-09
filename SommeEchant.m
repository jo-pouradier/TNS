    function [x,t,K]=SommeEchant(A1,nu1,phi1,A2,nu2,phi2,td,tf,nue)

%on convertie les angles en radiant
phi1=phi1*(pi/180);
phi2=phi2*(pi/180);

%passage temps/indice
kd=ceil(td*nue);
kf=floor(tf*nue);

%fréquence réduite
f1=nu1/nue;
f2=nu2/nue;

%appelle de la premiere fonction
[s1,k1]=Echantillonage(A1,f1,phi1,kd,kf);
[s2,k2]=Echantillonage(A2,f2,phi2,kd,kf);

%parametre de sortie
x=s1+s2;
t=k1/nue;
K=length(x);

end