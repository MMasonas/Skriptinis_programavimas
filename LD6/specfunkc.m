function y = specfunkc(varargin)

if nargin == 1

    a = varargin{1};
    y = a.^2;

elseif nargin == 2

    a = varargin{1}.^2;
    b = varargin{2}.^3;

    if a > b
        y = cos(a);
    else
        y = cos(b);
    end

else

    error('Galima ivesti viena arba du argumentus')

end

end