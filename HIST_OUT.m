%HIST1 - history variables and diagnostics outside time loop
x_hist = zeros(Np,Nt+1);
x_hist(:,1) = x;
v_hist = zeros(Np,Nt+1);
v_hist(:,1) = vx;