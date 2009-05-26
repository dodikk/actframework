function [result] = Task_2_85_Char( s, params )

    K = params(1);
    T1 = params(2);
    T2 = params(3);
    T3 = params(4);

    result = (1 + T1^2 .* s.^2) .* (1 + T3 .* s);

return
end
