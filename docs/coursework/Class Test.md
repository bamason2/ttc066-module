---
layout: home
# mathjax: true
parent: Test and Coursework
published: true
---

# Assessed Simulation Exercise

## Analysis of Linear and Nonlinear Drivetrain Models using Matlab and Simulink

In this exercise you should follow the instructions carefully and provide written answers on the answer sheet (see below). The marks available for each component are given in **[square brackets]**.

Please download the following files;

1. Answer sheet; [answer_sheet.doc](files/answer_sheet.docx)
2. Model initialisation script; [init4.m](files/Init4.m)
3. Model file; [drive4.slx](files/drive4.slx)

If you downloaded these files before this session, make sure there are no changes to them in the versions you start with, download them again if you’re unsure.

### Submission Requirements

Before the end of the assessment you should make sure you have uploaded the following files to LEARN for marking.  It is **strongly** suggested that you do not leave this to the very last minute.

1. answer_sheet.doc
2. vaccs.fig
3. driveinout.slx
4. gains.fig
5. speedvar.fig

The files above should be submitted to the LEARN module page in the Assessment Information, Submission and Feedback Section through the [Week 6 Assessed Simulation Exercise](https://learn.lboro.ac.uk/mod/coursework/view.php?id=1281915) activity.

## Part One:  Linear and Nonlinear Simulations

The default configuration of *init4* and *drive4* provide a tip-in test, inducing a shuffle response in vehicle acceleration from a *near* step-change in torque input.  

The model can be simulated as a *linear* or *non-linear system*. The nonlinear model variant is default, this is set by `lin = 0` in *init4*, to run the linear variant the parameter `lin` should be set `lin = 1`.

Initialise the variables in MATLAB by running *init4* then run a nonlinear simulation with the Simulink model and store the vehicle acceleration as a new variable, e.g. `vaccnl = vacc;`.

Now set `lin = 1` in *init4*, re-execute *init4* and run the simulation.  The linear and nonlinear model variants can now be compared by looking at the results vectors *vaccnl* and *vacc*.

Scale the accelerations so that they give translational vehicle acceleration rather than the rotational acceleration of the Simulink model.  (You can do this in MATLAB, there is no need to alter the Simulink model.)

|---|---|
|**Q1.** Produce a plot which compares linear with nonlinear translational accelerations on the same axes.  Label the axes appropriately, stating which gear the results relate to.  Save this figure as **vaccs.fig** and submit it to LEARN| **[5 Marks]** |
|**Q2.** Briefly explain what the differences are between the linear and nonlinear versions. Why has the acceleration response changed in the way it has? | **[5 Marks]** |
| **Total** | **[10 Marks]** |

## Part Two:  Linear Model Analysis – Eigenstructure

With the model in its linear form, use `linmod()` to extract the $A$ matrix and `eig()` to find its eigenvalues.

|---|---|
|**Q1.** Complete the table (Part 2, Q1) on the answer sheet about the system modes. *Look at the MATLAB output carefully since vectors with large and small magnitude components are often shown with a common multiplication factor (power of ten).* | **[15 Marks]** |
| **Total** | **[15 Marks]** |

## Part Three:  Linear Model Analysis - Frequency Response

|---|---|
|**Q1.** Modify the model so that it has one input (inport block) and three outputs (outport blocks) at the top level. The input should be engine torque and the outputs should be engine (flywheel) acceleration, transmission (gearbox) acceleration and vehicle acceleration with all accelerations *rotational*. You will have to modify the engine and transmission inertia subsystems to do this. Compare them with the vehicle inertia subsystem to see how.  Save this version of the model as **drive4inout.slx** and submit this to LEARN. | **[4 Marks]** |
|**Q2.** Use `linmod()` on this new version of the model.  Then use the slightly modified MATLAB commands in the [Frequency Response](http://bamason2.github.io/ttc066-module/notes/Section_7.html#frequency-response) section in the Drivetrain Dynamics notes, to produce a frequency response (Bode) plot of Gain only, from the input to each of the three outputs (with the three lines on one plot) for the frequency range 0.1 to 100Hz. Use a legend on the plot to show which colour line corresponds to which output. Save this figure as **gains.fig** and submit the figure to LEARN | **[5 Marks]** |
|**Q3.** Use your **gains.fig** figure to answer the following. The sum of the four inertias initialised by *init4.m* gives the total (rotational, effective) inertia of the drivetrain $(J_e+J_t+J_w+J_v)$. Find this value and confirm it agrees with your bode plot at very low frequency.  *(Hint: The bode plot gives the magnitude of output divided by input at each frequency, at very low frequency this is the steady-state constant that multiplies the input to get the output.* | **[3 marks]**|
|**Q4.** Over what frequency range does the transmission oscillate with greater magnitude than the engine? | **[2 marks]** |
|**Q5.** What mode does this illustrate? | **[2 marks]** |
|**Q6.** What is its resonance frequency? | **[2 marks]** |
|**Q7.** This mode is not felt in the vehicle inertia, how can you tell this from the frequency response? | **[2 marks]** |
| **Total** | **[20 Marks]** |

## Part Four: Effect of Parameter Variation

Using the linear form of the model show how the system response changes as the initial vehicle speed changes (in *init4.m*, note how `init_speed` is used to determine the velocity tyre effect, the tyre damper constant, $B_t$).  Do this by repeatedly changing the `init_speed` variable in *init4.m* and running simulations from the Simulink window (or you could set up a loop using the `for` command and run the simulation from within MATLAB using the `sim()` command).

|---|---|
|**Q1.** Plot the vehicle acceleration against time for the tip-in manoeuvre for your range of initial speeds.  Include all the results on the same axes so comparisons can easily be made.  Label the plot appropriately and include a legend (`help legend`). Save your plot as *speedvar.fig* and submit this to LEARN. | **[8 marks]** |
|**Q2.** How is initial speed related to the tyre damper constant? | **[2 marks]** |
|**Q3.** How does the change affect the dynamic response and why is it affected this way? | **[4 marks]** |
|**Q4.** How have the modes changed? Give some evidence to show this. | **[5 marks]** |
|**Q5.** Would a certain change in speed have a beneficial influence on shuffle / rattle? | **[1 marks]** |
| **Total** | **[20 Marks]** |
