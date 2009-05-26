function [result] = Task_2_111_Locked_Fcn( s, params )

    K = params(1);
    T1 = params(2);
    T2 = params(3);
    T3 = params(4);

    result = K  ./ Task_2_111_Locked_Char(s, params);

return
end
