function [num,result]=convolutionTest(x1,n1,x2,n2)
n_start=n1(1)+n2(1); %ó����
n_end=n1(length(n1))+n2(length(n2)); %���� y[n]�� n�� �����̴�.
N=n_end-n_start+1; %��ü��ȣ����

num=linspace(n_start,n_end,N);%������ y�� ��ü n�� ����

h=fliplr(x2); %x2[k]�� x2[-k]�� ��ȯ
LoX1=length(x1); %x1�� ����
Loh=length(h);%��ȯ�� h(x2)�� ����
%���� ���߱�
x1=[x1,zeros(1,Loh)];
h=[h,zeros(1,LoX1)];

h_new=[h , zeros(1,length(h))];
x_check=[zeros(1,length(x1)),x1];
for k = 1:(LoX1)     
    h_new(length(h_new)-k)=[]; %�� ������ ���� ����� 
    h_new2=[zeros(1,k),h_new];   %���� 0�߰��ؼ� ���̸� �Ȱ���    
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