function [n_y,y]=convolution(x1,n1,x2,n2)

n_start=n1(1)+n2(1); 
n_end=n1(length(n1))+n2(length(n2)); 
N=n_end-n_start+1; %��ü y[n]�� n����
n_y=linspace(n_start,n_end,N);%������ y�� ��ü n�� ������ linspace��

h=fliplr(x2); %x2[k]�� x2[-k]�� ��ȯ =h
LoX1=length(x1); %x1�� ����
Loh=length(h);%��ȯ�� h�� ����
%zeros�� ������ �ε��� ���� �����ֱ� = prod�Ϸ��� �ε��� ���̰� ���ƾߵǼ�
x1=[x1,zeros(1,Loh)];
h=[h,zeros(1,LoX1)];
%����� ���ϰ� �ϱ����� ���������� �ε����� �ø�(0���ͷ�)
h_new=[h , zeros(1,length(h))];
x_check=[zeros(1,length(x1)),x1];
%x�� ó�������� ���� ã�� �ڵ�
for k = 1:(LoX1)     
    h_new(length(h_new)-k)=[]; %�� ������ ���� ����� 
    h_check=[zeros(1,k),h_new];   %���� 0�߰��ؼ� ���̸� �Ȱ���    
end
%���� x�� h�� ������ �κк��� ��ü ��ȣ ���� ��ŭ ������� �� �����
for i= 1:(N)
    %�Ʒ� 2����h�� �������ϴ� ����.
    h_check=[zeros(1,1),h_check];
    h_check(length(h_check))=[];
    
    HX=[h_check;x_check];     
    X=prod(HX);      
    S=sum(X); 
    y(i)=S;
end