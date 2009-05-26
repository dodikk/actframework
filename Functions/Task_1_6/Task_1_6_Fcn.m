function [result] = Task_1_6_Fcn( s, params )

    T = params(1);
    a = params(2);
	b = params(3);

    result = T * s ./ Task_1_6_Char(s, params);

return
end
