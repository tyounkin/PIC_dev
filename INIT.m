%INIT - Initialize and set variables

Np = 2;
Ns = 2*2; %number of super particles
Ng = 1024;
Nt = 150;
L = 2*3.1415;
wp = 2*3.1415*8.98*sqrt(Np/(L^3));
x = zeros(Np,1);
vx = zeros(Np,1);
xi = zeros(Np,1);
vxi = zeros(Np,1);
gridx = linspace(0,L,Ng);
dx = gridx(2);
dt = 1e-2;
gridt = linspace(0,Nt*dt,Nt+1);

me_mi = 5.49E-4;

%Initial spatial and velocity distributions
x(1) = (L/4 -0.3 );
x(2) = (3*L/4 -0.3);

xi(1) = (L/4);
xi(2) = (3*L/4);

x = x/dx;
xi = xi/dx;
vx = vx*dt/dx;
vxi = vxi*dt/dx;
t = gridt/dt;

Nc = Ns/Ng;