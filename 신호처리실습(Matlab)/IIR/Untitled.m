clc;
clear;

f=linspace(1500,5500,10000);%hz의 범위.
fs=50000;%표본화 주파수. hz

[z,p,k]=buttap(7);%7차 버터워스 필터 설계
[num,den]=zp2tf(z,p,k); %버터워스의 전달함수 분자 분모

[num_bp,den_bp]=lp2bp(num,den,3000*2*pi,2000*2*pi); %아날로그 bp변환
H_bp=freqs(num_bp,den_bp,f*2*pi);%아날로그 bp의 주파수응답
[numd_bp,dend_bp]=bilinear(num_bp,den_bp,fs);%bp의 이산화
Hd_bp=freqz(numd_bp,dend_bp,((f*2*pi)/fs));

[num_hp,den_hp]=lp2hp(num,den,4000*2*pi);%아날로그 hp변환
H_hp=freqs(num_hp,den_hp,f*2*pi);%아날로그hp의 주파수 응답
[numd_hp,dend_hp]=bilinear(num_hp,den_hp,fs);%bp의 이산화
Hd_hp=freqz(numd_hp,dend_hp,(f*2*pi)/fs);

figure(4)
plot(f,abs(H_bp),'b');
xlim([1500 5500]);
hold on
plot(f,abs(H_hp),'r');
hold on
plot(f,abs(Hd_bp),'m');
hold on
plot(f,abs(Hd_hp),'c');
grid on
