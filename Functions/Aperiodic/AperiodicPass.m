function [ ht ] = AperiodicPass( t, params )
%
%
%%%%%%%%%%%%%%%%%%%
    T = params(1);
    K = params(2);

    ht = K * (T * exp(-t / T) - 3);

return
end
