function [result] = Task_2_111_Fcn( s, params )

    K   = params(1);
    T   = params(2);
    ksi = params(3);

    result = K ./ Task_2_111_Char(s, params);

return
end
