% a)
x = -pi : 0.1 : pi;
y = sin(x);

figure(1)

plot(x,y,'LineWidth',1.5)
grid on

xlabel('x')
ylabel('f(x)')
title('f(x) = sin(x)')

xlim([-pi pi])
ylim([min(y) max(y)])

xticks(-pi : pi/4 : pi)
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0', ...
    '\pi/4','\pi/2','3\pi/4','\pi'})

legend('sin(x)','Location','southoutside')


% b)
y1 = 2*sin(x).*cos(x);
y2 = 3*sin(x).*cos(x);

figure(2)

plot(x,y1,'LineWidth',5)
hold on
plot(x,y2,'LineWidth',5)
hold off

grid on

xlabel('x')
ylabel('f(x)')
title('Funkciju grafikai')

xlim([-pi pi])
ylim([min([y1 y2]) max([y1 y2])])

legend('2sin(x)cos(x)','3sin(x)cos(x)', ...
    'Location','southoutside')


%% 2

t = 0 : pi/20 : 4*pi;

x3 = sin(t);
y3 = cos(t);
z3 = tan(t);

figure(3)

plot3(x3,y3,z3,'-o')

grid on

xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')
title('3D grafikas')


%% Papildoma uzduotis

A = 5;
f = 3;
sigma = 1.5;
U1 = 3;
U2 = 2;

t = 0 : 0.001 : 1;

n = sigma * randn(size(t));

s = A * sin(2*pi*f*t) + n;

s_filtruotas = s;
s_filtruotas(abs(s_filtruotas) < U2) = 0;

virs_U1 = s > U1;

t_U1 = t(virs_U1);
s_U1 = s(virs_U1);


figure(4)

% a)
subplot(2,1,1)

plot(t,s,'b-.','LineWidth',1.5)
hold on

plot(t,s_filtruotas,'g-','LineWidth',1.5)

yline(U1,'r--','LineWidth',1.25)
yline(U2,'g--','LineWidth',1.25)
yline(-U2,'g--','LineWidth',1.25)

hold off

grid on

xlabel('Laikas, s','Color','b','FontSize',14)
ylabel('Itampa, V','Color','b','FontSize',14)
title('Pradinis ir filtruotas signalai')

legend('Pradinis signalas','Filtruotas signalas', ...
    'U1','U2','-U2','Location','southoutside')

xlim([min(t) max(t)])
ylim([min(s) max(s)])


% b)
subplot(2,1,2)

stem(t_U1,s_U1)
hold on

max_reiksme = max(s_U1);
min_reiksme = min(s_U1);

max_ind = s_U1 == max_reiksme;
min_ind = s_U1 == min_reiksme;

plot(t_U1(max_ind),s_U1(max_ind),'ro','MarkerSize',7)

plot(t_U1(min_ind),s_U1(min_ind),'rv', ...
    'MarkerSize',7,'MarkerFaceColor','r')

hold off

grid on

xlabel('Laikas, s','Color','b','FontSize',14)
ylabel('Itampa, V','Color','b','FontSize',14)
title('Signalo reiksmes virs U1')

legend('Reiksmes virs U1','Maksimali reiksme', ...
    'Minimali reiksme','Location','southoutside')

xlim([min(t) max(t)])
ylim([min(s_U1)-0.5 max(s_U1)+0.5])