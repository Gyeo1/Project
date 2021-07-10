clc;%demo 3.2
clear;

f1=0.1;
f2=0.3;
N1=16;
n1=linspace(0,N1-1,N1);
x1=0.3*cos(2*pi*f1*n1)+0.8*sin(2*pi*f2*n1);

N2=32;
n2=linspace(0,N2-1,N2);
x2=0.3*cos(2*pi*f1*n2)+0.8*sin(2*pi*f2*n2);

N3=64;
n3=linspace(0,N3-1,N3);
x3=0.3*cos(2*pi*f1*n3)+0.8*sin(2*pi*f2*n3);
N4=128;
n4=linspace(0,N4-1,N4);
x4=0.3*cos(2*pi*f1*n4)+0.8*sin(2*pi*f2*n4);



[f_hat1,Xk1,N_mult1]=fft_test(x1);
[f_hat_1,Xk_1,N_mult_1]=DFT(x1);
[f_hat2,Xk2,N_mult2]=fft_test(x2);
[f_hat_2,Xk_2,N_mult_2]=DFT(x2);
[f_hat3,Xk3,N_mult3]=fft_test(x3);
[f_hat_3,Xk_3,N_mult_3]=DFT(x3);
[f_hat4,Xk4,N_mult4]=fft_test(x4);
[f_hat_4,Xk_4,N_mult_4]=DFT(x4);


figure(2)
subplot(421)
stem(n1,x1,'k');
grid on
xlabel('n');
ylabel('x[n]')
subplot(422)
stem(f_hat1,Xk1,':xr');
hold on
stem(f_hat_1,Xk_1,':k');
xlabel('f_hat');
ylabel('|Xk|')
legend('FFt','DFT');
grid on

subplot(423)
stem(n2,x2,'k');
grid on
xlabel('n');
ylabel('x[n]')
subplot(424)
stem(f_hat2,Xk2,':xr');
hold on
stem(f_hat_2,Xk_2,':k');
xlabel('f_hat');
ylabel('|Xk|')
legend('FFt','DFT');
grid on

subplot(425)
stem(n3,x3,'k');
xlabel('n');
ylabel('x[n]')
grid on
subplot(426)
stem(f_hat3,Xk3,':xr');
hold on
stem(f_hat_3,Xk_3,':k');
xlabel('f_hat');
ylabel('|Xk|')
legend('FFt','DFT');
grid on

subplot(427)
stem(n4,x4,'k');
xlabel('n');
ylabel('x[n]')
grid on
subplot(428)
stem(f_hat4,Xk4,':xr');
hold on
stem(f_hat_4,Xk_4,':k');
xlabel('f_hat');
ylabel('|Xk|')
legend('FFt','DFT');
grid on