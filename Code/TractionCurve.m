
mu = 0.13;
muL = 0.4;
m = 22500;
mL = 82000;
Fmax = mu*m*10;
FmaxL = muL*mL*10;

P = 15000;
P2 = 4.2e6;
v = linspace(0, 80/3.6);

F = P./v;
F2 = P2./v;

Ind = find(F > Fmax);
F(end) = 0;

F(Ind) = Fmax;

Ind = find(F2 > FmaxL);
F2(end) = 0;

F2(Ind) = FmaxL;

L = 2;
figure
plot(3.6*v, F/1000, 'LineWidth', L)
hold on;
plot(3.6*v, F2/1000, 'LineWidth', L)
plot(3.6*v, 30*F/1000, 'LineWidth', L)
plot(3.6*v, (30*F+F2)/1000, 'LineWidth', L)
ts = ['Traction curve'];
%title(ts ,'interpreter','latex')
legend('F_{W40}', 'F_{Loco}', 'F_{Train}', 'F_{Train+Loco}')
%xlim([0 16])
xlabel('$v$ /(kmh$^{-1}$)','interpreter','latex')
%ylim([0 1.1*Fmax])
ylabel('$F$/kN','interpreter','latex')
grid on