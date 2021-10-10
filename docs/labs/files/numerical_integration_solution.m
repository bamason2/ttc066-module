

% define the variables


% implement the solver
h = 0.1;
t = (0:h:10)';
n = length(t);

x = zeros(n, 1);
x(1) = x_0;


for i = 1:n-1
   

    x_dot = 1 - 1/2 * x(i);
    x(i + 1) = x(i) + h * x_dot;
        


end



plot(t, 2-2*exp(-1/2*t)); hold on; plot(t, x)
xlabel('Time (s)');
title("Solution plotted for u(t)-1/2x(t)");
legend('analytical', 'numerical');