clc;
clear;
Rp=10; %pass-band의리플의 크기
Rs=30; %stop-band의 리플 크기
n=5;
w=linspace(0,2,1000);
%반지름 1인원
t=linspace(0,2*pi,1000);
r=1;
center=([0,0]);
x=r*cos(t)+center(1);
y=r*sin(t)+center(2);
%z1: zero들의 벡터, p1=pole들의 백터
[z1,p1,k1]=buttap(n);
[num,den]=zp2tf(z1,p1,k1);
H1=freqs(num,den,w); %num:전달함수 H(s)의 분자 다항식계수
                    %den: H(s)의 분모 다항식 계수벡터 /w=관찰하고자하는 주파수
H_1=10*log10((abs(H1)).^2); %주파수 응답의 크기 그래프.

[z2,p2,k2]=cheb1ap(n,Rp);
[num,den]=zp2tf(z2,p2,k2);
H2=freqs(num,den,w); %num:전달함수 H(s)의 분자 다항식계수
                    %den: H(s)의 분모 다항식 계수벡터 /w=관찰하고자하는 주파수
H_2=10*log10((abs(H2)).^2); %주파수 응답의 크기 그래프.

[z3,p3,k3]=cheb2ap(n,Rs);
[num,den]=zp2tf(z3,p3,k3);
H3=freqs(num,den,w); %num:전달함수 H(s)의 분자 다항식계수
                    %den: H(s)의 분모 다항식 계수벡터 /w=관찰하고자하는 주파수
H_3=10*log10((abs(H3)).^2); %주파수 응답의 크기 그래프.

[z4,p4,k4]=ellipap(n,Rp,Rs);
[num,den]=zp2tf(z4,p4,k4);
H4=freqs(num,den,w); %num:전달함수 H(s)의 분자 다항식계수
                    %den: H(s)의 분모 다항식 계수벡터 /w=관찰하고자하는 주파수
H_4=10*log10((abs(H4)).^2); %주파수 응답의 크기 그래프.

figure(2)
subplot(221)
plot(w,H_1);
grid on
xlabel('Frequency w [rad/sec]');
ylabel('|H(w)|^2 [dB], Butterworth');
ylim([-40 5]);
subplot(222)
plot(w,H_2);
grid on
xlabel('Frequency w [rad/sec]');
ylabel('|H(w)|^2 [dB], Chebyshev Type-1');
ylim([-70 5]);
subplot(223)
plot(w,H_3);
grid on
xlabel('Frequency w [rad/sec]');
ylabel('|H(w)|^2 [dB], Chebyshev Type-2');
ylim([-70 5]);

subplot(224)
plot(w,H_4);
grid on
xlabel('Frequency w [rad/sec]');
ylabel('|H(w)|^2 [dB], Elipic');
ylim([-70 5]);

figure(1)
subplot(221)
plot(x,y,':');
hold on;
grid on
plot(real(p1),imag(p1),'kx');
xlabel('Real(s)');
ylabel('Imag(s)');
subplot(222)
plot(x,y,':');
hold on;
plot(real(p2),imag(p2),'kx');
grid on
xlabel('Real(s)');
ylabel('Imag(s)');
subplot(223)
plot(x,y,':');
hold on;
plot(real(p3),imag(p3),'kx');
hold on;
plot(real(z3),imag(z3),'ko');
grid on
xlabel('Real(s)');
ylabel('Imag(s)');
subplot(224)
plot(x,y,':');
hold on;
plot(real(p4),imag(p4),'kx');
hold on;
plot(real(z4),imag(z4),'ko');
grid on
xlabel('Real(s)');
ylabel('Imag(s)');

%설명 : 그림 순서대로 버터워스->체비셰브 타입1->체비셰브 타입2->