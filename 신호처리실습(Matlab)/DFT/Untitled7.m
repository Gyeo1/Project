clc;
clear;
L1=1;
L2=10;
L3=30;
L4=50;
N=50;
N1=1024;
pL=zeros(1,N);
n=linspace(0,49,N);

pL_1=zeros(1,N1);
n_1=linspace(0,49,N1);
for n1= 0:N-1
    if(n1<=L4-1)
        pL(n1+1)=1;
    end
end

for n1= 0:N-1
    if(n1<=L4-1)
        pL_1(n1+1)=1;
    end
end


[f_hat,Xk,N_mult]=DFT(pL);

figure(1)
subplot(211)
stem(n,pL);
subplot(212)
plot(f_hat_1,Xk_1)
hold on
stem(f_hat,Xk,'ro:')