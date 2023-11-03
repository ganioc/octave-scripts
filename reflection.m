R=[0 1; 1 0]

D=[1 1 3 3 2 1 3; 2 0 0 2 3 2 2];
x=D(1,:);
y=D(2,:);

RD = R*D;
x1=RD(1,:);
y1=RD(2,:);

plot(x,y,'o-',x1,y1,'o-')
axis([-1 4 -1 4],'equal');
legend('original','reflected');
grid on;