---
layout: page
mathjax: true
parent: Notes
---

# Section 2: Ordinary Differential Equations
{: .no_toc }

<details close markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## What is an Ordinary Differential Equation and how does it relate to the real world?

We know about differentiation, and integration in equations, for example;

$$\begin{gathered}
y=3x^2+2\\
\frac{dy}{dx}=6x\\
\int{y}=x^3+2x+c
\end{gathered} \nonumber $$

These are what we call *analytical functions*, where the answer is itself an equation and you can plug in numerical values for $x$ to give the required value for $y$, $\frac{dy}{dx}$ or $\int{y}$. The dynamic behaviour of systems is related using differentiation and integration (with respect to time), but the relationships are more like;

$$M\frac{dv}{dt} = F - \frac{1}{2}\rho AC_{d}V^2 \nonumber $$

Such that the derivative of the value dependent on the value itself. This equation shows a good example, a simplified model of the longitudinal dynamics of a car. $F$ is the driving force at the wheels, and $v$ is the forward velocity. The second term on the right hand side represents aerodynamic losses, and $M$, $\rho$, $A$ and $C_d$ are (constant) parameters.

In dynamic simulation, because the dependent variable is time, $t$, we use the notation $\dot{v}$ in place of $\frac{dV}{dt}$. So velocity, $v=\dot{x}$ and acceleration, $a=\dot{v}=\ddot{x}$.

Although we can solve the equation analytically, the solution will only be valid for a fixed (input) force $F$, or if $F$ can be replaced by some other (analytical) function of time. In simulation, we want to generate time histories – a trace of how the variable changes over time. To do this, and allow for maximum flexibility in specifying $F$, we use numerical integration, rather than analytical solution.

<p style="border:3px; border-style:solid; border-color:#FF0000; padding: 1em;"> <b>NOTE: </b>A <i>variable</i> is something which changes over time, and which we could find a time history for. A <i>parameter</i> is a constant which is needed within the model but which might vary for separate simulation runs.</p>

## Generation of Differential Equations

Dynamic models are described in terms of a series of differential equations which can always be reduced to a set of first order differential equations. Two examples which we will refer to in these notes are the simplified single degree-of-freedom *suspension model* and the *bouncing ball model*. Note that the simplification stage of model design has already been completed for these cases, the former being reduced to a rigid mass suspended over a point which is fixed on the road by a simple spring and viscous damper (and which moves only vertically); the latter switches between contact and non-contact conditions.

<hr>

{% include_relative examples/example_1.md %}

<hr>

{% include_relative examples/example_2.md %}

<hr>