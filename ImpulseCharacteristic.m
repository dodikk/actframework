function [ wt ] = ImpulseCharacteristic( t, params, Id )
%
%
%%%%%%%%%%%%%%%%%%%

   callback = GetFcn(Id, 'imp');
   wt = callback(t, params); 

return
end
