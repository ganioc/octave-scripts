% limacon.m

theta = linspace(0, 2*pi, 100);
r = 1- 2*sin(theta);

x = r.*cos(theta);
y = r.*sin(theta);

%comet(x,y);

polar(theta, r);