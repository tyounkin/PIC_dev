%FIELDS
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