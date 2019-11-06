function PlotStVenantTheory(r,v) % defining function to plot maximum principal strain theory 
% defining points 
% these points are the point of intersection of these equcations:-
% sigma1 = sigma0 + v*sigma2  --eqn1
% sigma2 = sigma0 + v*sigma1  --eqn2
% sigma1 = -sigma0 + v*sigma2 --eqn3
% sigma2 = -sigma0 + v*sigma1 --eqn4
pt1 = r/(1-v);
pt2 = r/(1+v);
% by eqn1 & eqn2
x1 = pt1;
y1 = pt1;
% by eqn2 and eqn3
x2 = (-1)*pt2;
y2 = pt2;
% by eqn3 and eqn4
x3 = (-1)*pt1;
y3 = (-1)*pt1;
% by eqn4 and eqn1
x4 =  pt2;
y4 = (-1)*pt2;

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
xlabel('Sigma1')
ylabel('Sigma2')



end
