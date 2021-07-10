clc;
clear;
N=64;
n=linspace(0,N-1,N);
x=cos(2*pi*0.1*n);
[f_hat,Xk,N_mult]=fft_test(x);

Xk=abs(Xk);
figure(1)
subplot(211)
stem(n,x);
subplot(212)
stem(f_hat,Xk);