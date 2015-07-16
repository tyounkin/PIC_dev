
n_dis = 1000;

x_coord = linspace(-2*3.1415,2*3.1415,n_dis);
v_coord = linspace(-2*3.1415,2*3.1415,n_dis);
x_diff = x_coord(2) - x_coord(1);
v_diff = v_coord(2) - v_coord(1);

pdf_x = (1-1/2*cos(x_coord/2));
pdf_v = (v_coord.*v_coord/sqrt(2*3.1415).*exp(-v_coord.*v_coord/2));

cdf_x = cumsum(pdf_x)*x_diff;
cdf_v = cumsum(pdf_v)*v_diff;

cdf_x = cdf_x/cdf_x(end);
cdf_v = cdf_v/cdf_v(end);

for j=1:Np
r = rand;
s = rand;

[c index] = min(abs(cdf_x-r));
x(j) = x_coord(index);

[d indexv] = min(abs(cdf_v-s));
vx(j) = v_coord(indexv);
end

scatter(x,vx)
x = x+2*3.1415;
vx = vx*dx/dt;%5e5