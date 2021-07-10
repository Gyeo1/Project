clc;
clear;
w=linspace(0,10,1000);
Hz=linspace(0,5000,10000);
Wc=1;
delta_w=1;
Ws=2;
%이때 Ws가 2일때 |H(ws)|^2=Ps이므로 Ps는 -40db이다. 강의내용에서 p10을 보면.차수식이있다
%N=[(log10(1/ps -1))/(2*log(1+delta_w))이다. 중요한점 = ps는 Ps=10log10(ps)이다.
%즉 ps 를 구하기 위해 Ps/10을 하면 log(ps)=-4 , ps = 10^-4임을 알 수 있다.
%가장 가까운 정수? 올림으로 소숫점방지
N=ceil(log10((1/10^(-4))-1)/(2*log10(1+delta_w)));


%반지름 1인원
t=linspace(0,2*pi,1000);
r=1;
center=([0,0]);
x=r*cos(t)+center(1);
y=r*sin(t)+center(2);

%1.버터워스 필터.
%z1: zero들의 벡터, p1=pole들의 백터 
[z1,p1,k1]=buttap(N);
[num,den]=zp2tf(z1,p1,k1); %전달함수로 변환.
H1=freqs(num,den,w); %num:전달함수 H(s)의 분자 다항식계수
                    %den: H(s)의 분모 다항식 계수벡터 /w=관찰하고자하는 주파수
H_1=10*log10((abs(H1)).^2); %주파수 응답의 크기 그래프.

%2 앞선 필터를 다른 필터로 변경
%numt=변환된 LPF의 분자 다항식 ,dent는 분모 다항식
[numt1,dent1]=lp2lp(num,den,300); %300은 cutoff주파수 hz인데 rad/s 로 변환? no
H=freqs(numt1,dent1,Hz);
H_2=10*log10((abs(H)).^2);
%lp2bp는 (전달함수 분자,전달함수 분모,중심주파수,대역폭이다(
[numt2,dent2]=lp2bp(num,den,650,700);%passband가 300~1000Hz 중싱은 650, 길이는 700
H=freqs(numt2,dent2,Hz);
H_3=10*log10((abs(H)).^2);

[numt3,dent3]=lp2bp(num,den,1500,1000);%passband가 1000~2000Hz 중싱은 1500, 길이는 1000
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



