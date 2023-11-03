% cycloid.m

t = linspace(0,6*pi, 100);
x = 2*(t-sin(t));
y = 2*(1-cos(t));

%plot(x,y)
%axis('equal')
%axis([0 12*pi 0 4])
% comet(x,y)

u = cos(t);
v = sin(4.*t);
comet(u,v)