function [ apf ] = AmpPhaseFreq( w, params, Id )
%
%
    %%j^2 == -1
    
    apf = TransmissionFcn(j .* w, params, Id);

return
end
