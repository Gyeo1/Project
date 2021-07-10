clc;
clear;

a=roots([1 2 5]); %pole�� = -1+2j, -1-2j�̴�
b=roots([1 5]); %zero�� ��= -5
c=real(a);
d=imag(a);
e=real(b);
f=imag(b);


[r,p,k]=residue([1 5], [1 2 5]);
t=linspace(0,10,100);
rev_L=0;
for i=1:length(p)
rev_L=rev_L+r(i)*exp(p(i)*t);  %���ö󽺺�ȯ ����ȯ��. why?=>�κкм��� �ɰ��� r/s+p���ε�
                                %�װ� r*exp^(p*t)�� ���ö� ��ȯ �ѰŴ�.
end
figure(2)
plot(t,rev_L);
xlabel('t[sec]')
ylabel('h(t)')
grid on

%�׷��� �ǹ� : ����Լ��� ����� �ð��� ���� ���� 0���� ���� =������ �����̴�.


figure(1)
stem(c,d,'xk:');
hold on
stem(e,f,'ok:');
xlim([-6 1]);
ylim([-3 3]);
xlabel('Real(s)')
ylabel('Imag(s)')
grid on



w=linspace(-1.5*pi,1.5*pi,100);%���ӿ��� w������ �����ε� Ư�� �������� ©����.
L=H_omega(b,a,w,0);
figure(3)
%�׷����� �ǹ�?= ���ӽ�ȣ������ pole�� ����κп��� ���ļ� ������ Ŀ���� ������ �۾���
%pole�� ������� +-2 �κп��� ���ļ� ������ Ŀ���� ������ �κп��� �۾����� ������� ���� ������. 
plot(w,abs(L))
xlim([-4 4])
xlabel('Frequency w[rad/sec]')
ylabel('|H(w)|')
grid on