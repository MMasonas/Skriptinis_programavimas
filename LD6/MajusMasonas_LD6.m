% 1.

y1 = matfunkc(-2);
y2 = matfunkc(2);

disp('Kai x = -2:')
disp(y1)

disp('Kai x = 2:')
disp(y2)

help matfunkc


% 2.

global x y

x = 0:0.1:20;

kvadratas
puse

whos x y

figure(1)

plot(x,y,'b-.o')
grid on

xlabel('x')
ylabel('y')
title('y = x^2 / 2')


%% Papildoma uzduotis

rez1 = specfunkc(3);

disp('Vienas argumentas:')
disp(rez1)

rez2 = specfunkc(2,3);

disp('Du argumentai:')
disp(rez2)