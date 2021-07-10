clc;
clear;
t1=-5;
t2=5;
b=4096;
fs=20;
[t,p]=impulse(t1,t2,b,fs);

tau=20*pi;
p3=tau*sinc((tau*t)/(2*pi));

p5=p.*p3;
[t_3,p_3]=myfun_SA(t,p5);

subplot(211)
plot(t,p5);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('y(t)');
grid on;
subplot(212)
plot(t_3,abs(p_3))
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('ly(t)l');
grid on
