function [ pf ] = PhaseFreq( w, params, Id )
%
%

    amp = Amplitude(w, params, Id);
    phase = Phase(w, params, Id);
    
    pf = atan(phase ./ amp);
    
return
end
