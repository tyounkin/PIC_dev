%SETRHO

rho = zeros(Ng,1);
%Charge Assignment
%{
for p=1:Ng
    rho(p) = -Nc;
end
%}
for j=1:Np
    p = round(x(j));
    if p == 0
        p=Ng;
    end
    rho(p) = rho(p) +1;
end
%for second species
for j=1:Np
    p = round(xi(j));
    if p == 0
        p=Ng;
    end
    rho(p) = rho(p) -1;
end
rho = rho*wp*wp*dt*dt/(2*Nc);