function s =h_t(r,p,t,mode)
if(mode==0)%라플라스 역변환식. 즉 연속일때.
    s=0;
    for i=1:length(p)
        s=s+r(i)*exp(p(i)*t);
    end %이때 들어오는 r,p가 이미 부분분수로 쪼개져서 들어오기 때문에 위와 같은 식 사용.
        %이유= 부분분수로 쪼개면 라플라스 변환식에의해 1/s-a 는 e^at를 변환한것 이기 때문.
end

if (mode==1) %z변환일때 즉 이산신호일때
    s=0;
    for i=1:length(p)
        s=s+r(i)*p(i).^t; 
        %연속일때랑 마찬가지 대신 여기서는 z변환의 공식을 따라준다.
    end
end