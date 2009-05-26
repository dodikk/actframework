function [result] = Task_2_85_Fcn( s, params )

    K = params(1);
    T1 = params(2);
    T2 = params(3);
    T3 = params(4);

    result = K .* (1 + T2 .* s) ./ Task_2_85_Char(s, params);

return
end
