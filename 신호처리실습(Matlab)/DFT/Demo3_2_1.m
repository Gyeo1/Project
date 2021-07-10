clc;
clear;
N=50;
f_hat1=0.1;
f_hat2=0.2;
f_hat3=0.3;
n1=linspace(0,49,N);
x1=cos(2*pi*f_hat1*n1);
x2=0.5*cos(2*pi*f_hat2*n1);
x3=0.1*cos(2*pi*f_hat3*n1);
x=x1+x2+x3;
[f_hat,Xk,N_mult]=DFT(x);
%[f_hat_2,Xk_2,N_mult_]=DFT(x3);

Xk=abs(Xk);
figure(2)
subplot(211)
stem(n1,x);
subplot(212)
stem(f_hat,Xk)
grid on