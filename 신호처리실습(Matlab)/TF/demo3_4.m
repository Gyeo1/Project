clc;
clear;
zero=-5; %3개의 zero는 동일
p_1=[0.5*cos(pi/4)+0.5j*sin(pi/4) 0.5*cos(pi/4)-0.5j*sin(pi/4)];
p_2=[cos(pi/4)+1j*sin(pi/4) cos(pi/4)-1j*sin(pi/4)];
p_3=[1.5*cos(pi/4)+1.5j*sin(pi/4) 1.5*cos(pi/4)-1.5j*sin(pi/4)];
%전달  함수구하는 함수 =zp2tf b,a는 각각 전달함수의 분자,분모임.
[b1,a1]=zp2tf(zero,p_1,1);
[b2,a2]=zp2tf(zero,p_2,1);
[b3,a3]=zp2tf(zero,p_3,1);
%충격함수 h[n]구하기 위해선 전달함수를 부분분수로 나누고 역변환 해줌.
%부분분수화 r은 zero 계수 p는 pole의 계수
[r1,p1,k1]=residue(b1,a1);
[r2,p2,k2]=residue(b2,a2);
[r3,p3,k3]=residue(b3,a3);
t=linspace(0,20,21);
%역변환
s1=0;
s2=0;
s3=0;
for i=1:length(p1)       
    s1=s1+r1(i)*p1(i).^t;    
end
for i=1:length(p2)       
    s2=s2+r2(i)*p2(i).^t;    
end
for i=1:length(p3)       
    s3=s3+r3(i)*p3(i).^t;    
end

figure(1)
subplot(311)
stem(t,s1,'k');
ylabel('h[n], system#1')
grid on

subplot(312)
stem(t,s2,'k');
ylabel('h[n], system#2')
grid on

subplot(313)
stem(t,s3,'k');
grid on
ylabel('h[n], system#3')
xlabel('t[sec]')
