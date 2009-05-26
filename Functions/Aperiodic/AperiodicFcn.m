function [result] = AperiodicFcn( s, params )

    T = params(1);
    K = params(2);

    result = K ./ AperiodicChar(s, params);

return
end
