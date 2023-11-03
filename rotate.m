% rotate

D=[1 1 3 3 2 1 3; 2 0 0 2 3 2 2];
x=D(1,:);
y=D(2,:);

% 90 degree rotation
theta1 = 90*pi/180;
R1=[cos(theta1) -sin(theta1); sin(theta1) cos(theta1)];
RD1 = R1*D;
x1 = RD1(1,:);
y1= RD1(2,:);

% 225 degree rotation
theta2 = 225*pi/180;
R2=[cos(theta2) -sin(theta2); sin(theta2) cos(theta2)];
RD2 = R2*D;
x2 = RD2(1,:);
y2= RD2(2,:);

% plot original and rotated figures
plot(x,y,'bo-',x1,y1,'ro-',x2,y2,'go-');

