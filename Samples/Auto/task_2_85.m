%%%%%%%%%NIKVIST%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
k = 30;
t1 = 3;
t2 = 4;
t3 = 0.4;

params = [k t1 t2 t3];

charFunc = GetFcn('task_2_85', 'trans');

xx = [-100 : 0.1 : 100];
%%xx = [0.1 : 0.1 : 100];

amp = Amplitude(xx, params, charFunc);
ph  = Phase(xx, params, charFunc);


%subplot(3, 1, 3); 
plot(amp, ph);
axis on
grid on

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







% fZnam = @(w)( (1 - 9 .* w.^2) .* (1 + 0.4 .* w.^2) );
% fPw = @(w)(30 * (1 - 1.6 * w .^ 2) ./ fZnam(w));
% fQw = @(w)((132 * w) ./ fZnam(w));
% 
% 
% xx = -50 : 0.1 : 50;
% yy = fPw(xx);
% zz = fQw(xx);
% 
% subplot(3, 1, 1);
% hold on
%     plot(xx, yy);
%     plot(xx, zz);
%     axis on
%     grid on
% hold off    
% 
% subplot(3, 1, 2);
% plot(yy, zz);
% axis on
% grid on
% 


