clc;
clear;
w=linspace(-1.5*pi,1.5*pi,100);
[r,p,k]=residue([1 5], [1 2 5]);
t=linspace(0,10,100);
s=h_t(r,p,t,0);
L=absH_t(t1,t2,w,0)
figure(2)
plot(t,s);