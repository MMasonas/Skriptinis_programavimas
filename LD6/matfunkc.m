function y = matfunkc(x)

y = sin(x);

y(x < 0) = -sin(x(x < 0));

end