function [ af ] = AmplitudeFreq( w, T, K )
%
%
    af = [];
    amp = Amplitude(w, T, K);
    phase = Phase(w, T, K);
    
    ampSize = size(amp, 2);
    for index = 1 : ampSize
        ampItem = amp(index);
        phaseItem = phase(index);
        afItem = norm(ampItem, phaseItem);
        af = [af afItem];
    end

return
end
