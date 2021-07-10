function [n_y,y]=convolution(x1,n1,x2,n2)

n_start=n1(1)+n2(1); 
n_end=n1(length(n1))+n2(length(n2)); 
N=n_end-n_start+1; %전체 y[n]의 n길이
n_y=linspace(n_start,n_end,N);%리턴할 y의 전체 n의 범위의 linspace값

h=fliplr(x2); %x2[k]를 x2[-k]로 변환 =h
LoX1=length(x1); %x1의 길이
Loh=length(h);%변환된 h의 길이
%zeros로 서로의 인덱스 길이 맞춰주기 = prod하려면 인덱스 길이가 같아야되서
x1=[x1,zeros(1,Loh)];
h=[h,zeros(1,LoX1)];
%계산을 편하게 하기위해 임의적으로 인덱스를 늘림(0벡터로)
h_new=[h , zeros(1,length(h))];
x_check=[zeros(1,length(x1)),x1];
%x와 처음만나는 점을 찾는 코드
for k = 1:(LoX1)     
    h_new(length(h_new)-k)=[]; %맨 마지막 열을 지운뒤 
    h_check=[zeros(1,k),h_new];   %앞은 0추가해서 길이를 똑같이    
end
%이제 x와 h가 만나는 부분부터 전체 신호 길이 만큼 컨볼루션 합 계산함
for i= 1:(N)
    %아래 2줄이h를 시프팅하는 과정.
    h_check=[zeros(1,1),h_check];
    h_check(length(h_check))=[];
    
    HX=[h_check;x_check];     
    X=prod(HX);      
    S=sum(X); 
    y(i)=S;
end