function PlotHaighTheory()
 x=-1.06:0.001:1.06;
 z=0.35.*x-sqrt((0.1225)+1-x.*x);
 y=0.35.*x+sqrt((0.1225)+1-x.*x);
 plot(x,y,x,z)
 