function [num,result]=convolutionTest(x1,n1,x2,n2)
n_start=n1(1)+n2(1); %처음값
n_end=n1(length(n1))+n2(length(n2)); %끝값 y[n]의 n의 범위이다.
N=n_end-n_start+1; %전체신호길이

num=linspace(n_start,n_end,N);%리턴할 y의 전체 n의 범위

h=fliplr(x2); %x2[k]를 x2[-k]로 변환
LoX1=length(x1); %x1의 길이
Loh=length(h);%변환된 h(x2)의 길이
%길이 맞추기
x1=[x1,zeros(1,Loh)];
h=[h,zeros(1,LoX1)];

h_new=[h , zeros(1,length(h))];
x_check=[zeros(1,length(x1)),x1];
for k = 1:(LoX1)     
    h_new(length(h_new)-k)=[]; %맨 마지막 열을 지운뒤 
    h_new2=[zeros(1,k),h_new];   %앞은 0추가해서 길이를 똑같이    
end
%x_check=[zeros(1,length(x1)),x1];
h_check=h_new2;
for i= 1:(LoX1+Loh-1)
    h_check=[zeros(1,1),h_check];
    h_check(length(h_check))=[];
    HX=[h_check;x_check];     
    X=prod(HX);      
    S=sum(X); 
    result(i)=S;
end