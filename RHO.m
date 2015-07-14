%SETRHO

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