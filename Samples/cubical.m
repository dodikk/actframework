y = @(x)(-100 * x .^ 3 + x);
z = @(x)(-6 * x .^ 2);

xx = -10 : 0.1 : 10;
yy = y(xx);
zz = z(xx);


plot(zz, yy);

% hold on
%     plot(xx, zz);
%     plot(xx, yy);
% gold off
