function [f_hat,Xk,N_mult]=fft_test(x)
N=length(x); %전체길이 = x의 길이
%샘플링 개념 마지막은 점을 찍지않는다.
f_hat=linspace(-0.5,0.5-(1/N),N); 
N_mult=0;
n=linspace(0,N-1,N);%0~N-1까지 1단위로 점을 찍어줌
re=bitrevorder(n);% 위의 n의 값들을 bitrevorder연산으로처지
                   %bitrevorder연산? ->값의 비트값(2진수)을 reverse한 값을 리턴함

x_change=zeros(1,N);
log_2=log2(N);
%재정렬(중요한 1단계)
for i=1:N
    re(i)=re(i)+1;%인덱스가 0이면 안되서 +1시켜주고 넣어줌.
    x_change(i)=x(re(i));% 재정렬된 x다 이거 기준으로하면됨.
end
W=zeros(1,N);
for i=0:N-1
    W(i+1)=cos(2*pi/N*i)-1j*sin(2*pi/N*i); %회전인자
end%인덱스는 1부터 시작 즉 W(1)= -W(5)이런식 2/N+r=-r인데 

for i =1:2 %log_2는 log2(N)값     
    W_1(i)=cos(2*pi/2*(i-1))-1j*sin(2*pi/2*(i-1));   
end
X_k=zeros(N,log_2); %(log_2) 차원 배열로만들어줌=> why?추후 단계별로 처리할때 이전 단계값을기억하기 위해서. 
%1단계는 무조건 실행해서 1단계 완료시 X값을 1열의 값에 넣어줌.
for i=1:2:N-1       
    X_k(i,1)=x_change(i)+W_1(1)*x_change(i+1);       
    
%2단계 부터 1단계의 값을 가지고 계산.
for n=2:log_2  %n는 단계이다.  2단계에서~끝까지
    alpha=2^(n-1); %알파는 X_k계산시 두쌍(회전인자를 더하고 빼는)의 인덱스 간격을 뜻함.
                   %ex)2단계에선 X(0)과 ^X(2)^가 쌍 3단계에선 X(0)와 ^X(4)^가 한쌍임                   
    W_new=zeros(1,2^n);% 단계마다 적용시킬 회전인자 W_new의 크기를 초기화해줌.
    X_k(i+1,1)=x_change(i)-W_1(1)*x_change(i+1);   
    N_mult=N_mult+1;
end
    for i=1:2^n %단계별 회전인자 생성.
    W_new(i)=exp(-1j*2*pi/(2^n)*(i-1));
    end   
    %아래가 핵심임.for문 2개가 중요. 
    for j=1:(2^(log_2-n)) %이 for문은 n단계에서 몇개의 버터플라이가 있는가라는 뜻임 N=8일이때 2^(3-n)의 형태 즉
                          %단계가 낮을때 버터플라이 갯수가 제일많고 갈수록 2의 배수만큼 줄어듬
        next_butterfly=(j-1)*(2^(n)); %다음 버터플라이의 인덱스를 계산하기위함. 처음은 당연히 인덱스가0.
                          %1,2번째 버터플라이가 시작되는 인덱스는 1단계=0->2, 2단계=0->4, 3단계 0->8로 2의n승을 따르고
                          %j-1의 의미= 전체길이N에따라 버터플라이가 많아져서 마지막 버터플라이가 발생하는 인덱스가 높기 때문임
        
        for k=1:N/(2^(log_2-n+1))%이 for문은 하나의 버터플라이 내에서 몇번까지 계산하느냐를 뜻함 
                                 %N/(2^(log_2-n+1))이 식의 의미=단계가 증가 할 수록분모가작아져서 버터플라이내 계산수는 증가.
                    
                                    %2번째 단계는 X_k(:,2)즉 2열에 모든값넣고 그를위해 X_k(:,1) 1열 즉 1단계 값들을 쓴다.
                                    %이렇게 이전 단계의 값을 이용해 값을 채워 넣는다..
            X_k(next_butterfly+k,n)=X_k(next_butterfly+k,n-1)+W_new(k)*X_k(next_butterfly+k+alpha,n-1);%덧셈            
            
            X_k(next_butterfly+k+alpha,n)=X_k(next_butterfly+k,n-1)-W_new(k)*X_k(next_butterfly+k+alpha,n-1);
                                    %뺄셈영역 이때 엮이는 인덱스가 단계마다 1->2->4 이렇게 2^n승으로 증가함을 알수있다           
                                    %1단계일때 +하는 인덱스에+1 2단계일때+2 3단계일때 +4 즉alpha=2^(n-1);            
            N_mult=N_mult+1;
        end
    end
    
end
    %아래작업 이유 = 이 식은 0~2pi 즉 f_hat상으론 0-1까지이므로-0.5-0.5가 아니다.
    %N의 중심을 기준으로 앞뒤로 나눠서 넣어준다, 이때 2pi의 대칭성사용.
    %k가처음부터 N/2까지=0~0.5구간 이므로 중간에서 앞으로
    %k가 N/2를 넘어서 부터는 0~-0.5 구간이므로 중간에서 뒤로
for k=1:N
    b=round(k+(N/2));%N이 홀수라 소숫점일경우 방지
    if(b<=N)
        Xk(k+(N/2))=X_k(k,log_2);
    else
        Xk(k-(N/2))=X_k(k,log_2);
    end
end
Xk=abs(Xk); 