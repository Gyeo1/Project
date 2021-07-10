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

T_s=1/fs; %���޽��� 1�̳����� �ֱ�
t2_end=t2-T_s; % t2�� ���� �ʱ����� t2���� T_s�� �ٿ���
a=(t2-t1)/(T_s); %���޽� ��������
im_length=N/a;
r=ceil(im_length);%1�� ���� ����
x_1=T_s/r;%�ϳ��� ���޼� ���������� ���а�.


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




