clc;
clear;

Wc=1;
f_s=5;
f_s2=10;
k=1;
w=linspace(0,2*pi,1000);
%원
t=linspace(0,2*pi,1000);
r=1;
center=([0,0]);
x=r*cos(t)+center(1);
y=r*sin(t)+center(2);
h_s=[1 2 2 1];%분모 계수 백터
[z,p,k]=tf2zp(1,h_s);
[numd1,dend1]=bilinear(1,h_s,f_s);  
[z1,p1,k]=tf2zp(numd1,dend1);
[numd2,dend2]=bilinear(1,h_s,f_s2);
[z2,p2,k]=tf2zp(numd2,dend2);
%3번
H_s=freqs(1,h_s,w);
H_d_1=freqz(numd1,dend1,w/5);
H_d_2=freqz(numd2,dend2,w/10);
%4번
L1=50;
L2=100;
L3=150;
%n=0:L1-1;
imp1 = [1; zeros(L1-1,1)];
imp2 = [1; zeros(L2-1,1)];
imp3 = [1; zeros(L3-1,1)];
y_1=filter(numd2,dend2,imp1); %x는 이산입력신호 y는 입력에 대한 디지털 시스템의 출력
y_2=filter(numd2,dend2,imp2);
y_3=filter(numd2,dend2,imp3);

figure(1)
subplot(221)
plot(x,y,':');
hold on
plot(real(z),imag(z),'o');
hold on
plot(real(p),imag(p),'x');
xlabel('Real(z)');
ylabel('Imag(s)');

subplot(223);
plot(x,y,':');
hold on
plot(real(z1),imag(z1),'o');
hold on
plot(real(p1),imag(p1),'x');
grid on
xlabel('Real(z)');
ylabel('Imag(s)');


subplot(224);
plot(x,y,':');
hold on
plot(real(z2),imag(z2),'o');
hold on
plot(real(p2),imag(p2),'x');
grid on
xlabel('Real(z)');
ylabel('Imag(s)');



figure(2)
subplot(211)
plot(w,abs(H_s),'b')
xlim([0 2]);
hold on
plot(w,abs(H_d_1),'g')
hold on
plot(w,abs(H_d_2),'r')
grid on
xlabel('Frequency w[rad/sec]');
ylabel('|H(w)|');
legend('Analog Butterworth Filter','Digital Butterworth,fs=5Hz','Digital Butterworth,fs=5Hz');

subplot(212)
plot(w,abs(H_s),'b')
xlim([0.9 1.1]);
hold on
plot(w,abs(H_d_1),'g')
hold on
plot(w,abs(H_d_2),'r')
grid on
xlabel('Frequency w[rad/sec]');
ylabel('|H(w)|');
legend('Analog Butterworth Filter','Digital Butterworth,fs=5Hz','Digital Butterworth,fs=5Hz');

figure(3)
subplot(311)
stem(0:L1-1,y_1,'ok');
grid on
xlabel('n');
ylabel('h[n],L=50');
subplot(312)
stem(0:L2-1,y_2,'ok');
grid on
xlabel('n');
ylabel('h[n],L=100');
subplot(313)
stem(0:L3-1,y_3,'ok');
grid on
xlabel('n');
ylabel('h[n],L=150');

