%HIST1 - history variables and diagnostics outside time loop
x_hist = zeros(Np,Nt+1);
x_hist(:,1) = x;
v_hist = zeros(Np,Nt+1);
v_hist(:,1) = vx;

xi_hist = zeros(Np,Nt+1);
xi_hist(:,1) = xi;
vi_hist = zeros(Np,Nt+1);
vi_hist(:,1) = vxi;



KE = zeros(Nt+1,1);
PE = zeros(Nt+1,1);


    KE(1) = sum(vx.*vx);
for j=1:Ng
    PE(1) = PE(1) + rho(j)*phi(j);
end
