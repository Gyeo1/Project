clc;
clear;
N=50;
f_hat0=0.1;
n1=linspace(0,N-1,N);

x=cos(2*pi*f_hat0*n1);

[f_hat,Xk,N_mult]=DFT(x);

Xk=abs(Xk);
figure(1)
subplot(211)
stem(n1,x);
subplot(212)
stem(f_hat,Xk)