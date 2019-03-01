%% Initialise
clear all, close all, clc
m = 90000;
Fb = -1*m;
RBD = 5; %Regelbetriebsdruck
VBD = 3.5; %Vollbremsdruck
tf = 4;
tl = .1;
l = 18;
c = 250;
v0 = 100/3.6;
p0 = 0;
s0 = 0;
Pres = 0/1000*[5.7/771 0 1.6]; %Strahl formula for m/s velocity

alpha = 0.9;

BPnum = [0.3 alpha];
BPden = [1 alpha];


%% Run Simulation
tmax = 100;
nmax = 200;
t = linspace(0, tmax, nmax);
%u = [5*ones(nmax/4,1); 3.5*ones(nmax/4,1); 5*ones(nmax/4,1); 3.5*ones(nmax/4,1)];
u = [5*ones(nmax/4,1); 3.5*ones(3*nmax/4,1)];
simin.time = t;
simin.signals.values = u;%[-300*ones(nmax,1)];


sim('Simulation.slx')
%% Plot
close all
tplot = force.Time;
Nwagon = 40;

step = 6;
legendstring = [];
for i = 2:step:Nwagon;
    legendstring = [legendstring; i];
end
legendstring = num2str(legendstring);


figure
subplot(321)
plot(tplot,1/1000*force.Data(:,1:step:Nwagon));
ylabel('F_B/kN')
%xlabel('t/s')
%legend(legendstring)
subplot(323)
plot(tplot, 1/1000*diff(force.Data(:,1:step:Nwagon-1),1,2))
ylabel('\Delta F/kN')
%xlabel('t/s')
%legend(legendstring)
subplot(325)
plot(tplot,5+pressure.Data(:,1:step:Nwagon));
ylabel('p_{BP}/bar')
xlabel('t/s')
legend(legendstring)
ylim([0 5.5])
xlim([0 tmax])

subplot(322)
plot(tplot,1/1000*force1.Data(:,1:step:Nwagon));
ylabel('F_B/kN')
%xlabel('t/s')
%legend(legendstring)
subplot(324)
plot(tplot, 1/1000*diff(force1.Data(:,1:step:Nwagon-1),1,2))
ylabel('\Delta F/kN')
%xlabel('t/s')
%legend(legendstring)
subplot(326)
plot(tplot,5+pressure1.Data(:,1:step:Nwagon));
ylabel('p_{BP}/bar')
xlabel('t/s')
legend(legendstring)
ylim([0 5.5])
xlim([0 tmax])


% figure
% plot(tplot,velocity.Data(:,1:step:Nwagon));
% title('velocity')
% legend(legendstring)