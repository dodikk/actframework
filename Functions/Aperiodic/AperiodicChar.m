function [result] = AperiodicChar( s, params )

    T = params(1);
    K = params(2);

    result = T .* s.^2 + s;

return
end
