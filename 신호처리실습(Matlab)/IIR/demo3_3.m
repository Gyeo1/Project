clc;
clear;
fc=300;%Hz
fs=3000;%Hz ǥ��ȭ ���ļ�
f=linspace(0,600*2*pi,600*2*pi+1);
%(1)
[z,p,k]=buttap(7);%7�� ���Ϳ��� ���� ����
[num,den]=zp2tf(z,p,k); %���Ϳ����� �����Լ� ���� �и�
[num_lp,den_lp]=lp2lp(num,den,fc*2*pi); %�ƿ��� 300Hz�� lp�� ��ȯ
%(2)
[numd_lp,dend_lp]=bilinear(num_lp,den_lp,fs);%lp�� �̻�ȭ
%(3)
n=linspace(0,500,501);
x_n=cos(2*pi*(100/3000)*n)+cos(2*pi*(500/3000)*n);
%(4)
y_n=filter(numd_lp,dend_lp,x_n);%������ �ý����� ���
%(5)
t=n/fs;
[f1,X1]=myfun_SA(t,x_n); %y_n�� ũ�� ����Ʈ�� f0�� ���ļ� X��ũ�� ����Ʈ��.
[f2,X2]=myfun_SA(t,y_n);
Hd=freqz(numd_lp,dend_lp,(f*2*pi)/fs);
%Hs=freqs(num_lp,den_lp,f/fs);

figure(5)
subplot(321)
plot(t,x_n);
xlim([0 0.1])
xlabel('t[sec]');
ylabel('x(t)');
subplot(322)
stem(f1,abs(X1));
xlim([0,600]);
xlabel('Frequency,f[Hz]');
ylabel('|X(f)|');
subplot(324)
plot(f,abs(Hd));
xlim([0,600]);
xlabel('Frequency,f[Hz]');
ylabel('Frequncvy response,|H_d(f)|');
subplot(325)
plot(t,y_n);
xlim([0 0.1])
grid on
xlabel('t[sec]');
ylabel('y(t)');
subplot(326)
stem(f2,abs(X2));
xlim([0,600]);
xlabel('Frequency,f[Hz]');
ylabel('|Y(f)|');

