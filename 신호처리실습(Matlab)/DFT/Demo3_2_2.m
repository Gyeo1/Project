clc;
clear;
L1=1;
L2=10;
L3=30;
L4=50;
N=50;
pL1=zeros(1,N);
pL2=zeros(1,N);
pL3=zeros(1,N);
pL4=zeros(1,N);
n=linspace(0,49,50);
%�׷��� ����: L1�� �ð�0 ������ 1�̳����� ���޽��� ����=>DTFT�� 1�̳��´�(���̺�)
            %�̷� L2~L4�� ����� pL�� ������ rect�Լ��� ���� ����
            %rect�� FT�� sinc�Լ��̹Ƿ� 1024DFT�� ���ָ� sinc���·� ����
            %�ٵ� abs �� ���밪�� ���Ƿ� ���� ������ sinc����
%��(6)�� L-1���� 1�� �ִ� for���̴�
for n1= 0:N-1
    if(n1<=L1-1)   
        pL1(n1+1)=1;
    end
end
for n1= 0:N-1
    if(n1<=L2-1)   
        pL2(n1+1)=1;
    end
end
for n1= 0:N-1
    if(n1<=L3-1)   
        pL3(n1+1)=1;
    end
end
for n1= 0:N-1
    if(n1<=L4-1)   
        pL4(n1+1)=1;
    end
end

%dftf�� dft���� �׳� N=1024�ְ� ����Ѱ�.
[f_hat,Xk,N_mult]=DFT(pL1);
[f_hat_1,Xk_1,N_mult_1]=DTFT(pL1);
[f_hat2,Xk2,N_mult2]=DFT(pL2);
[f_hat_2,Xk_2,N_mult_2]=DTFT(pL2);
[f_hat3,Xk3,N_mult3]=DFT(pL3);
[f_hat_3,Xk_3,N_mult_3]=DTFT(pL3);
[f_hat4,Xk4,N_mult4]=DFT(pL4);
[f_hat_4,Xk_4,N_mult_4]=DTFT(pL4);

figure(3)
subplot(421)
stem(n,pL1);
xlim([0 50]);
subplot(422)
plot(f_hat_1,Xk_1)
hold on
stem(f_hat,Xk,'ro:')
ylim([0 2]);

subplot(423)
stem(n,pL2);
xlim([0 50]);
subplot(424)
plot(f_hat_2,Xk_2)
hold on
stem(f_hat2,Xk2,'ro:')

subplot(425)
stem(n,pL3);
xlim([0 50]);
subplot(426)
plot(f_hat_3,Xk_3)
hold on
stem(f_hat3,Xk3,'ro:')

subplot(427)
stem(n,pL4);
xlim([0 50]);
subplot(428)
plot(f_hat_4,Xk_4)
hold on
stem(f_hat4,Xk4,'ro:')










