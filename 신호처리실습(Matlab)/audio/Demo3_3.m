clc;
clear;
clc;
clear;
c1=1;
c2=5;
c3=4;
c4=2;
c5=1;
w=1;
[y,fs]=audioread('Audio_Pop01_15sec.wav');%y는오디오 신호 fs는 샘플 주파수
n=linspace(0,fs/2,fs+1);
Cutoff=500;%Hz Omega는 f*2pi?
f=linspace(0,15,length(y));
[f0,Xf]=myfun_SA(f,y);
[numd_lp,dend_lp]=butter(7,Cutoff/(fs/2),'low');
[numd_bp1,dend_bp1]=butter(6,[500/(fs/2),1500/(fs/2)],'bandpass');
[numd_bp2,dend_bp2]=butter(6,[1500/(fs/2),2500/(fs/2)],'bandpass');
[numd_bp3,dend_bp3]=butter(6,[2500/(fs/2),3500/(fs/2)],'bandpass');
[numd_bp4,dend_bp4]=butter(10,3500/(fs/2),'high');
CH1=filter(numd_lp,dend_lp,y);
[f0,X1]=myfun_SA(f,CH1);
CH2=filter(numd_bp1,dend_bp1,y);
[f0,X2]=myfun_SA(f,CH2);
CH3=filter(numd_bp2,dend_bp2,y);
[f0,X3]=myfun_SA(f,CH3);
CH4=filter(numd_bp3,dend_bp3,y);
[f0,X4]=myfun_SA(f,CH4);
CH5=filter(numd_bp4,dend_bp4,y);
[f0,X5]=myfun_SA(f,CH5);
%sound(CH1,fs);%sound(오디오 신호y, 오디오 샘플링주파수fs) 
%sound(CH2,fs);%sound(오디오 신호y, 오디오 샘플링주파수fs) 
%sound(CH3,fs);%sound(오디오 신호y, 오디오 샘플링주파수fs) 
%sound(CH4,fs);%sound(오디오 신호y, 오디오 샘플링주파수fs) 
%sound(CH5,fs);%sound(오디오 신호y, 오디오 샘플링주파수fs) 


figure(4)
subplot(521)
plot(f,CH1);
xlabel('Time [sec]');
ylabel('CH1 out,y[n]')
subplot(522)
plot(f0,abs(X1));
xlabel('Freq [Hz]');
xlim([0 5000]);
subplot(523)
plot(f,CH2);
xlabel('Time [sec]');
ylabel('CH1 out,y[n]')
subplot(524)
plot(f0,abs(X2));
xlabel('Freq [Hz]');
xlim([0 5000]);
subplot(525)
plot(f,CH3);
xlabel('Time [sec]');
ylabel('CH1 out,y[n]')
subplot(526)
plot(f0,abs(X3));
xlabel('Freq [Hz]');
xlim([0 5000]);
subplot(527)
plot(f,CH4);
xlabel('Time [sec]');
ylabel('CH1 out,y[n]')
subplot(528)
plot(f0,abs(X4));
xlabel('Freq [Hz]');
xlim([0 5000]);
subplot(529)
plot(f,CH5);
xlabel('Time [sec]');
ylabel('CH1 out,y[n]')
subplot(5,2,10)
plot(f0,abs(X5));
xlabel('Freq [Hz]');
xlim([0 5000]);

%밑은 4-6번문제임
Ch=CH1*c1+CH2*c2+CH3*c3+CH4*c4+CH5*c5;
c0=sqrt(sum(y.^2)/sum(Ch.^2));
mixed=c0*Ch;
y_n=mixed*w;
[f0,y_t]=myfun_SA(f,y_n);
sound(y_n,fs);
figure(5) 
subplot(211)
plot(f,y,'r');
hold on
plot(f,y_n,'k');
xlabel('Time [sec]');
ylabel('Audio signal');
legend('input','output');
subplot(212)
plot(f0,abs(Xf),'r');
hold on
plot(f0,abs(y_t),'k');
xlim([0 5000]);



















