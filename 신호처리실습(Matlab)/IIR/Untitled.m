clc;
clear;

f=linspace(1500,5500,10000);%hz�� ����.
fs=50000;%ǥ��ȭ ���ļ�. hz

[z,p,k]=buttap(7);%7�� ���Ϳ��� ���� ����
[num,den]=zp2tf(z,p,k); %���Ϳ����� �����Լ� ���� �и�

[num_bp,den_bp]=lp2bp(num,den,3000*2*pi,2000*2*pi); %�Ƴ��α� bp��ȯ
H_bp=freqs(num_bp,den_bp,f*2*pi);%�Ƴ��α� bp�� ���ļ�����
[numd_bp,dend_bp]=bilinear(num_bp,den_bp,fs);%bp�� �̻�ȭ
Hd_bp=freqz(numd_bp,dend_bp,((f*2*pi)/fs));

[num_hp,den_hp]=lp2hp(num,den,4000*2*pi);%�Ƴ��α� hp��ȯ
H_hp=freqs(num_hp,den_hp,f*2*pi);%�Ƴ��α�hp�� ���ļ� ����
[numd_hp,dend_hp]=bilinear(num_hp,den_hp,fs);%bp�� �̻�ȭ
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
