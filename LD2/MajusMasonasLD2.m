%% 1. Vienmaciai masyvai

a = -pi/2 : 0.5 : 3*pi;

b = a.^2;

c = sin(a + b);

c = c'


%% 2. Dvimaciai masyvai

Z = rand(3,3)

Z(:,2) = []

ZT = Z'


%% 3. Praktinis veiksmu su masyvais taikymas

A = 5;
f = 3;
sigma = 1.5;
U1 = 3;
U2 = 2;

t = 0 : 0.001 : 1;

n = sigma * randn(size(t));

s = A * sin(2*pi*f*t) + n;

% a)
atrinktos = s(s > U1);

% b)
s_filtruotas = s;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

% c)
signalo_dydis = size(s)

% d)
atrinktu_dydis = size(atrinktos)

% e)
didziausia = max(s_filtruotas)

maziausia = min(s_filtruotas)


%% Papildoma uzduotis

A = [0 1 0 2 3 0 4;
     0 0 0 0 0 0 0;
     0 5 0 6 7 0 8;
     0 9 0 1 2 0 3;
     0 0 0 0 0 0 0;
     0 4 0 5 6 0 7];

eilutes = sum(A ~= 0, 2) > 0;
stulpeliai = sum(A ~= 0, 1) > 0;

B = A(eilutes, stulpeliai)