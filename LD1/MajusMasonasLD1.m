% Majus Masonas
% Grupe: EEF-25/1
% Data: 2026-09-14

%% Privaloma uzduotis

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-] | F_2 [-x-]')


%% Dokumentacijos paieska

% help sin
% help plot
% help title

% doc sin
% doc plot
% doc title

% docsearch linspace
% docsearch size
% docsearch max


%% linspace, size, max pavyzdziai

% linspace(0,10,5) - 5 skaiciai nuo 0 iki 10
% size(A) - matricos dydis
% max(x) - didziausia reiksme


%% Papildoma uzduotis

N = 3;

v = N+1 : 0.5 : N+4

A = [N   N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8]

% a)
a = A(3,2)

% b)
b = A(2:3,1:2)

% c)
c = [A(1,1) A(1,3);
    A(3,1) A(3,3)]

% Vektoriaus prijungimas
v_trumpas = v(1:3);

A_galutine = [A; v_trumpas]