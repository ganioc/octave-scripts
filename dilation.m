% dilation

D=[1 1 3 3 2 1 3; 2 0 0 2 3 2 2];
x=D(1,:);
y=D(2,:);

T=[2 0;0 2];
TD=T*D;
x1=TD(1,:);
y1=TD(2,:);

plot(x,y,'o-',x1,y1,'o-');
axis([-1 7 -1 7],'equal');
gird on;
legend('original', 'expanded');