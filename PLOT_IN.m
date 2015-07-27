%PLOT_IN
if mod(i,10) == 0
   figure(1)
 %  subplot(3,1,1)
    scatter(x,vx, '.')
   % ylim([-1e-4 1e-4])
    hold on
    scatter(xi,vxi, '.')
    title('Phase Space')
    xlabel('Position');
ylabel('Velocity');
    hold off
%{    
        subplot(3,1,2)
    hist([vx,vxi],Ng)
    title('Velocity Hist.')
    
    subplot(3,1,3)
    plot(gridx,E)
    title('E field')
    %}
    pause(0.5)
   stop
end