
clc;
clear;
t1=-5;
t2=5;
N=4096;
fs=15;
%그림설명: 왜 10일때둥글게 나오는가? = 그건 바로 표본화 주파수가 원본주파수의
        %2배가 넘어야 하는 나이퀴스트 주파수를 만족시키지 못하기 때문이다
        %즉 복원시 주파수영역에서 신호가 겹치는엘리어싱이 발생한다
        %나머지 주파수들은 그래도 원본의 형태가 나오지만 버터워스 필터의 특성
        %상인지 (저역통과) 복원이 완벽하지 않다(원래 신호를 완벽히 복원은 불가능)
      
%1
[t,p]=impulse(t1,t2,N,fs);
[t_1,p_1]=myfun_SA(t,p);
%2
tau=20*pi;
p2=tau*sinc((tau*t)/(2*pi));
[t_2,p_2]=myfun_SA(t,p2);
%3
p3=p.*p2;
[t_3,p_3]=myfun_SA(t,p3);
%%% 아래 줄은 복원을 위한 버터워스 복원 코드
fc=8;
[z,p,k]=buttap(5);
[num,den]=zp2tf(z,p,k);
[num,den]=lp2lp(num,den,2*pi*fc);
[num_d,den_d]=bilinear(num,den, 1/abs(t(2)-t(1)));
y_out=filter(num_d,den_d,p3);
[t_4,p_4]=myfun_SA(t,y_out);
%%%%%% 복원이 완벽하지 않지만 형태가 나온다.
figure(5)
subplot(221)
plot(t,p3);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('before recon y(t)');
grid on
subplot(222)
plot(t,y_out);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('After recon y(t)');
grid on
subplot(223)
plot(t_3,abs(p_3));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('before recon ly(f)l');
grid on
subplot(224)
plot(t_4,abs(p_4));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('After recon ly(f)l');
grid on
