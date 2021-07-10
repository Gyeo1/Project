clc;
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

FFT_Mult=[N_mult1 N_mult2 N_mult3 N_mult4];
DFT_Mult=[N_mult_1 N_mult_2 N_mult_3 N_mult_4];
%°ö¼À¿¬»êÈ½¼öºñÀ² ratio=> FFT°ö¼À°ª/DFT°ö¼À°ª
Ratio=[N_mult1/N_mult_1,N_mult2/N_mult_2,N_mult3/N_mult_3,N_mult4/N_mult_4];
length=[N1 N2 N3 N4];

figure(3)
subplot(211)
grid on
semilogy(length,FFT_Mult,'-^g')
hold on
semilogy(length,DFT_Mult,'-or')
xlabel('N')
ylabel('°ö¼À¼ö')
legend('FFT','DFT')
subplot(212)
plot(length,Ratio,'-ok')
grid on
xlabel('N')
ylabel('FFT and DFT Ratio')
%ylim([10^1 10^5])


