%SETV

RHO
FIELDS

a = zeros(Np,1);
for j=1:Np
    p = round(x(j));
    a(j) = E(p);
end

vx = vx-a/2;
