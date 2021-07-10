clc;
clear;
%결합법칙.
n1=linspace(0,15,16);
n2=linspace(-5,5,11);
n3=linspace(0,10,11);
x1=cos(2*pi*0.1*n1);
x2=cos(2*pi*0.05*n2);
x3=(-1).^n3;
%첫번째 결합 (x1*x2)*x3
[n,y]=convolution_fi(x1,n1,x2,n2);
[n_1,y_1]=convolution_fi(y,n,x3,n3);
%두번째 결합x1*(x2*x3)
[n_2,y_2]=convolution_fi(x2,n2,x3,n3);
[n_3,y_3]=convolution_fi(x1,n1,y_2,n_2);
figure(1)
subplot(411)
stem(n1,x1,'k')
xlabel('n');
ylabel('x1[n]');
subplot(412)
stem(n2,x2,'k')
xlabel('n');
ylabel('x2[n]');
subplot(413)
stem(n3,x3,'k')
xlabel('n');
ylabel('x3[n]');
subplot(414)
stem(n_1,y_1,'bo-')
hold on
stem(n_3,y_3,'rx-.')
xlabel('n');
ylabel('y[n]');
legend('(x1*x2)*x3','x1*(x2*x3)')