clc;
clear;

[y,fs]=audioread('Audio_Pop01_15sec.wav');%y는오디오 신호 fs는 샘플 주파수
t=linspace(0,15,length(y));%샘플 오디오의 신호
[f0,X]=myfun_SA(t,y);
figure(1)
subplot(211)
plot(t,y);
subplot(212)
plot(f0,abs(X));
xlim([0 5000]);


%my_func는 시간 t에대해 정의된 연속신호 x(t)의 스펙트럼 구하는 함수
%sound(y,fs);