clc;
clear;

[y,fs]=audioread('Audio_Pop01_15sec.wav');%y�¿���� ��ȣ fs�� ���� ���ļ�
t=linspace(0,15,length(y));%���� ������� ��ȣ
[f0,X]=myfun_SA(t,y);
figure(1)
subplot(211)
plot(t,y);
subplot(212)
plot(f0,abs(X));
xlim([0 5000]);


%my_func�� �ð� t������ ���ǵ� ���ӽ�ȣ x(t)�� ����Ʈ�� ���ϴ� �Լ�
%sound(y,fs);