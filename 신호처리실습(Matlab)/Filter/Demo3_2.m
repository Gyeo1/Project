clc;
clear;
w=linspace(0,10,1000);
Hz=linspace(0,5000,10000);
Wc=1;
delta_w=1;
Ws=2;
%�̶� Ws�� 2�϶� |H(ws)|^2=Ps�̹Ƿ� Ps�� -40db�̴�. ���ǳ��뿡�� p10�� ����.���������ִ�
%N=[(log10(1/ps -1))/(2*log(1+delta_w))�̴�. �߿����� = ps�� Ps=10log10(ps)�̴�.
%�� ps �� ���ϱ� ���� Ps/10�� �ϸ� log(ps)=-4 , ps = 10^-4���� �� �� �ִ�.
%���� ����� ����? �ø����� �Ҽ�������
N=ceil(log10((1/10^(-4))-1)/(2*log10(1+delta_w)));


%������ 1�ο�
t=linspace(0,2*pi,1000);
r=1;
center=([0,0]);
x=r*cos(t)+center(1);
y=r*sin(t)+center(2);

%1.���Ϳ��� ����.
%z1: zero���� ����, p1=pole���� ���� 
[z1,p1,k1]=buttap(N);
[num,den]=zp2tf(z1,p1,k1); %�����Լ��� ��ȯ.
H1=freqs(num,den,w); %num:�����Լ� H(s)�� ���� ���׽İ��
                    %den: H(s)�� �и� ���׽� ������� /w=�����ϰ����ϴ� ���ļ�
H_1=10*log10((abs(H1)).^2); %���ļ� ������ ũ�� �׷���.

%2 �ռ� ���͸� �ٸ� ���ͷ� ����
%numt=��ȯ�� LPF�� ���� ���׽� ,dent�� �и� ���׽�
[numt1,dent1]=lp2lp(num,den,300); %300�� cutoff���ļ� hz�ε� rad/s �� ��ȯ? no
H=freqs(numt1,dent1,Hz);
H_2=10*log10((abs(H)).^2);
%lp2bp�� (�����Լ� ����,�����Լ� �и�,�߽����ļ�,�뿪���̴�(
[numt2,dent2]=lp2bp(num,den,650,700);%passband�� 300~1000Hz �߽��� 650, ���̴� 700
H=freqs(numt2,dent2,Hz);
H_3=10*log10((abs(H)).^2);

[numt3,dent3]=lp2bp(num,den,1500,1000);%passband�� 1000~2000Hz �߽��� 1500, ���̴� 1000
H=freqs(numt3,dent3,Hz);
H_4=10*log10((abs(H)).^2);

[numt4,dent4]=lp2bp(num,den,3000,2000);
H=freqs(numt4,dent4,Hz);
H_5=10*log10((abs(H)).^2);

[numt3,dent3]=lp2hp(num,den,4000);
H=freqs(numt3,dent3,Hz);
H_6=10*log10((abs(H)).^2);

figure(1)
plot(x,y,':');
hold on
plot(real(p1),imag(p1),'xk');
xlabel('Reals(s)');
ylabel('Imag(s), butterworth');

figure(2)
plot(w,H_1);
xlim([0,2.5])
ylim([-50,5]);
grid on
xlabel('Frequency w [rad/sec]');
ylabel('|H(w)|^2 [dB] , butterworth');

figure(3)
plot(Hz,H_2,'b');
hold on
plot(Hz,H_3,'g');
hold on
plot(Hz,H_4,'r');
hold on
plot(Hz,H_5,'c');
hold on
plot(Hz,H_6,'m');
grid on
xlim([0 5000]);
ylim([-30 10]);
xlabel('Frequency [Hz]');
ylabel('|H(w)|^2 [dB]');



