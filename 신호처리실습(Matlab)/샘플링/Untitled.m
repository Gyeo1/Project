clc;
clear;
t1=-5;
t2=5;
N=4096;
fs=20;

T_s=1/fs; %임펄스가 1이나오는 주기
t2_end=t2-T_s; % t2를 넘지 않기위해 t2에서 T_s를 줄여줌
a=(t2_end-t11)/(T_s); %임펄스 한개의 구간설정
im_length=N/a;
r=ceil(im_length);%1이 나올 구간
x_1=T_s/r;%하나의 임펄수 구간에서의 증분값.


t=zeros(1,N);
p=zeros(1,N);

for i = 1:N
    t(i)=t1+(i*x_1);
    
    if(mod(i,r)==0)
        p(i)=1;
    else
        p(i)=0;
    end
end



[t_1,p_1]=myfun_SA(t,p);
x=abs(p_1);
%for i=1:N;
 %   if(x(i)<=0.1)
  %     x(i)=0;
   % end
%end
figure(1)
subplot(211)
plot(t,p);
xlim([-1 1]);
ylim([0,1.2]);
xlabel('t[sec]');
ylabel('p(t)');
grid on;
subplot(212)
plot(t_1,x);
xlim([-30 30]);
ylim([0,0.5])
xlabel('f[Hz]');
ylabel('lp(t)l');