% %%%%%%%%%Nikwist%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
k = 90;
t1 = 0.1;
t2 = 0.1;
params = [k t1 t2];
func = GetFcn('task_2_61', 'trans');

amp = Amplitude(xx, params, func);
ph  = Phase(xx, params, func);

%subplot(3, 1, 3); 
plot(amp, ph);
axis on
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% 
% tmp1 = 4 * 10^-4 - 1;
% 
% fZnam = @(w)(1 + w .^ 2 .* tmp1);
% fPw = @(w)((-1.8) ./ fZnam(w));
% fQw = @(w)(( -90 * (1 - w .^2) ) ./ fZnam(w));
% 
% 
% 
% xx = -1000 : 0.1 : 1000;
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
% plot(yy, zz); %%plot(yy, zz, '-o');
% axis on
% grid on

