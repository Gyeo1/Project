clear;
clc;
%실습3-1-2
%n1=linspace(-5,5,11);
%n2=linspace(-5,5,11);
%x1=[0 0 0 0 0 1 1 1 0 0 0];
%x2=[0 0 0 1 1 1 1 1 0 0 0];
%실습3-1-3
%n1=linspace(0,15,16);
%n2=linspace(-5,5,11);
%x1=cos(2*pi*n1*0.1);
%x2= n2==0; %임펄스
%실습3-1-4
n1=linspace(0,15,16);
n2=linspace(-5,5,11);
x1=cos(2*pi*0.1*n1);
x2=cos(2*pi*0.05*n2);
[n,y]=convolution(x1,n1,x2,n2);
figure(1)
subplot(311)
stem(n1,x1,'k')
xlabel('n');
ylabel('x1[n]')
subplot(312)
stem(n2,x2,'k')
xlabel('n');
ylabel('x2[n]')
subplot(313)
stem(n,y,'bo-')
xlabel('n');
ylabel('y[n]')

