%½Ç½À 3.1
clc;
clear;

t1=-5;
t2=5;
b=4096;
fs=20;
[t,p]=impulse(t1,t2,b,fs);
plot(t,p);
xlim([-5 5]);
ylim([0,1.2]);
grid on;