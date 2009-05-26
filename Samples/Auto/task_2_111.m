%%%%%Mihailov%%%%%%%

k = 10;
s = 0.3;
t = 0.025;
params = [k t s];

charFunc = GetFcn('task_2_111_Locked', 'char');
xx = -1000 : 0.1 : 1000;


amp = Amplitude(xx, params, charFunc);
ph  = Phase(xx, params, charFunc);


%subplot(3, 1, 3); 
plot(amp, ph);
axis on
grid on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% k = 10;
% s = 0.3;
% t = 0.025;
% params = [k t s];
% 
% y = @(x)(-t^2 * x .^ 3 + x);
% z = @(x)(-2 * s * x .^ 2 + k);
% 
% xx = -50 : 0.1 : 50;
% yy = y(xx);
% zz = z(xx);
% 
% 
% subplot(3, 1, 1); 
%     plot(zz, yy);
%     axis on
%     grid on
% 
% subplot(3, 1, 2); 
% hold on
%     plot(xx, yy);
%     plot(xx, zz);
%     axis on
%     grid on
% hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

