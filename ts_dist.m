clear variables
v= linspace(-2*3.1415,2*3.1415,100);
dv = v(2)-v(1);

x = transpose(linspace(-2*3.1415,2*3.1415,100));

f = transpose((1-1/2*cos(x/2))*(v.*v/sqrt(2*3.1415).*exp(-v.*v/2)));
v = v;
contourf(x,v,f)
colorbar

Nt = 10;
s = zeros(Nt,1);
for i=1:Nt
r=rand;
fv = (1-1/20*cos(r/2))*(v.*v/sqrt(2*3.1415).*exp(-v.*v/2))*dv;
cdf = cumsum(fv);
cdf = cdf/cdf(end);
s(i) = slicesample(0,1,'pdf',fv);
end
