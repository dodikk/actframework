function [result] = Task_2_61_Fcn( s, params )

    K = params(1);
    T1 = params(2);
    T2 = params(3);

    result = K ./ Task_2_61_Char(s, params);

return
end
