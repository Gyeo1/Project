
clc;
clear;

t1=-5;
t2=5;
b=4096;
fs=20;
[t,p]=impulse(t1,t2,b,fs);

tau=20*pi;
p3=tau*sinc((tau*t)/(2*pi));
[t_2,p_2]=myfun_SA(t,p3);
subplot(211)
plot(t,p3);
xlabel('t[sec]');
ylabel('x(t)');
xlim([-1 1]);
ylim([-20 80]);
grid on

subplot(212)
plot(t_2,abs(p_2));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('lx(t)l');


%이때 가장 높은 주파수 B= 5Hz , why?  