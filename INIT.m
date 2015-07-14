%INIT - Initialize and set variables

Np = 2;
Ns = 2; %number of super particles
Ng = 32;
Nt = 150;
L = 2*3.1415;
wp = 2*3.1415*8.98*sqrt(Np/(L^3));
x = zeros(Np,1);
vx = zeros(Np,1);
gridx = linspace(0,L,Ng);
dx = gridx(2);
dt = 1e-2;
gridt = linspace(0,Nt*dt,Nt+1);

x(1) = L/2 +1;
x(2) = L/2 -1;

x = x/dx;
t = gridt/dt;

Nc = Ns/Ng;