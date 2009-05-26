function [ wt ] = AperiodicImp(t, params)
%
%
%%%%%%%%%%%%%%%%%%%
   T = params(1);
   K = params(2);

   wt = K .* (1 - exp(-t ./ T)); 

return
end
