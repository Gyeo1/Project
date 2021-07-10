clc;
clear;
a=roots([1 2 5]);
b=roots([1 5]);

c=real(a);
d=imag(a);
e=real(b);
f=imag(b);
figure(1)
stem(c,d,'xk:');
hold on
stem(e,f,'ok:');
grid on
xlim([-6 0]);
ylim([-2.5 2.5]);