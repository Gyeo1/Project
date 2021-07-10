clc;
clear;
%여기가 3-3_1번
z=roots([1 -0.3]); %zero의 해
p=roots([1 0.3 0.36 0.108]); %pole의 해
%반지름 1인 원표기
t=linspace(0,2*pi,1000);
r=1;
center=([0,0]);
x=r*cos(t)+center(1);
y=r*sin(t)+center(2);
figure(1)
plot(x,y,'k:');
hold on
stem(real(p),imag(p),'xk:');
hold on
stem(real(z),imag(z),'ok:');
xlabel('Real(z)')
ylabel('Imag(z)')
%여기가2번 문제 푸는 방법= 부분분수로 쪼개고 역변환 식으로 푼다.
[r,p_1,k]=residue([1,-0.3],[1 0.3 0.36 0.108]);
t=linspace(0,20,21);
rev_z=0;
for i=1:length(p_1)
rev_z=rev_z+r(i)*p_1(i).^t;  %z변환 역변환식. 
end
figure(2)
stem(t,rev_z,'k')
xlabel('n')
ylabel('h[n]')
%여기가 3번.
%그래프의 의미?=이산신호에서 주파수응답= pole의 각도에선 주파수 응답 증가, zeros의 각도에선 주파수 응답 감소.
%이 문제에서는 pole이 0.6j,-0.6j,-0.3임 즉 pole의 각도는 pi/2, -pi/2 ,pi이다.(약-1.6,1.6,3.14)
%그리고 zeros는0.3즉 각도는 0이다 따라서 -1.6과 1.6에선 위로 볼록하고 0에선 아래로 내려가는 그래프이다.
w=linspace(-pi,pi,1000);
L=H_omega(z,p_1,w,1);
figure(3)
plot(w,abs(L));
xlim([-pi pi]);
xlabel('Frequency')
ylabel('|H[omega]|')



