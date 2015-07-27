clear variables

INIT

SETV
HIST_OUT



for i=1:Nt
RHO

FIELDS

MOVE
HIST_IN

PLOT_IN
%{
if mod(i,10) == 1
F((i-1)/10 +1) = getframe(gcf);
end
%}
i

end
CONV




%movie2avi(F, 'tstest.avi');
PLOT
