clc;
clear;

t1=-5;
t2=5;
b=4096;
fs=20;
[t,p]=impulse(t1,t2,b,fs);
tau=20*pi;
p3=tau*sinc((tau*t)/(2*pi));
[t4,p4]=myfun_SA(t,p3);
plot(t,p3);
xlabel('t[sec]');
ylabel('x(t)');
xlim([-1 1]);
grid on