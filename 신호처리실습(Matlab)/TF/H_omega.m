function s=H_omega(a,b,w,mode) %a는 zero의 해값, b는 pole의 해값, w는  linspace한값.
%mode는 연속일때 0 이산일때 1이다.
L1=zeros(1,length(w));
L2=zeros(1,length(w));
if(mode ==0)
    %아래의 2중 for문의 과정 = jw일때 모든 
    for i=1:1:length(a) %zero의 해의 갯수만큼
        for j=1:length(w)%전체 w 길이만큼
            p1(i,j)=(1j*w(j))-a(i); %jw-z1을 의미함.
            L1(i,j)=sqrt(real(p1(i,j)).^(2)+imag(p1(i,j)).^(2));
            %L1은  zeros의 두점사이의 거리를 측정하는 공식=>jw부터 각zero까지 거리 곱을 구하는데 필요.
        end
    end
    
   if(i)>1 
       L1=prod(L1);%zero가 여러개면 각 zero와의 거리를 곱해야되니 prod해줌
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