---
layout: page
mathjax: true
parent: Computer Labs
---

# Drivetrain Modelling Lab II

In this laboratory you will be creating a drivetrain model that will be used for straight line performance evaluation during MIRA week.  The drivetrain model is generic in that it can be parameterised for a number of different vehicles, the parameters that you are provided with in this case are for a Ford Focus 2.0 l Ecoboost.

This exercise will give you an opportunity to create your own drivetrain model based upon the suggested structure.  By building the model from physically based first principles you will gain greater understanding of each subsystem, its representation within the model and perhaps most importantly the parameters that influence its operation.

## Approach to the development of the Engine Model

Download the engine model template, DrivetrainTemplate.mdl from LEARN and open it in Simulink.  Also download the model parameters file called DrivetrainParameters.m and open these in the editor.

Look at the inputs and outputs of each of the main top-level blocks within the Simulink model, this defines the information available in each of the subsystems; Engine, Clutch, Transmission, Driveshaft and Final Drive, Wheel and Tyres and Vehicle Chassis. Note the units required for each of these inputs and outputs.

Now look at the model parameters in the parameter file, this represents the information that is known about the drivetrain. Each of these also has a description of the units of the data.

The model is to be constructed in a modular format such that the various subsystems can be swapped and changed if required in the future.

## Engine

This subsystem is pre-built.  Note the inputs and outputs.

The sub-model is a 2D lookup table with inputs speed [rpm] and throttle position [$\theta$]. The data was obtained on the dynamomometer and represents the simplest of engine models.  The output is brake torque.

## Clutch

This subsystem is pre-built.  Not the inputs and outputs, most importantly note the logic employed.
Initially the clutch is in the slipping condition with normal force equal to 0 N.  Upon application of some normal force the transmitted torque is calculated $\mu_k F_n$ this accelerates the driven shaft which speeds up.  When the angular velocities of the input and output shafts are equal the clutch is judged to be locked and the transmitted torque is equal to the input torque.  Once locked the clutch is latched in this state i.e. it will not unlock again.

In the slipping condition the angular velocity of the input shaft (and hence engine speed) is calculated locally.  In the locked condition the the angular velocity of the input and hence output shaft is calculated further downstream and fed back to this subsystem.  This is the way in which the degrees of freedom of the system are effectively coupled on transition from slipping to locked states.

## Transmission

Open the transmission model, noting the inputs and outputs and the units required for each.  

The output torque is calculated by multiplying the input torque by the gear ratio, this is then fed downstream to the Final Drive and Driveshaft. Using five 2D lookup tables subtract the friction torque (a function of speed and torque) from the output torque.  The data for the friction torque is available in the parameter file.

The output angular velocity is fed back to the clutch and therefore represents the clutch speed.  Since the input to the transmission and the output from the clutch are the same input velocity of the transmission should be set equal to the output velocity.

## Final Drive and Driveshaft

Open the Final Drive and Driveshaft submodel, again note the inputs and outputs which are the same in name as the previous two subsystems.

This is one of the two subsystem sin this model that includes compliance and damping (the Wheel and Tyres is the other one).

The input torque is multiplied by the final drive ratio from which the output torque is subtracted (see the lecture notes).  The output torque is transmitted downstream through compliance and damping as shown in the equation below;

$$ T_{out} = k(\theta_1 - \theta_2) + b(\theta_1 - \theta_2) $$

where $k$ is the shaft stiffness, $b$ the shaft damping term, $\theta_1$ and $\theta_2$ are the upstream and downstream inertias respectively and $\dot{\theta}_1$ and $\dot{\theta}_2$ the angular velocity of the upstream and downstream inertias.

The flywheel and final drive inertias are referred from upstream as a consequence the effect of the gear and final drive ratios need to be taken into account.  The flywheel referred inertia can be calculated as shown in in Equation \ref{eq:2}.

$$ J_{f_ref} = \big[J_f \frac{r_2}{r_1}\big]^2 r_{fd}^2
\label{eq:2} $$

Where $J_f$ is the inertia of the flywheel, $\frac{r_2}{r_1}$  the currently selected gear ratio and $r_{fd}$ the final drive ratio.  

Similarly the referred final drive inertia can be calculated;

$$ J_{fd_ref} = J_{fd} r_{fd}^2 $$

Where $J_{fd}$ is the inertia of the final drive.
Make sure that you set the parameter name for the initial conditions for the angular position and velocity of the final drive and wheel.

## Tyre Model
Open the tyre model which has already been created. The subsystem is based on the LuGre model and also includes the effect of tyre rolling resistance. 

Note the three terms that are used to calculate the total force generated in the contact patch.  It is the sum of a viscous term which is the force generated through the lubricant layer between the road and tyre, a damping and stiffness term that are a consequence of the deflection of any number of ‘bristles’ that describe the asperity contact points between the tyre and road. The constant $\mu_0$ is the constant associated with the stiffness, $\mu_1$ is associated with the damping and $\mu_2$ the viscosity.
The rolling resistance is modelled;

$$ F_{rr} = (A_d + B_d V) m_{veh} g $$

With the constants $A_d$ and $B_d$ adjusting the rolling resistance.  Note that the constant $A_d$ is effectively scaled with speed up to a maximum value equal to $A_d$ (not indicated in the equation above) to ensure that the model doesn't apply rolling resistance at $V = 0$.   

## Chassis Model
Finally open the chassis model, noting the inputs and outputs. Complete the model to include the effects of aerodynamic drag (gravitational force is not required since the time to speed tests will be undertaken on a level road.

## Obtaining Results
In the simulation configuration parameters change the solver to ode5 (Dormand-Prince) fixed step solver with a step size of no greater than 0.0001 seconds (note that such a small step is required because this is a stiff system).

Undertake a coastdown simulation by setting the clutch normal force to 0 N and entering some suitable initial conditions for each of the subsystems (the ones entered in the parameter file should be fine).

Also complete a time to speed simulation by setting some suitable initial conditions, allowing the simulation to run for a number of seconds and then with throttle wide open applying clutch normal force with a suitable high ramp rate.

## Analysis and plotting
Plot the results obtained about on two different graphs, from $t = 0$ to $t = 116$ seconds.

Using the measurement CoastdownData.mat and SpeedData.mat available on Learn plot the speed measurements (choose one of the front wheel speeds) alongside the simulation results to show how they differ.  Think about which parameters you would change to get better correspondence between the two curves.
