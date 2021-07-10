function s=H_omega(a,b,w,mode) %a�� zero�� �ذ�, b�� pole�� �ذ�, w��  linspace�Ѱ�.
%mode�� �����϶� 0 �̻��϶� 1�̴�.
L1=zeros(1,length(w));
L2=zeros(1,length(w));
if(mode ==0)
    %�Ʒ��� 2�� for���� ���� = jw�϶� ��� 
    for i=1:1:length(a) %zero�� ���� ������ŭ
        for j=1:length(w)%��ü w ���̸�ŭ
            p1(i,j)=(1j*w(j))-a(i); %jw-z1�� �ǹ���.
            L1(i,j)=sqrt(real(p1(i,j)).^(2)+imag(p1(i,j)).^(2));
            %L1��  zeros�� ���������� �Ÿ��� �����ϴ� ����=>jw���� ��zero���� �Ÿ� ���� ���ϴµ� �ʿ�.
        end
    end
    
   if(i)>1 
       L1=prod(L1);%zero�� �������� �� zero���� �Ÿ��� ���ؾߵǴ� prod����
   end
   
   for i=1:length(b)
       for j=1:length(w)
           p2(i,j)=(1j*w(j))-b(i);
           L2(i,j)=sqrt(real(p2(i,j)).^(2)+ imag(p2(i,j)).^(2));
       end
   end
   if(i)>1 L2=prod(L2);
   end
end
if(mode ==1)
    for i=1:length(a)
        for j=1:length(w)
            p1(i,j)=exp(1j*w(j))-a(i);
            L1(i,j)=sqrt(real(p1(i,j)).^(2)+imag(p1(i,j)).^(2));
        end
    end
    
   if(i)>1 L1=prod(L1);
   end
   
   for i=1:length(b)
       for j=1:length(w)
           p2(i,j)=exp(1j*w(j))-b(i);
           L2(i,j)=sqrt(real(p2(i,j)).^(2)+ imag(p2(i,j)).^(2));
       end
   end
   if(i)>1 L2=prod(L2);
   end
end
s=L1./L2;