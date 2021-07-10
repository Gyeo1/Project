clc;
clear;
t1=-5;
t2=5;
N=4096;
fs=10;
%1
[t,p]=impulse(t1,t2,N,fs); %f가 10 일때 임펄스열
[t_1,p_1]=myfun_SA(t,p);%푸리에 변환
%2
tau=20*pi;
p3=tau*sinc((tau*t)/(2*pi)); % 싱크함수.
[t_2,p_2]=myfun_SA(t,p3); % 싱크함수의 신호 스펙트럼
%설명
%이때 가장 높은 주파수는 5.0244쯤으로 5보다 큼 왜냐하면 abs(x(f))에서 0되기전값의
%인덱스가 2098이고 0되기전의 값이 최대 주파수임. t_2의 2098인덱스가 5.0244 즉 전체 주파수가 10이 조금 넘는다.
%따라서 주파수를 10으로 잡았다면 나이퀴스트에 의해 2배보다 작은 값을 설정했으므로
%표본화된 그래프의 스펙트럼은 깨지게 된다.
%f=15일때는 나이퀴스트를 만족해서 정상적으로 샘플링된다.
%3
p5=p.*p3; 
[t_3,p_3]=myfun_SA(t,p5); %주파수가 10보다 같거나 작으면 깨진다.

figure(2)
subplot(322)
plot(t_1,abs(p_1));
xlim([-30 30]);
ylim([0,0.5])
xlabel('f[Hz]');
ylabel('lp(t)l');
subplot(321)
plot(t,p);
xlim([-1 1]);
grid on
subplot(323)
plot(t,p3);
xlabel('t[sec]');
ylabel('x(t)');
xlim([-1 1]);
grid on
subplot(324)
plot(t_2,abs(p_2));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('lx(t)l');
subplot(325)
plot(t,p5);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('y(t)');
grid on;
subplot(326)
plot(t_3,abs(p_3))
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('ly(t)l');
grid on