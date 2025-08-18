t = 0:0.01:10;


impulse_input = zeros(size(t));
impulse_input(t == 0) = 1; 
step_input = ones(size(t));
ramp_input = t;

integrator_impulse = cumsum(impulse_input) * 0.01;
integrator_step = cumsum(step_input) * 0.01;
integrator_ramp = cumsum(ramp_input) * 0.01;


figure;
subplot(3,2,1);
plot(t, impulse_input);
title('Impulse Input');
subplot(3,2,2);
plot(t, integrator_impulse);
title('Integrator Output for Impulse Input');


subplot(3,2,3);
plot(t, step_input);
title('Step Input');
subplot(3,2,4);
plot(t, integrator_step);
title('Integrator Output for Step Input');


subplot(3,2,5);
plot(t, ramp_input);
title('Ramp Input');
subplot(3,2,6);
plot(t, integrator_ramp);
title('Integrator Output for Ramp Input');
