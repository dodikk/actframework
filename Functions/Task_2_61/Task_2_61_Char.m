function [result] = Task_2_61_Char( s, params )

    K = params(1);
    T1 = params(2);
    T2 = params(3);

    result = s .* (1 + T1 .* s) .* (1 + T2 .* s);

return
end
