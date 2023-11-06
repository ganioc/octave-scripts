% file quiver_tst.m

[X Y Z] = peaks;

contour(X, Y, Z);

[DX DY] = gradient(Z);

hold on;
quiver(X,Y,DX,DY);
axis([-2 2 -2 2]);
hold off;
