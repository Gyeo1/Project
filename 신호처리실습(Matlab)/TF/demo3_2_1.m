zero=-5;  %3�� �׷��� zeros�� ����-5��
p_1=[-1+2j -1-2j];
p_2=[2j -2j];
p_3=[1+2j 1-2j];
%�����Լ��� ���ϴ� �Լ�
[b1,a1]=zp2tf(zero,p_1,1);
[b2,a2]=zp2tf(zero,p_2,1);
[b3,a3]=zp2tf(zero,p_3,1);
%�����Լ��� ����Լ�(h(t)���ϴ� ���)=>�κкм��� �ٲٰ� ���ö� ����ȯ�� ����

[r1,p1,k1]=residue(b1,a1);
[r2,p2,k2]=residue(b2,a2);
[r3,p3,k3]=residue(b3,a3);
t=linspace(1,10,1000);

s1=0;
s2=0;
s3=0;
%�Ʒ� ���ö� ����ȯ��. why?=>�κ� �м��� �ִ��� �ɰڱ� ������ �� ���� ����.
for i=1:length(p1)
    s1=s1+r1(i)*exp(p1(i)*t);
end
for i=1:length(p2)
    s2=s2+r2(i)*exp(p2(i)*t);
end
for i=1:length(p3)
    s3=s3+r3(i)*exp(p3(i)*t);
end
%�׷����� �ǹ� :LTI�ý����� �������̱� ���ؼ��� ������ �Է¿� ���ؼ� lim t->����
%�Ͻ� h(t)�� h[n]�� 0���� �����ؾߵ�. �־��� �ð����� 0���� ����
%�� �ý����� �׷����� ���� 1�� t�� ������ �������� 0(����) 2�� ����(����������) 
%3�� �߻�(�Ҿ���)�̴�. pole�� ����鿡 ��ġ�ϴ����� �����ѰͰ� ����.
figure(4)
subplot(311)
plot(t,s1);
ylabel('h(t), system#1')
subplot(312)
plot(t,s2);
ylabel('h(t), system#2')
subplot(313)
plot(t,s3);
xlabel('t[sec]')
ylabel('h(t), system#3')
