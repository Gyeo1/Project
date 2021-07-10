clc;
clear;
N=50;
f_hat=linspace(-0.5,0.5,N);
f_hat0=0.1;
n1=linspace(0,49,N);
x=cos(2*pi*f_hat0*n1);
%��� ������ n�� �ñ׸��� �����ְ� k�� 1~N-1�� �־�ߵȴ�.
for k=0:N-1
    for n=0:N-1
        a(n+1)=x(n+1)*exp(-1j*2*pi*k/N*n);
    end
    %�Ʒ��۾� ���� = �� ���� 0~2pi �� f_hat������ 0-1�����̹Ƿ�
    %1�Ѿ�� �κ��� �ڷ� �����ش�.
    b=round(k+(N/2));
    if(b<=N)
        Xk(k+(N/2))=sum(a);
    else
        Xk(k-(N/2))=sum(a);
    end
end
Xk=abs(Xk);
figure(1)
subplot(211)
stem(n1,x);
subplot(212)
stem(f_hat,Xk)