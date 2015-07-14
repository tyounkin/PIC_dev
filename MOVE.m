%MOVE
a = zeros(Np,1);
ai = zeros(Np,1);
for j=1:Np
    p = round(x(j));
    if p==0
        p=Ng;
    end
    a(j) = E(p);
end

%for second species
for j=1:Np
    p = round(xi(j));
    ai(j) = E(p);
end
ai = ai*me_mi;




vx = vx+a;
vxi = vxi-ai;
x = vx+x;
xi = vxi+xi;

