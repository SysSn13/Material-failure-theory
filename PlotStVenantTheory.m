function PlotStVenantTheory(r,v)
% defining points 
% these points are the point of intersection of given equcations  
% y = x/v +?/v; y = x/v - ?/v;
% y = v*x +?; y = v*x - ?;
x1= (-1)*r/(1+v);
x2= (-1)*r/(1-v);
x3= r/(1+v);
x4= r*(1+v^2)/(1-v^2);

y1= r/(1+v);
y2= (-1)*r/(1-v);
y3= (-1)*r/(1+v);
y4= r*(v^3-v^2+v+1)/(1-v^2);

x = [x1, x2, x3, x4, x1];
y = [y1, y2, y3, y4, y1];
plot(x, y, 'b-', 'LineWidth', 3);% plotting square using plot function

% to fill the output with color 
color = [0 1 1];
scatter1 = fill(x,y,color);
% to create transparent color
alpha(scatter1,.5);
% to change the axis length
axis([ -2*r 2*r -2*r 2*r]);
% to show grid and minor grid
grid on
grid minor
% setting titlegit push
title('St Venaant Theory')
% setting label of x and y axis
xlabel('?1')
ylabel('?2')



end