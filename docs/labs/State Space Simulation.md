---
layout: home
mathjax: true
parent: Tutorials and Labs
nav_order: 2
---

## Simulink State Space Simulation

In this tutorial exercise you will be creating a state space model of the body bounce suspension system previously examined in the lecture. This will be implemented in Simulink and simulated to provide some experience of setting up and making use of this type of model.

<hr>

![image](figs/body_bounce_image_and_equations.png)

<hr>

### Tasks

1. Create a state space representation of the system using the above equations.
2. Create a model_setup.m script file. Define model parameters, A, B, C and D matrices and initial conditions $z_b=0.1$, $\dot{z}_b=0$. Refer to your notes if necessary.
3. Using the state space block in the ‘continuous’ block library of Simulink create a new model and parameterise appropriately with variable names as defined in your script file. Ensure that the simulation results are placed in the workspace as an array using the to workspace block.
4. Create a results_plot.m script file that takes the results from the to workspace block and plots them (with axis labels, legend and title).
5. Using Model Settings >> Model Properties >> callbacks >> initfcn and Model Settings >> Model Properties >> callbacks >> stopfcn add the names of your script files to provide parameters for the model and then plot the results.

*Table 1: Model parameter values*

| Parameter | Value | Units |
|---|---|
| K | 17647 | N/m |
| M | 400 | kg |
| B | 1500 | Ns/m |

Having completed the above, you should have a plot similar to this;

![image](figs/results_fig_1.png)

There is a state space block in the ‘continuous’ block library of Simulink. Create a new model which uses this block to run a simulation of the suspension model (parameters as in ‘Handy Matlab' previously shown) from an initial condition of $z_b = 0.1, = 0$. First set up the $A, B, C, D$ matrices and a vector for the initial conditions in a separate Matlab script file. Then you can put $A, B, C$ etc. in the appropriate fields in the Simulink ‘state space’ block, and provided you’ve run the script file in Matlab, Simulink can ‘see’ the values you’ve defined.

Why so ‘jerky’ ? That’s because the integrator didn’t need to take many steps to get good accuracy. It doesn’t look smooth because the plot command just assumes a straight line between each point it plots. You can get a smoother looking result by specifying a ‘refine factor’, under ‘Simulation Parameters’. Setting this to 10 will give 10 output points for each step the integrator has to take to achieve the required accuracy. Another way, which will have benefits if you want to do any frequency domain analysis of outputs from simulation models, is to set a fixed time-step at which you want the outputs calculated. This is done by specifying a value (to replace -1) in the ‘Sample time’ field for each ‘To Workspace’ block (you need to do each separately).

### Self Study

Implement the model with alternative state definition as derived within the lecture.  What are the differences.  Which of the two models in your opinion are the best ones, why?

Challenge; try and configure the solver with settings that make the simulation terminate with an error (crash.  Why do you think that the values entered did this?
