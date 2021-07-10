clc;
clear;
format short
N=64;
n=linspace(0,N-1,N);
%re=bitrevorder(n);

x=cos(2*pi*0.1*n);
%y=cos(2*pi*0.1*re);

%�Ʒ��� �Լ�����
N=length(x); %��ü���� = x�� ����
%���ø� ���� �������� ���� �����ʴ´�.
f_hat=linspace(-0.5,0.5-(1/N),N); 
N_mult=0;


n=linspace(0,N-1,N);
re=bitrevorder(n);
W=zeros(1,N);
x_change=zeros(1,N);
log_2=log2(N);

%������
for i=1:N
    re(i)=re(i)+1;%�ε����� 0�̸� �ȵǼ� +1�����ְ� �־���.
    x_change(i)=x(re(i));% �����ĵ� x�� �̰� ���������ϸ��.
end
for i=0:N-1
    W(i+1)=cos(2*pi/N*i)-1j*sin(2*pi/N*i); %ȸ������
end%�ε����� 1���� ���� �� W(1)= -W(5)�̷��� 2/N+r=-r�ε� 
%������ �Ϻ�����


for i =1:log_2 %log_2�� log2(N)��     
    W_1(i)=cos(2*pi/2*i)-1j*sin(2*pi/2*i);   
end
X_k=zeros(1,N);
%1�ܰ�� ������ �����ؼ� 1�ܰ� �Ϸ�� X���� ����
for i=1:2:N-1       
    W_1=cos(2*pi/2*0)-1j*sin(2*pi/2*i*0); %1�ܰ� ȸ������
    X_k(i)=x_change(i)+W_1*x_change(i+1);       
    X_k(i+1)=x_change(i)-W_1*x_change(i+1);   
    N_mult=N_mult+1;
end

%log_2 ==> log2(N) N=16�̸� �ܰ�� 4�ܰ����
for n=2:log_2  %n�� �ܰ��̴�.
    
    alpha=2^(n-1); %�̰� ����
    W_new=zeros(1,2^n);% �ܰ踶�� �����ų ȸ������ W_new�� ũ�⸦ �ʱ�ȭ����.
    for i=1:2^n %
    W_new(i)=exp(-1j*2*pi/(2^n)*(i-1));
    end
    %�Ʒ��� �ٽ�.
    for j=1:(2^(log_2-n)) %N=8���� 2^(3-n)�� ���� �� n�ܰ迡�� ��� �����ö��̰� �ִ°�? ���̴�
                          %�ܰ谡 ������ �����ö��� ������ ���ϸ��� ������ 2�� �����ŭ �پ��
        next_butterfly=(j-1)*(2^(n)); %���� �����ö����� �ε����� ����ϱ�����. ó���� �翬�� 0�ε�������. 43
        for k=1:N/(2^(log_2-n+1))
            %W_New�������ߵ� �ܰ躰 W���?
            X_k(next_butterfly+k)=X_k(next_butterfly+k)+W_new(k)*X_k(next_butterfly+k+alpha);%����            
            X_k(next_butterfly+k+alpha)=X_k(next_butterfly+k)-W_new(k)*X_k(next_butterfly+k+alpha);
            %�������� �̶� ���̴� �ε����� �ܰ踶�� 1->2->4 �̷��� 2^n������ �������� �˼��ִ�           
            %1�ܰ��϶� +�ϴ� �ε�����+1 2�ܰ��϶�+2 3�ܰ��϶� +4 ��alpha=2^(n-1);
            
            N_mult=N_mult+1;
        end
    end
    
end
Xk=zeros(1,N);
for k=1:N
    b=round(k+(N/2));%N�� Ȧ���� �Ҽ����ϰ�� ����
    if(b<=N)
        Xk(k+(N/2))=X_k(k);
    else
        Xk(k-(N/2))=X_k(k);
    end
end






