%function PlotHaighTheory()
% x=-1.06:0.001:1.06;
% z=0.35.*x-sqrt((0.1225)+1-x.*x);
% y=0.35.*x+sqrt((0.1225)+1-x.*x);
% plot(x,y,x,z)
function PlotHaighTheory(sigma0,v)

 a = num2str(v);
 f1 = 'x^2+y^2-2*.35*x*y-1';
 h = ezplot(f1);

 % to change the axis length
axis([ -2*sigma0 2*sigma0 -2*sigma0 2*sigma0]);
% to show grid and minor grid
grid on
grid minor
% setting title 
title('St Venaant Theory')
% setting label of x and y axis
xlabel('Sigma1')
ylabel('Sigma2')   
end  
