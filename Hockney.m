clear variables

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

x_hist = zeros(Np,Nt+1);
x_hist(:,1) = x;
v_hist = zeros(Np,Nt+1);
v_hist(:,1) = vx;
Nc = Ns/Ng;

for i=1:Nt
rho = zeros(Ng,1);
%Charge Assignment
for p=1:Ng
    rho(p) = -Nc;
end
for j=1:Np
    p = round(x(j));
    rho(p) = rho(p) +1;
end
rho = rho*wp*wp*dt*dt/(2*Nc);

%Potential
phi = zeros(Ng,1);
for p=1:Ng
phi(1) = phi(1)+p*rho(p);
end
phi(1) = phi(1)/Ng;
phi(2) = phi(1)+2*phi(1);
for p=3:Ng
    phi(p) = rho(p-1)+2*phi(p-1)-phi(p-2);
end

%Field
E = zeros(Ng,1);
E(1) = phi(2)-phi(Ng);
for p=2:Ng-1
    E(p) = phi(p+1)-phi(p-1);
end
E(Ng) = phi(1) - phi(Ng-1);

a = zeros(Np,1);
for j=1:Np
    p = round(x(j));
    a(j) = E(p);
end

vx = vx+a;
x = vx+x;

x_hist(:,i+1) = x;
v_hist(:,i+1) = vx;
end
x_hist = x_hist*dx;
v_hist = v_hist*dx/dt;
real_t = gridt*dt;
real_x = gridx*L;
