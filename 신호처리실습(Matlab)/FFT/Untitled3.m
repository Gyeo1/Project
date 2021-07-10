clc;
clear;
format short
N=64;
n=linspace(0,N-1,N);
%re=bitrevorder(n);

x=cos(2*pi*0.1*n);
%y=cos(2*pi*0.1*re);

%아래가 함수영역
N=length(x); %전체길이 = x의 길이
%샘플링 개념 마지막은 점을 찍지않는다.
f_hat=linspace(-0.5,0.5-(1/N),N); 
N_mult=0;


n=linspace(0,N-1,N);
re=bitrevorder(n);
W=zeros(1,N);
x_change=zeros(1,N);
log_2=log2(N);

%재정렬
for i=1:N
    re(i)=re(i)+1;%인덱스가 0이면 안되서 +1시켜주고 넣어줌.
    x_change(i)=x(re(i));% 재정렬된 x다 이거 기준으로하면됨.
end
for i=0:N-1
    W(i+1)=cos(2*pi/N*i)-1j*sin(2*pi/N*i); %회전인자
end%인덱스는 1부터 시작 즉 W(1)= -W(5)이런식 2/N+r=-r인데 
%위까진 완벽실행


for i =1:log_2 %log_2는 log2(N)값     
    W_1(i)=cos(2*pi/2*i)-1j*sin(2*pi/2*i);   
end
X_k=zeros(1,N);
%1단계는 무조건 실행해서 1단계 완료시 X값을 구함
for i=1:2:N-1       
    W_1=cos(2*pi/2*0)-1j*sin(2*pi/2*i*0); %1단계 회전인자
    X_k(i)=x_change(i)+W_1*x_change(i+1);       
    X_k(i+1)=x_change(i)-W_1*x_change(i+1);   
    N_mult=N_mult+1;
end

%log_2 ==> log2(N) N=16이면 단계는 4단계까지
for n=2:log_2  %n는 단계이다.
    
    alpha=2^(n-1); %이거 맞음
    W_new=zeros(1,2^n);% 단계마다 적용시킬 회전인자 W_new의 크기를 초기화해줌.
    for i=1:2^n %
    W_new(i)=exp(-1j*2*pi/(2^n)*(i-1));
    end
    %아래가 핵심.
    for j=1:(2^(log_2-n)) %N=8일이 2^(3-n)의 형태 즉 n단계에서 몇개의 버터플라이가 있는가? 뜻이다
                          %단계가 낮을때 버터플라이 갯수가 제일많고 갈수록 2의 배수만큼 줄어듬
        next_butterfly=(j-1)*(2^(n)); %다음 버터플라이의 인덱스를 계산하기위함. 처음은 당연히 0인덱스시작. 43
        for k=1:N/(2^(log_2-n+1))
            %W_New만들어줘야됨 단계별 W계산?
            X_k(next_butterfly+k)=X_k(next_butterfly+k)+W_new(k)*X_k(next_butterfly+k+alpha);%덧셈            
            X_k(next_butterfly+k+alpha)=X_k(next_butterfly+k)-W_new(k)*X_k(next_butterfly+k+alpha);
            %뺄셈영역 이때 엮이는 인덱스가 단계마다 1->2->4 이렇게 2^n승으로 증가함을 알수있다           
            %1단계일때 +하는 인덱스에+1 2단계일때+2 3단계일때 +4 즉alpha=2^(n-1);
            
            N_mult=N_mult+1;
        end
    end
    
end
Xk=zeros(1,N);
for k=1:N
    b=round(k+(N/2));%N이 홀수라 소숫점일경우 방지
    if(b<=N)
        Xk(k+(N/2))=X_k(k);
    else
        Xk(k-(N/2))=X_k(k);
    end
end






