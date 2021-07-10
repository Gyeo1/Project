clc;
clear;
%-5~5������ �ð�����
t1=-5;
t2=5;
N=4096;
fs=20;
%�׸����� :-1~1���� ���޽����� sinc�Լ��� ���ؼ� ǥ��ȭ�Ѱ� y(t)�׸��̰�
%           ũ�⽺��Ʈ�� �������� ������ ���޽����� ũ�⽺��Ʈ���� ��ġ��
            %sinc�� FT�� rect���� ������ ���� �� �� �ִ�.

[t,p]=impulse(t1,t2,N,fs); %���� ���ǿ� ���� ���޽��� ����
[t_1,p_1]=myfun_SA(t,p); %���޽����� ũ�� ����Ʈ����
x1=abs(p_1); %���밪
figure(1)
subplot(321)
plot(t,p);
xlim([-1 1]);
ylim([0,1.2]);
xlabel('t[sec]');
ylabel('x(t)');
grid on;
subplot(322)
plot(t_1,x1);
xlim([-30 30]);
ylim([0,0.5])
xlabel('f[Hz]');
ylabel('lp(t)l');

%�ǽ� 3.2 t�� ������ ���� ���޽� ���� t�� ���� Ÿ��� 20pi�̴�.
%�̶� ���� ���� ���ļ��� 5.0244������ 5���� ŭ �ֳ��ϸ� abs(x(f))���� 0�Ǳ�������
%�ε����� 2098�̰� t_2�� 2098�ε����� 5.0244 �� ��ü ���ļ��� 10�� �Ѵ´�.
tau=20*pi;
p2=tau*sinc((tau*t)/(2*pi)); %�־��� ��ũ�Լ�.
[t_2,p_2]=myfun_SA(t,p2);  %��ũ�Լ��� 3.1���� ���� t�� ũ�� ����Ʈ�� ���ϱ�.
x2=abs(p_2);
%�Ʒ��� ���� �ð��࿡���� sinc�Լ��� ���ļ��࿡�� ��ȭ�� sinc�� ũ�⽺��Ʈ��. 
subplot(323)
plot(t,p2);
xlabel('t[sec]');
ylabel('x(t)');
xlim([-1 1]);
grid on
subplot(324)
plot(t_2,x2);
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('lx(t)l');
%�ǽ�3.3
p3=p2.*p; %������ ���� sinc�� ���޽� ������ t������ ���޽��� ���� ������.
[t_3,p_3]=myfun_SA(t,p3);%ǥ��ȭ�� p3�� ���� ���� ũ�� ����Ʈ���� ������.
x3=abs(p_3);
subplot(325)
plot(t,p3);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('y(t)');
grid on;
subplot(326)
plot(t_3,x3)
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('ly(t)l');
grid on
