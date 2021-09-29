---
layout: page
mathjax: true
parent: Tutorials

---

## Numerical Integration using MATLAB

In this tutorial we will compare different methods for integrating a simple differential equation (or model):

$$ \dot{x}(t)=u(t)-\frac{1}{2}x(t) \nonumber $$

Assuming $u(t)=1$ at all time (i.e. $u$ is constant), produce plots of $x(t)$ against $t$ from 0 to 10 seconds in the following ways;

1. **Analytically**: For this simple example an analytical solution is possible, providing us with a useful reference solution to compare numerical results with, for most models, analytical solutions are very difficult or impossible to find. The analytical solution here is;

$$\int{\frac{1}{1-\frac{x}{2}}dx}=\int{1}dt \nonumber $$

which gives;

$$ x(t)=2-2e^{-\frac{1}{2}t} \nonumber$$

2. **Numerically**: Now, using MATLAB, write a short script with a for loop over each time step to use the Euler method for integration with a fixed time step h;

$$ x(t+h)=x(t)+h\dot{x}(t) \nonumber$$

Clearly you will also need the equation for $\dot{x}(t)$ at the top of this sheet. You do not need make any use of the analytical solution while doing this, to help you with the Matlab syntax, look at MATLAB section below.

### Questions

* Given that you know the analytical solution is 100% accurate, compare this with the other method(s). What value of the fixed time step, $h$ is needed for method 2) to give an accurate solution?
* Is there any error in the Simulink solution? What if you zoom in to the graph?
* Modify your MATLAB script for solving 2), so that it provides *mid-point* and/or *RK4* (fixed step) integration. Verify that these methods provide better accuracy

## MATLAB Reference Implementation

In this tutorial exercise we are going to write a MATLAB livescript which gives us a good way of writing some code, annotating and executing it.  

You should do the following;

* Open up MATLAB and create a new livescript using the File -> New menu.  
* Copy the code below into the livescript and calculate the integral using the two methods.
* Change the value of h and see what happens to the solution.
* Have a think (and make an attempt at) implementing RK4.

```matlab
% define the variables
K = 17647;
M = 400;
B = 1500;
h = 0.05;

% implement the solver
tm = [0:h:3]';
n = length(tm);
xm = zeros(n,2);
x = [0.1, 0];
xm(1,:) = x;

for i=2:n
   
   % first derivative based on x at start of step :
   xdot(1) = 0 - x(2);
   xdot(2) = K/M*x(1) + B/M*(0 - x(2));
   k1 = h*xdot;
   
   % then recalculate based on x at midpoint :
   xmid = x + k1/2;
   xdot(1) = 0 - xmid(2);
   xdot(2) = K/M*xmid(1) + B/M*(0 - xmid(2));
   k2 = h*xdot;
   x = x + k2;
   xm(i,:) = x;

end;
```
