clc;
clear;
zero=-5; %3���� zero�� ����
p_1=[0.5*cos(pi/4)+0.5j*sin(pi/4) 0.5*cos(pi/4)-0.5j*sin(pi/4)];
p_2=[cos(pi/4)+1j*sin(pi/4) cos(pi/4)-1j*sin(pi/4)];
p_3=[1.5*cos(pi/4)+1.5j*sin(pi/4) 1.5*cos(pi/4)-1.5j*sin(pi/4)];
%����  �Լ����ϴ� �Լ� =zp2tf b,a�� ���� �����Լ��� ����,�и���.
[b1,a1]=zp2tf(zero,p_1,1);
[b2,a2]=zp2tf(zero,p_2,1);
[b3,a3]=zp2tf(zero,p_3,1);
%����Լ� h[n]���ϱ� ���ؼ� �����Լ��� �κкм��� ������ ����ȯ ����.
%�κкм�ȭ r�� zero ��� p�� pole�� ���
[r1,p1,k1]=residue(b1,a1);
[r2,p2,k2]=residue(b2,a2);
[r3,p3,k3]=residue(b3,a3);
t=linspace(0,20,21);
%����ȯ
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
