k = 10;
s = 0.3;
t = 0.025;

params = [k t s];

xx = -50 : 0.1 : 50;
xxx = 0.1 : 0.1 : 50;
%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%MIHAILOV%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
charFunc = GetFcn('task_2_111_Locked', 'char');

amp = Amplitude(xx, params, charFunc);
ph  = Phase(xx, params, charFunc);


subplot(2, 1, 1); 
plot(amp, ph);
axis on
grid on

%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%NIKVIST%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
amp = Amplitude(xxx, params, 'task_2_111');
ph  = Phase(xxx, params, 'task_2_111');


subplot(2, 1, 2); 
plot(amp, ph);
axis on
grid on
%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
polynomKoeffs = [t^2 2*s*t 1+k];

disp('Gurvitz test : ');
GurvitzCheck(polynomKoeffs)

disp('Rauss test : ');
RaussCheck(polynomKoeffs)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
