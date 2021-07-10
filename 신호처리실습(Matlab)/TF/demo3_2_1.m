zero=-5;  %3개 그래프 zeros가 공통-5임
p_1=[-1+2j -1-2j];
p_2=[2j -2j];
p_3=[1+2j 1-2j];
%전달함수를 구하는 함수
[b1,a1]=zp2tf(zero,p_1,1);
[b2,a2]=zp2tf(zero,p_2,1);
[b3,a3]=zp2tf(zero,p_3,1);
%전달함수로 충격함수(h(t)구하는 방법)=>부분분수로 바꾸고 라플라스 역변환식 써줌

[r1,p1,k1]=residue(b1,a1);
[r2,p2,k2]=residue(b2,a2);
[r3,p3,k3]=residue(b3,a3);
t=linspace(1,10,1000);

s1=0;
s2=0;
s3=0;
%아랜 라플라스 역변환식. why?=>부분 분수로 최대한 쪼겠기 때문에 저 식이 나옴.
for i=1:length(p1)
    s1=s1+r1(i)*exp(p1(i)*t);
end
for i=1:length(p2)
    s2=s2+r2(i)*exp(p2(i)*t);
end
for i=1:length(p3)
    s3=s3+r3(i)*exp(p3(i)*t);
end
%그래프의 의미 :LTI시스템이 안정적이기 위해서는 유한한 입력에 대해서 lim t->무한
%일시 h(t)나 h[n]이 0으로 수렴해야됨. 주어진 시간에서 0으로 수렴
%이 시스템의 그래프를 보면 1은 t가 끝나는 지점에서 0(안정) 2는 진동(제한적안정) 
%3은 발산(불안정)이다. pole이 좌평면에 위치하는지로 예상한것과 동일.
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
