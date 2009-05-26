%%%%%Mihailov%%%%%%%

k = 10;
s = 0.3;
t = 0.025;
params = [k t s];

y = @(x)(-t^2 * x .^ 2 + k + 1);
z = @(x)(2 * s * t* x );

xx = -1000 : 0.1 : 1000;
yy = y(xx);
zz = z(xx);


% subplot(2, 1, 1); 
    %plot(zz, yy);
    plot(yy, zz);
    axis on
    grid on

% subplot(2, 1, 2); 
% hold on
%     plot(xx, yy);
%     plot(xx, zz);
%     axis on
%     grid on
% hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% charFunc = GetFcn('task_2_111', 'char');
% 
% %xxx = [0.1 : 0.1 : 100];
% 
% amp = Amplitude(xx, params, charFunc);
% ph  = Phase(xx, params, charFunc);
% 
% 
% subplot(3, 1, 3); 
% plot(amp, ph);
% axis on
% grid on
