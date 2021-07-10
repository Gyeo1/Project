clc;
clear;
N=50;
f_hat=linspace(-0.5,0.5,N);
f_hat0=0.1;
n1=linspace(0,49,N);
x=cos(2*pi*f_hat0*n1);
%계산 순서는 n의 시그마를 벗겨주고 k에 1~N-1을 넣어야된다.
for k=0:N-1
    for n=0:N-1
        a(n+1)=x(n+1)*exp(-1j*2*pi*k/N*n);
    end
    %아래작업 이유 = 이 식은 0~2pi 즉 f_hat상으론 0-1까지이므로
    %1넘어가는 부분을 뒤로 보내준다.
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