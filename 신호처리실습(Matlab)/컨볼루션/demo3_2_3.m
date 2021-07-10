%이동성질
clc;
clear;

n1=linspace(0,15,16);
n2=linspace(0,5,6);
x=cos(2*pi*0.1*n1);
h=(0.5).^(n2);
n0=5;
%x의 n-5의 평행이동을 하기위해 x길이의 zeros행렬 만듦
x2=zeros(1,length(x));
x2_1=x2;
for i=1:length(x2)
    x2_1(i)=x(i+n0); %x2에 n0만큼 평행이동한 값을 넣어줌
if i+n0 == length(x2)%이때 기존 x의 인덱스 크기를 넘어서면 종료
    break
end
end
[n_1,y_1]=convolution(x,n1,h,n2);
[n_2,y_2]=convolution(x2,n1,h,n2);

figure(1)
subplot(311)
stem(n1,x)
xlabel('n');
ylabel('x[n]');
subplot(312)
stem(n2,h)
xlabel('n');
ylabel('h[n]');
subplot(313)
stem(n_1,y_1)
xlabel('n');
ylabel('y[n]');

%figure(2)
%subplot(311)
%stem(n1,x2)
%title('y[n-n0]=x[n-n0]*h[n],n0=5');
%subplot(312)
%stem(n2,h)
%subplot(313)
%stem(n_2,y_2)

figure(2)
subplot(311)
stem(n1,x2_1)
title('y[n-n0]=x[n-n0]*h[n],n0=5');
subplot(312)
stem(n2,h)
subplot(313)
stem(n_3,y_3)
