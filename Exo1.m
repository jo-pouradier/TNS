clear variables;close all;

[s1,k1]=Echantillonage(2,(1/34),0,0,26);
[s2,k2]=Echantillonage(-4,(1/26),(pi/2),-13,13);
[s3,k3]=Echantillonage(1,(3/32),(pi/4),-10,10);
[s4,k4]=Echantillonage(1,(1/(2*sqrt(23))),(pi/2), 0,50);

figure(1);
subplot(221);stem(k1,s1);xlabel('k1');ylabel('s1(k1)');title('s1(k1)');
subplot(222);stem(k2,s2);xlabel('k2');ylabel('s2(k2)');title('s2(k2)');
subplot(223);stem(k3,s3);xlabel('k3');ylabel('s3(k3)');title('s3(k3)');
subplot(224);stem(k4,s4);xlabel('k4');ylabel('s4(k4)');title('s4(k4)');