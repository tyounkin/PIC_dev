%SETV

RHO
FIELDS

a = zeros(Np,1);
ai = zeros(Np,1);
for j=1:Np
    p = round(x(j));
    a(j) = E(p);
end
%for second species
for j=1:Np
    p = round(xi(j));
    ai(j) = E(p);
end
ai = ai*me_mi;

vx = vx-a/2;
vxi = vxi-ai/2;
