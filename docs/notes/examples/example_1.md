
### Example 1: Body Bounce Suspension Model

A simple body bounce model based on the schematic below can be created as follows.

<img src="figures/suspension_body_bounce.png" width=400>

*Figure 1: Suspension (body bounce) model*

Combining both of the springs to a single equivalent stiffness;

$$\frac{1}{K}=\frac{1}{K_{s}}+\frac{1}{K_{t}} \nonumber $$

The force, $F_s$ is a combination of stiffness and damping terms;

$$ F_{s}=K\left(z_{b}-z_{r}\right)+B_{s}\left(\dot{z}_{b}-\dot{z}_{r}\right) \nonumber $$

and applying Newton's law, $\sum F=m a$ to give;

$$ -F_{s}=M \ddot{z}_{b} \nonumber $$

$$ M \ddot{z}_{b} = K\left(z_{r}-z_{b}\right)+B_{s}\left(\dot{z}_{r}-\dot{z}_{b}\right) \label{example_1:eq1} $$

<details close markdown="block">
  <summary style="color:green;">
    MORE ON SIGN CONVENTION
  </summary>
<hr>
If you are struggling to understand how the above has been determined please look at the diagram below;

<img src="figures/fbd.png" width=500>

We *imagine* the forces from the spring, $F_1$ and damper, $F_2$ acting in the upward direction.  Note that this is an arbitrary choice and we could have chosen another, e.g. both pointing down. With this choice the total force acting on the mass, $M$, will be described;

$$ F_{s}=K\left(z_{b}-z_{r}\right)+B_{s}\left(\dot{z}_{b}-\dot{z}_{r}\right) \nonumber $$

and since our forces act in the *opposite* direction to displacement, velocity and acceleration as defined by the arrow labelled $z_b(t)$ we say;

$$ -\sum F=ma \nonumber$$

and putting it all together we get the following (this is Equation \ref{example_1:eq1});

$$ M \ddot{z}_{b} = K\left(z_{r}-z_{b}\right)+B_{s}\left(\dot{z}_{r}-\dot{z}_{b}\right) \nonumber $$

If on the other hand we had chosen the opposite directions for $F_1$ and $F_2$ i.e. pointing downwards then $F_s$ would have looked like this;

$$ F_{s}=K\left(z_{r}-z_{b}\right)+B_{s}\left(\dot{z}_{r}-\dot{z}_{b}\right) \nonumber $$

and since forces act in the *same* direction as displacement, velocity and acceleration as defined by the arrow labelled $z_b(t)$ we say;

$$ \sum F=ma \nonumber$$

which leads to;

$$ M \ddot{z}_{b} = K\left(z_{r}-z_{b}\right)+B_{s}\left(\dot{z}_{r}-\dot{z}_{b}\right) \nonumber$$

which of course is the same as the previous one (Equation \ref{example_1:eq1})!  Note that you won't always end up with identical equations for different choices (of what is defined as positive or negative directions) but provided you have applied your choices consistently you will end up with the correct system equations.

For further information on this topic have a look at this video;

<iframe width="560" height="315" src="https://www.youtube.com/embed/-UP4rlXCMF8?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<hr>
</details>

Now we reduce this single second order differential equation to a set of first order equations by defining system *states*, $x_1, x_2, x_3$, etc and inputs $u_1, u_2,..., u_n$ etc. We are trying to work out how to put the equations that describe the system dynamic behaviour in a form that looks something like this (remembering there are several other different forms we could use e.g. state space which we will look at later);

$$\begin{split} \dot{x}_1=f_1(\mathbf{x},\mathbf{u}) \\
\dot{x}_2=f_2(\mathbf{x},\mathbf{u})  \end{split} \label{example_1:eq2} $$

Note that the notation $\mathbf{x}$ refers to the whole vector of *several* states i.e. $x_1, x_2, x_3, ..., x_n$, etc whereas $x_1$ refers to just the one state. We could choose $x_1=z_b, x_2=\dot{z}_b, x_3=z_r$ and $u=\dot{z}_r$.

Writing Equation \ref{example_1:eq1} in terms of the states and inputs we get;

$$M\dot{x}_2=K(x_3-x_1)+B_s(u-x_2) \nonumber $$

so the full set of equations in the form of Equation \ref{example_1:eq2} is;

$$ \begin{split} &\dot{x}_1=x_2 \text{     (from the definition } x_1=z_b \text{)}\\
&\dot{x}_2=\frac{K}{M}(x_3-x_1)+\frac{B_s}{M}(u-x_2) \\
&\dot{x}_3=u \end{split} \label{example_1:eq2a} $$

This is good but better yet is the choice of states, $x_1=z_r-z_b$, $x_2=\dot{z}_b$ and $u=\dot{z}_r$ because this removes the need for a third state. The model is then;

$$ \begin{split} &\dot{x}_1=u-x_2 \\
&\dot{x}_2=\frac{K}{M}x_1+\frac{B_s}{M}(u-x_2) \end{split} \label{example_1:eq3} $$
