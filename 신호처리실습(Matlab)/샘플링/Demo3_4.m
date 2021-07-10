clc;
clear;
%-5~5까지의 시간범위
t1=-5;
t2=5;
N=4096;
fs=20;
%그림설명 :-1~1까지 임펄스열과 sinc함수를 곱해서 표본화한게 y(t)그림이고
%           크기스펙트럼 관점에서 봤을때 임펄스열의 크기스펙트럼의 위치에
            %sinc의 FT인 rect꼴이 나오는 것을 볼 수 있다.

[t,p]=impulse(t1,t2,N,fs); %위의 조건에 맞춰 임펄스열 생성
[t_1,p_1]=myfun_SA(t,p); %임펄스열의 크기 스펙트럼값
x1=abs(p_1); %절대값
figure(1)
subplot(321)
plot(t,p);
xlim([-1 1]);
ylim([0,1.2]);
xlabel('t[sec]');
ylabel('x(t)');
grid on;
subplot(322)
plot(t_1,x1);
xlim([-30 30]);
ylim([0,0.5])
xlabel('f[Hz]');
ylabel('lp(t)l');

%실습 3.2 t는 위에서 구한 임펄스 열의 t를 쓰고 타우는 20pi이다.
%이때 가장 높은 주파수는 5.0244쯤으로 5보다 큼 왜냐하면 abs(x(f))에서 0되기전값의
%인덱스가 2098이고 t_2의 2098인덱스가 5.0244 즉 전체 주파수가 10이 넘는댜.
tau=20*pi;
p2=tau*sinc((tau*t)/(2*pi)); %주어진 싱크함수.
[t_2,p_2]=myfun_SA(t,p2);  %싱크함수와 3.1에서 구한 t로 크기 스펙트럼 구하기.
x2=abs(p_2);
%아래는 각각 시간축에서의 sinc함수와 주파수축에서 변화된 sinc의 크기스펙트럼. 
subplot(323)
plot(t,p2);
xlabel('t[sec]');
ylabel('x(t)');
xlim([-1 1]);
grid on
subplot(324)
plot(t_2,x2);
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('lx(t)l');
%실습3.3
p3=p2.*p; %이전에 구한 sinc의 임펄스 열값과 t에대한 임펄스열 값을 곱해줌.
[t_3,p_3]=myfun_SA(t,p3);%표본화된 p3의 값에 대해 크기 스펙트럼을 구해줌.
x3=abs(p_3);
subplot(325)
plot(t,p3);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('y(t)');
grid on;
subplot(326)
plot(t_3,x3)
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('ly(t)l');
grid on
