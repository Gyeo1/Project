
clc;
clear;
t1=-5;
t2=5;
N=4096;
fs=15;
%�׸�����: �� 10�϶��ձ۰� �����°�? = �װ� �ٷ� ǥ��ȭ ���ļ��� �������ļ���
        %2�谡 �Ѿ�� �ϴ� ��������Ʈ ���ļ��� ������Ű�� ���ϱ� �����̴�
        %�� ������ ���ļ��������� ��ȣ�� ��ġ�¿�������� �߻��Ѵ�
        %������ ���ļ����� �׷��� ������ ���°� �������� ���Ϳ��� ������ Ư��
        %������ (�������) ������ �Ϻ����� �ʴ�(���� ��ȣ�� �Ϻ��� ������ �Ұ���)
      
%1
[t,p]=impulse(t1,t2,N,fs);
[t_1,p_1]=myfun_SA(t,p);
%2
tau=20*pi;
p2=tau*sinc((tau*t)/(2*pi));
[t_2,p_2]=myfun_SA(t,p2);
%3
p3=p.*p2;
[t_3,p_3]=myfun_SA(t,p3);
%%% �Ʒ� ���� ������ ���� ���Ϳ��� ���� �ڵ�
fc=8;
[z,p,k]=buttap(5);
[num,den]=zp2tf(z,p,k);
[num,den]=lp2lp(num,den,2*pi*fc);
[num_d,den_d]=bilinear(num,den, 1/abs(t(2)-t(1)));
y_out=filter(num_d,den_d,p3);
[t_4,p_4]=myfun_SA(t,y_out);
%%%%%% ������ �Ϻ����� ������ ���°� ���´�.
figure(5)
subplot(221)
plot(t,p3);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('before recon y(t)');
grid on
subplot(222)
plot(t,y_out);
xlim([-1 1]);
xlabel('t[sec]');
ylabel('After recon y(t)');
grid on
subplot(223)
plot(t_3,abs(p_3));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('before recon ly(f)l');
grid on
subplot(224)
plot(t_4,abs(p_4));
xlim([-30 30]);
xlabel('f[Hz]');
ylabel('After recon ly(f)l');
grid on
