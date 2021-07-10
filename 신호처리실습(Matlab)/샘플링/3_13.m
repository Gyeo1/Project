clc;
clear;

t1=-5;
t2=5;
b=4096;
fs=20;
[t,p]=myfunc_IA(t1,t2,b,fs);
[t_1,p_1]=myfun_SA(t,p);
subplot(211)
plot(t,p);
xlim([-1 1]);
ylim([0,1.2]);
xlabel('t[sec]');
ylabel('p(t)');
grid on;
subplot(212)
plot(t_1,abs(p_1));
xlim([-30 30]);
ylim([0,0.5])
xlabel('f[Hz]');
ylabel('lp(t)l');
grid on