function [f_hat,Xk,N_mult]=DTFT(x)
N=1024;
f_hat=linspace(-0.5,0.5,N);
N_mult=0;
a=zeros(1,N);
Xk=zeros(1,N);

if length(x)~=N
    x=[x,zeros(1,abs(N-length(x)))];%두 벡터 길이가 차이나면 길이 맞춰줌.
end

for k=1:N
    for n=1:N
        a(n)=x(n)*exp(-1j*2*pi*((k-1)/N)*n);
        N_mult=N_mult+1;
    end
    %아래작업 이유 = 이 식은 0~2pi 즉 f_hat상으론 0-1까지이므로
    %0.5넘어가는 부분을 뒤로 보내준다.
    b=round(k+(N/2));
    if(b<=N)
        Xk(k+(N/2))=sum(a);
    else
        Xk(k-(N/2))=sum(a);
    end
end
Xk=abs(Xk);