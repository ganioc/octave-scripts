% file 'livermore.m'

f = @(x,t) x.*(t.^2 + 1);
t = linspace(0,2,50);
x0 = 1;

%x_sol = lsode(f, x0, t);

tspan = [0 2];
odeset('InitialStep', 1.0e+1,'MaxStep', 1.0e+1);
% 'RelTol', 1.0e-6,'AbsTol', 1.0e-6);
[t_sol, x_sol] = ode45(f, tspan, x0);

% plot the solution
plot(t_sol, x_sol, 'o-')
grid on 
xlabel('t');
ylabel('x');