clc;
clear;
t1=-5;
t2=5;
N=4096;
fs=10;
%1
[t,p]=impulse(t1,t2,N,fs); %f�� 10 �϶� ���޽���
[t_1,p_1]=myfun_SA(t,p);%Ǫ���� ��ȯ
%2
tau=20*pi;
p3=tau*sinc((tau*t)/(2*pi)); % ��ũ�Լ�.
[t_2,p_2]=myfun_SA(t,p3); % ��ũ�Լ��� ��ȣ ����Ʈ��
%����
%�̶� ���� ���� ���ļ��� 5.0244������ 5���� ŭ �ֳ��ϸ� abs(x(f))���� 0�Ǳ�������
%�ε����� 2098�̰� 0�Ǳ����� ���� �ִ� ���ļ���. t_2�� 2098�ε����� 5.0244 �� ��ü ���ļ��� 10�� ���� �Ѵ´�.
%���� ���ļ��� 10���� ��Ҵٸ� ��������Ʈ�� ���� 2�躸�� ���� ���� ���������Ƿ�
%ǥ��ȭ�� �׷����� ����Ʈ���� ������ �ȴ�.
%f=15�϶��� ��������Ʈ�� �����ؼ� ���������� ���ø��ȴ�.
%3
p5=p.*p3; 
[t_3,p_3]=myfun_SA(t,p5); %���ļ��� 10���� ���ų� ������ ������.

figure(2)
subplot(322)
plot(t_1,abs(p_1));
xlim([-30 30]);
ylim([0,0.5])
xlabel('f[Hz]');
ylabel('lp(t)l');
subplot(321)
plot(t,p);
xlim([-1 1]);
grid on
subplot(323)
plot(t,p3);
xlabel('t[sec]');
ylabel('x(t)');
xlim([-1 1]);
grid on
subplot(324)
plot(t_2,abs(p_2));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('lx(t)l');
subplot(325)
plot(t,p5);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('y(t)');
grid on;
subplot(326)
plot(t_3,abs(p_3))
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('ly(t)l');
grid on