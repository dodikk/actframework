function [ pw ] = Phase( w, params, Id )

    aff = AmpPhaseFreq(w, params, Id);
    pw = imag(aff);

return
end
