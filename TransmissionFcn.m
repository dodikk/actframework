function [ ws ] = TransmissionFcn( s, params, Id )
%
%
%%%%%%%%%%%%

    callback = GetFcn(Id, 'trans');
    ws = callback(s, params);

return
end
