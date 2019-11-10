

prompt = '1. Haigh Theory\n2. Rankine Theory\n3. St Venant';
theoryNo = input(prompt);

prompt = 'Enter the value of SigmaY';
sigmaY = input(prompt);
prompt = 'Enter the value of Poisson ratio ';
v = input(prompt);
if(theoryNo==1)
    plotHaigh(v); 

elseif(theoryNo==2)
    PlotRankineTheory(sigmaY);

elseif(theoryNo==3)
    
    PlotStVenantTheory
else disp('\nenter correct value');
end


function plotHaigh(p)
 x=-1.07:0.001:1.07;
 z=p.*x-sqrt((((p*p)-1).*x.*x)+1);
 y=p.*x+sqrt((((p*p)-1).*x.*x)+1);
plot(x,y,x,z,'color',[0,0.7,0.9])
grid on
grid minor

end

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
xlabel('σ1/σY')
ylabel('σ2/σY')



end



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
% setting title
title('St Venaant Theory')
% setting label of x and y axis
xlabel('Sigma1')
ylabel('Sigma2')



end
