%% 1

% a)
[x,y] = meshgrid(-2:0.1:1);

z = 1 - 2*x.^2 - 3*y.^2;

figure(1)

surf(x,y,z)
colormap([0 0.4470 0.7410])
shading interp

xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = 1 - 2x^2 - 3y^2')

view(70,70)
grid on


% b)
[x,y] = meshgrid(-2:0.1:2);

z = sin(abs(x+y)/20) .* exp(-abs(x+y));

figure(2)

surf(x,y,z)
colormap([0.8500 0.3250 0.0980])
shading interp

xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = sin(|x+y|/20)e^{-|x+y|}')

view(10,10)
grid on


%% Papildoma uzduotis

[x,y] = meshgrid(-2:0.1:2);

z = 1 - (x.^2 + y.^2);

figure(3)


% a) Su apsvietimu
subplot(1,3,1)

surf(x,y,z)
shading interp
camlight
lighting gouraud

xlabel('x')
ylabel('y')
zlabel('z')
title('Su apsvietimu')
grid on


% b) Su konturu
subplot(1,3,2)

surfc(x,y,z)

xlabel('x')
ylabel('y')
zlabel('z')
title('Su konturu')
grid on


% c) Paprastas pavirsius
subplot(1,3,3)

surf(x,y,z)

xlabel('x')
ylabel('y')
zlabel('z')
title('Paprastas pavirsius')
grid on