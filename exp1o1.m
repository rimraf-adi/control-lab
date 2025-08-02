
M = 1;
B = 0.5;
k = 2;


tspan = [0 20];
x0 = [0; 0]; 

F = @(t) 1;%exp(-0.1*t); 


odefun = @(t, x) [x(2); (1/M)*(F(t) - B*x(2) - k*x(1))];


[t, X] = ode45(odefun, tspan, x0);

figure
subplot(2,1,1)
plot(t, X(:,1), 'b', 'LineWidth', 2)
xlabel('Time (s)')
ylabel('Displacement x(t)')
title('Displacement Response')
grid on

subplot(2,1,2)
plot(t, X(:,2), 'r--', 'LineWidth', 2)
xlabel('Time (s)')
ylabel('Velocity v(t)')
title('Velocity Response')
grid on
