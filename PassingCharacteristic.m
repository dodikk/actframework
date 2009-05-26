function [ ht ] = PassingCharacteristic( t, params, Id )
%
%
%%%%%%%%%%%%%%%%%%%

   callback = GetFcn(Id, 'pass');
   ht = callback(t, params);

return
end
