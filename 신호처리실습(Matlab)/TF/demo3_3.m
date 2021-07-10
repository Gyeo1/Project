clc;
clear;
%���Ⱑ 3-3_1��
z=roots([1 -0.3]); %zero�� ��
p=roots([1 0.3 0.36 0.108]); %pole�� ��
%������ 1�� ��ǥ��
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
%���Ⱑ2�� ���� Ǫ�� ���= �κкм��� �ɰ��� ����ȯ ������ Ǭ��.
[r,p_1,k]=residue([1,-0.3],[1 0.3 0.36 0.108]);
t=linspace(0,20,21);
rev_z=0;
for i=1:length(p_1)
rev_z=rev_z+r(i)*p_1(i).^t;  %z��ȯ ����ȯ��. 
end
figure(2)
stem(t,rev_z,'k')
xlabel('n')
ylabel('h[n]')
%���Ⱑ 3��.
%�׷����� �ǹ�?=�̻��ȣ���� ���ļ�����= pole�� �������� ���ļ� ���� ����, zeros�� �������� ���ļ� ���� ����.
%�� ���������� pole�� 0.6j,-0.6j,-0.3�� �� pole�� ������ pi/2, -pi/2 ,pi�̴�.(��-1.6,1.6,3.14)
%�׸��� zeros��0.3�� ������ 0�̴� ���� -1.6�� 1.6���� ���� �����ϰ� 0���� �Ʒ��� �������� �׷����̴�.
w=linspace(-pi,pi,1000);
L=H_omega(z,p_1,w,1);
figure(3)
plot(w,abs(L));
xlim([-pi pi]);
xlabel('Frequency')
ylabel('|H[omega]|')



