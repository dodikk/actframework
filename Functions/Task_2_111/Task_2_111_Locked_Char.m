function [result] = Task_2_111_Locked_Char( s, params )

    K   = params(1);
    T   = params(2);
    ksi = params(3);

    result = (T.^2 .* s.^2 + 2 .* ksi .* T .* s + 1 + K);

return
end
