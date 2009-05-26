function [] = Main()
% xVt, K, T
%
    %warnings('off', 'all');
    
    
    %params = [T K];
    params = [10 1];
    fId = 'aperiodic';

    x = 0.1 : 0.1 : 50;
    xLen = size(x, 2);
    
           
    trans = TransmissionFcn(x, params, fId);
    amp = Amplitude(x, params, fId);
    ph = Phase(x, params, fId);
    af = AmplitudeFreq(x, params, fId);
    pf = PhaseFreq(x, params, fId);
    apf = AmpPhaseFreq(x, params, fId);
    p = PassingCharacteristic(x, params, fId);
    imp = ImpulseCharacteristic(x, params, fId);
    
    
    subplot(4,2,1); plot(x, trans); title('Transmission - w(p)');
    subplot(4,2,2); plot(amp, ph); title('AFCH - W(iw)');
    
    %%TODO : Must be radial.
    subplot(4,2,3); plot(x, amp); title('Amplitude - P(w)');
    subplot(4,2,4); plot(x, ph); title('Phase - Q(w)');
  
    subplot(4,2,5); plot(x, af); title('Amplitude-fraq - A(w)');
    subplot(4,2,6); plot(x, pf); title('Phase-freq Fi(w)');
    
    subplot(4,2,7); plot(x, imp); title('Impulse - h(t)');
    subplot(4,2,8); plot(x, p); title('Passing - w(t)');
    

return
end
