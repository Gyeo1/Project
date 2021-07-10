clc;
clear;
N0=32;
lognumber=log2(N0); % number of samples in the order of 2
% Initial fk: square wave

t=0:N0-1;

fk0=[zeros(12,1);ones(8,1);zeros(12,1)];

 

fk_Fr=nan(N0,lognumber+1); % initialize fk_Fr matrix in NaN

W=nan(N0/2,lognumber); % initialize W matrix in NaN

 

% Sort sample data

for k=1:N0

    fk_Fr(k,1)=fk0(f(k,1)+1);

end

 

% W calculation

for n=1:lognumber  % nth step, column index

    N_temp=N0/(2^(lognumber-n)); % sample number at nth step

    for k=1:N_temp/2

        W(k,n)=exp(-1j*2*pi/N_temp*(k-1));

    end

end

 

% Butterfly algorithm

for n=1:lognumber  % nth step, column index

    N_temp=N0/(2^(lognumber-n)); % sample number at nth step

    jmax=2^(lognumber-n); % number of DFTs at nth step

   

    for j=1:jmax  % box index

        k_offset=(j-1)*N_temp;  % offset

       

        for k=1:N_temp/2 % row index in a box

            % first half of the box

            fk_Fr(k_offset+k,n+1)=fk_Fr(k_offset+k,n)+...
                W(k,n)*fk_Fr(k_offset+N_temp/2+k,n);

            % second half of the box

            fk_Fr(k_offset+N_temp/2+k,n+1)=fk_Fr(k_offset+k,n)-...
        W(k,n)*fk_Fr(k_offset+N_temp/2+k,n);

        end

    end

end
% Plot

figure(3);

subplot(2,1,1);

stem(t,fk0);

set(gca,'Fontsize',14);

xlabel('k');ylabel('fk');

 

subplot(2,1,2);

stem(t,fk_Fr(:,lognumber+1));

set(gca,'Fontsize',14);

xlabel('r');
ylabel('Fr');