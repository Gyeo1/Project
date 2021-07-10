clc;
clear;
%원
t=linspace(0,2*pi,1000);
r=1;
center=([0,0]);
x1=r*cos(t)+center(1);
y1=r*sin(t)+center(2);

[y,fs]=audioread('Audio_Pop01_15sec.wav');%y는오디오 신호 fs는 샘플 주파수
n=linspace(0,fs/2,fs);
Cutoff=500;%Hz Omega는 f*2pi?

figure(2)
[numd_lp,dend_lp]=butter(7,Cutoff/((fs*2*pi)/2),'low');
Hd=freqz(numd_lp,dend_lp,length(n));
plot(n,abs(Hd));
[z1,p1,k1]=tf2zp(numd_lp,dend_lp);
hold on
[numd_bp1,dend_bp1]=butter(12,[(500)/((fs*2*pi)/2),(1500)/((fs*2*pi)/2)],'bandpass');
Hd=freqz(numd_bp1,dend_bp1,length(n));
[z2,p2,k2]=tf2zp(numd_bp1,dend_bp1);
plot(n,abs(Hd));
[numd_bp2,dend_bp2]=butter(12,[1500/(fs/2),2500/(fs/2)],'bandpass');
Hd=freqz(numd_bp2,dend_bp2,length(n));
[z3,p3,k3]=tf2zp(numd_bp2,dend_bp2);
hold on
plot(n,abs(Hd));
[numd_bp3,dend_bp3]=butter(12,[2500/(fs/2),3500/(fs/2)],'bandpass');
Hd=freqz(numd_bp3,dend_bp3,length(n));
[z4,p4,k4]=tf2zp(numd_bp3,dend_bp3);
hold on
plot(n,abs(Hd));
[numd_bp4,dend_bp4]=butter(10,3500/(fs/2),'high');
Hd=freqz(numd_bp4,dend_bp4,length(n));
[z5,p5,k5]=tf2zp(numd_bp4,dend_bp4);
hold on
plot(n,abs(Hd));
xlim([0,5000]);
grid on
xlabel('Freq [Hz]');
ylabel('Freq response |H(f)|')
legend('CH1 filter','CH2 filter','Ch3 filter','Ch4 filter','Ch5 filter');

figure(3)
subplot(321);
plot(x1,y1,':');
hold on
plot(real(z1),imag(z1),'o');
hold on
plot(real(p1),imag(p1),'x');


subplot(322);
plot(x1,y1,':');
hold on
plot(real(z2),imag(z2),'o');
hold on
plot(real(p2),imag(p2),'x');
subplot(323);
plot(x1,y1,':');
hold on
plot(real(z3),imag(z3),'o');
hold on
plot(real(p3),imag(p3),'x');
subplot(324);
plot(x1,y1,':');
hold on
plot(real(z4),imag(z4),'o');
hold on
plot(real(p4),imag(p4),'x');
subplot(325);
plot(x1,y1,':');
hold on
plot(real(z5),imag(z5),'o');
hold on
plot(real(p5),imag(p5),'x');