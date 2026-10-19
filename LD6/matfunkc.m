function y = matfunkc(x)
% MATFUNKC apskaiciuoja funkcijos reiksme.
% Kai x < 0, y = -sin(x).
% Kai x >= 0, y = sin(x).

y = sin(x);
y(x < 0) = -sin(x(x < 0));

end