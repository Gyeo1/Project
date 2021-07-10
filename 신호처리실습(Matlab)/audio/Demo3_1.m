clc;
clear;
[y1,fs1]=audioread('Audio_Voice_Male01_11sec.wav');%y는오디오 신호 fs는 샘플 주파수
[y2,fs2]=audioread('Audio_Piano01_10sec.wav');
[y3,fs3]=audioread('Audio_Pop01_15sec.wav');
[y4,fs4]=audioread('Audio_Song_Female01_10sec.wav');
[y5,fs5]=audioread('Audio_Voice_Female01_8sec.wav');
[y6,fs6]=audioread('Audio_Voice_Male01_11sec.wav');
t1=linspace(0,11,length(y1));%샘플 오디오의 신호
t2=linspace(0,10,length(y2));%샘플 오디오의 신호
t3=linspace(0,15,length(y3));%샘플 오디오의 신호
t4=linspace(0,10,length(y4));%샘플 오디오의 신호
t5=linspace(0,8,length(y5));%샘플 오디오의 신호
t6=linspace(0,11,length(y6));%샘플 오디오의 신호
[f1,X1]=myfun_SA(t1,y1);
[f2,X2]=myfun_SA(t2,y2);
[f3,X3]=myfun_SA(t3,y3);
[f4,X4]=myfun_SA(t4,y4);
[f5,X5]=myfun_SA(t5,y5);
[f6,X6]=myfun_SA(t6,y6);

figure(1)
subplot(621)
plot(t1,y1);
xlabel('Time[sec]');
ylabel('input Audio,x(t)');
title('Audio_Voice_Male01_11sec.wav');
xlim([0 11]);
subplot(622)
plot(f1,abs(X1));
xlim([0 5000]);
xlabel('Freq[Hz]');
ylabel('|X(f)|');
title('Audio_Voice_Male01_11sec.wav');

subplot(623)
plot(t2,y2);
xlabel('Time[sec]');
ylabel('input Audio,x(t)');
title('Audio_Piano01_10sec.wav');
xlim([0 11]);
subplot(624)
plot(f2,abs(X2));
xlim([0 5000]);
xlabel('Freq[Hz]');
ylabel('|X(f)|');
title('Audio_Piano01_10sec.wav');

subplot(625)
plot(t3,y3);
xlabel('Time[sec]');
ylabel('input Audio,x(t)');
title('Audio_Pop01_15sec.wav');
xlim([0 15]);
subplot(626)
plot(f3,abs(X3));
xlim([0 5000]);
xlabel('Freq[Hz]');
ylabel('|X(f)|');
title('Audio_Pop01_15sec.wav');

subplot(627)
plot(t4,y4);
xlabel('Time[sec]');
ylabel('input Audio,x(t)');
title('Audio_Song_Female01_10sec.wav');
xlim([0 10]);
subplot(628)
plot(f4,abs(X4));
xlim([0 5000]);
xlabel('Freq[Hz]');
ylabel('|X(f)|');
title('Audio_Song_Female01_10sec.wav');

subplot(629)
plot(t5,y5);
xlabel('Time[sec]');
ylabel('input Audio,x(t)');
title('Audio_Voice_Female01_8sec.wav');
xlim([0 8]);
subplot(6,2,10)
plot(f5,abs(X5));
xlim([0 5000]);
xlabel('Freq[Hz]');
ylabel('|X(f)|');
title('Audio_Voice_Female01_8sec.wav');

subplot(6,2,11)
plot(t6,y6);
xlabel('Time[sec]');
ylabel('input Audio,x(t)');
title('Audio_Voice_Male01_11sec.wav');
xlim([0 11]);
subplot(6,2,12)
plot(f6,abs(X6));
xlim([0 5000]);
xlabel('Freq[Hz]');
ylabel('|X(f)|');
title('Audio_Voice_Male01_11sec.wav');





%my_func는 시간 t에대해 정의된 연속신호 x(t)의 스펙트럼 구하는 함수
%sound(y1,fs1);
%sound(y2,fs2);
sound(y3,fs3);
%sound(y4,fs4);
%sound(y5,fs5);
%sound(y6,fs6);