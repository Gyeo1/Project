function [f_hat,Xk,N_mult]=DTFT(x)
N=1024;
f_hat=linspace(-0.5,0.5,N);
N_mult=0;
a=zeros(1,N);
Xk=zeros(1,N);

if length(x)~=N
    x=[x,zeros(1,abs(N-length(x)))];%�� ���� ���̰� ���̳��� ���� ������.
end

for k=1:N
    for n=1:N
        a(n)=x(n)*exp(-1j*2*pi*((k-1)/N)*n);
        N_mult=N_mult+1;
    end
    %�Ʒ��۾� ���� = �� ���� 0~2pi �� f_hat������ 0-1�����̹Ƿ�
    %0.5�Ѿ�� �κ��� �ڷ� �����ش�.
    b=round(k+(N/2));
    if(b<=N)
        Xk(k+(N/2))=sum(a);
    else
        Xk(k-(N/2))=sum(a);
    end
end
Xk=abs(Xk);