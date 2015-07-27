%INIT - Initialize and set variables
N = 1e12;
Np = 1e4;
Ns = 2*Np; %number of super particles
Nn = N/Np;
Ng = 1024;
Nt = 1000;
L = 4*3.1415;
wp = 2*3.1415*8.98*sqrt(N/(L^3));
T = 20; % electron temperature in eV
q = 1.602e-19;
qm = q/9.11e-31; % q/m charge to mass ratio (C/kg)
qmi = q/1.66e-27; % q/m charge to mass ratio (C/kg)
x = zeros(Np,1);
vx = zeros(Np,1);
xi = zeros(Np,1);
vxi = zeros(Np,1);
gridx = linspace(0,L,Ng);
dx = gridx(2);
dt = 1e-8;
gridt = linspace(0,Nt*dt,Nt+1);

me_mi = 5.49E-4;

%Initial spatial and velocity distributions
x(1) = (9*L/16 );
x(2) = (11/16*L);
x(1:Np/2) = transpose(linspace(0,L,Np/2));
x(Np/2+1:Np) = transpose(linspace(0,L,Np/2));

xi(1) = (14*L/16);
xi(2) = (6*L/16);
xi(1:Np/2) = transpose(linspace(0,L,Np/2));
xi(Np/2+1:Np) = transpose(linspace(0,L,Np/2));

% Set random gaussian velocity distribution for electrons
std_dev = sqrt(T*qm);
std_devi = sqrt(T*qmi);

vx(1:Np/2) = normrnd(1*dx/dt,std_dev/1000,Np/2,1);
vx(Np/2+1:Np) = normrnd(-1*dx/dt,std_dev/1000,Np/2,1);
%vxi(1:Np/2) = normrnd(.01*dx/dt,std_devi/1000,Np/2,1);
%vxi(Np/2+1:Np) = normrnd(-0.01*dx/dt,std_devi/1000,Np/2,1);

TSdist

x = x/dx;
xi = xi/dx;
vx = vx*dt/dx;
vxi = vxi*dt/dx;
t = gridt/dt;

Nc = Ns/Ng;