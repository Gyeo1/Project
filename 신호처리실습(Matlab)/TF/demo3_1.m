clc;
clear;

a=roots([1 2 5]); %pole해 = -1+2j, -1-2j이다
b=roots([1 5]); %zero의 해= -5
c=real(a);
d=imag(a);
e=real(b);
f=imag(b);


[r,p,k]=residue([1 5], [1 2 5]);
t=linspace(0,10,100);
rev_L=0;
for i=1:length(p)
rev_L=rev_L+r(i)*exp(p(i)*t);  %라플라스변환 역변환식. why?=>부분분수로 쪼개면 r/s+p꼴인데
                                %그게 r*exp^(p*t)를 라플라스 변환 한거다.
end
figure(2)
plot(t,rev_L);
xlabel('t[sec]')
ylabel('h(t)')
grid on

%그래프 의미 : 충격함수의 모양이 시간이 지날 수록 0으로 수렴 =안정된 상태이다.


figure(1)
stem(c,d,'xk:');
hold on
stem(e,f,'ok:');
xlim([-6 1]);
ylim([-3 3]);
xlabel('Real(s)')
ylabel('Imag(s)')
grid on



w=linspace(-1.5*pi,1.5*pi,100);%연속에서 w범위는 무한인데 특정 구간으로 짤라줌.
L=H_omega(b,a,w,0);
figure(3)
%그래프의 의미?= 연속신호에서는 pole의 허수부분에서 주파수 응답이 커지고 나머진 작아짐
%pole의 허수부인 +-2 부분에서 주파수 응답이 커지고 나머지 부분에선 작아지는 저역통과 필터 모형임. 
plot(w,abs(L))
xlim([-4 4])
xlabel('Frequency w[rad/sec]')
ylabel('|H(w)|')
grid on