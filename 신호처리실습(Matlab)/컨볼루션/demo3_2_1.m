clc;
clear;
%교환법칙.
n1=linspace(-5,5,11);
n2=linspace(0,5,6);
x1=cos(2*pi*0.05*n1);
x2=[1,2,3,4,5,6];
%x1과 x2의 위치를 바꾸면서 교환법칙 성립하는지 확인.
[n_1,y_1]=convolution_fi(x1,n1,x2,n2);
[n_2,y_2]=convolution_fi(x2,n2,x1,n1);

figure(1)
subplot(311)
stem(n1,x1)
xlabel('n');
ylabel('x[n]');
subplot(312)
stem(n2,x2)
xlabel('n');
ylabel('h[n]');
subplot(313)
stem(n_1,y_1,'bo-')
hold on 
stem(n_2,y_2,'rx-.')
xlabel('n');
ylabel('y[n]');
legend('x1[n]*x2[n]','x2[n],x1[n]');
