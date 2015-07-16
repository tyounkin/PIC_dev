%HIST_IN

x_hist(:,i+1) = x;
v_hist(:,i+1) = vx;

xi_hist(:,i+1) = xi;
vi_hist(:,i+1) = vxi;

KE(i+1) = sum(vx.*vx);

for j=1:Ng
    PE(i+1) = PE(i+1) + rho(j)*phi(j);
end