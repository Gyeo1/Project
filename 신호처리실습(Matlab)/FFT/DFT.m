function [f_hat,Xk,N_mult]=DFT(x)

N=length(x); %전체길이 = x의 길이
%샘플링 개념= 마지막은 점을 찍지않는다.
f_hat=linspace(-0.5,0.5-(1/N),N); 
N_mult=0;
for k=1:N
    for n=1:N
        %DFT의 개념 = sigma n에 대해 모든값을 더해주고 거기서 k값을 넣는게 X[k]이다.
        %a의 인덱스에 n에대한 x[n]*e^(-j*2pi*k/n*n)의 모든 값을 저장.
        a(n)=x(n).*exp(-1j*2*pi*((k-1)/N)*n); 
        N_mult=N_mult+1;
    end
    %아래작업 이유 = 이 식은 0~2pi 즉 f_hat상으론 0-1까지이므로-0.5-0.5가 아니다.
    %N의 중심을 기준으로 앞뒤로 나눠서 넣어준다, 이때 2pi의 대칭성사용.
    %k가처음부터 N/2까지=0~0.5구간 이므로 중간에서 앞으로
    %k가 N/2를 넘어서 부터는 0~-0.5 구간이므로 중간에서 뒤로
    %sum(a)는 sigma를 구현한것 즉 X[k]의값이다.
    b=round(k+(N/2));%N이 홀수라 소숫점일경우 방지
    if(b<=N)
        Xk(k+(N/2))=sum(a);
    else
        Xk(k-(N/2))=sum(a);
    end
end
Xk=abs(Xk);