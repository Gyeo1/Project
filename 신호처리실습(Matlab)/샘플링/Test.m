clc;
clear;


%t1=0;
%t2=1;
%fs=4;
%N=10;

t1=-5;
t2=5;
N=4096;
fs=20;

T_s=1/fs; %임펄스가 1이나오는 주기
t2_end=t2-T_s; % t2를 넘지 않기위해 t2에서 T_s를 줄여줌
a=(t2-t1)/(T_s); %임펄스 구간설정
im_length=N/a;
r=ceil(im_length);%1이 나올 구간
x_1=T_s/r;%하나의 임펄수 구간에서의 증분값.


t=zeros(1,N);
p=zeros(1,N);

for i = 1:N
    t(i)=t1+i*x_1;
    
    if(mod(i,r)==0)
        p(i)=1;
    else
        p(i)=0;
    end
end
plot(t,p)




