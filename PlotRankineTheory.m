function PlotRankineTheory(r)
% to plot a square    
x1=-1*r;
x2=1*r;
y1=-1*r;
y2=1*r;
x = [x1, x2, x2, x1, x1];
y = [y1, y1, y2, y2, y1];
plot(x, y, 'b-', 'LineWidth', 3);% plotting square using plot function

% to fill the output with color 
color = [0 1 1];
scatter1 = fill(x,y,color);
% to create transparent color
alpha(scatter1,.5);
% to change the axis length
axis([ 2*x1 2*x2 2*y1 2*y2]);
% to show grid and minor grid
grid on
grid minor
% setting titlegit push
title('Rankine Theory')
% setting label of x and y axis
xlabel('?1/?Y')
ylabel('?2/?Y')



end