function [ pw ] = Amplitude( w, params, Id )
%
%

    aff = AmpPhaseFreq(w, params, Id);
    pw = real(aff);
    

return
end
