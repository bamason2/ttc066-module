
### Example 1: Body Bounce Suspension Model

A simple body bounce model based on the schematic below can be created as follows.

![image](figures/suspension_body_bounce.png)\\
*Figure 1: Suspension (body bounce) model*

Combining both of the springs to a single equivalent stiffness;

$$\frac{1}{K}=\frac{1}{K_{s}}+\frac{1}{K_{t}} \nonumber $$

The force, $F_s$ is a combination of stiffness and damping terms;

$$ F_{s}=K\left(z_{b}-z_{r}\right)+B_{s}\left(\dot{z}_{b}-\dot{z}_{r}\right) \nonumber $$

and applying Newton's law, $\sum F=m a$ to give;

$$ -F_{s}=M \ddot{z}_{b} \nonumber $$

$$ M \ddot{z}_{b} = K\left(z_{r}-z_{b}\right)+B_{s}\left(\dot{z}_{r}-\dot{z}_{b}\right)\\[12pt] \label{example_1:eq1} $$

<p style="border:3px; border-style:solid; border-color:#FF0000; padding: 1em;"><b>NOTE: </b>Provided the equations are written to be consistent with the choice of direction the direction chosen as positive (or negative) for deflections and forces doesn't actually matter.</p>

Now we reduce this single second order differential equation to a set of first order equations by defining system *states*, $x_1, x_2, x_3$, etc and inputs $u_1, u_2,..., u_n$ etc. We seek a form;

$$\begin{split} \dot{x}_1=f_1(\mathbf{x},\mathbf{u}) \\
\dot{x}_2=f_2(\mathbf{x},\mathbf{u})  \end{split} \label{example_1:eq2} \\[12pt] $$

Note that the notation $\mathbf{x}$ refers to the whole vector of *several* states i.e. $x_1, x_2, x_3, ..., x_n$, etc whereas $x_1$ refers to just the one state. We could choose $x_1=z_b, x_2=\dot{z}_b, x_3=z_r$ and $u=\dot{z}_r$.

Writing Equation \ref{example_1:eq1} in terms of the states and inputs we get;

$$M\dot{x}_2=K(x_3-x_1)+B_s(u-x_2) \nonumber $$

so the full set of equations in the form of Equation \ref{example_1:eq2} is;

$$ \begin{split} &\dot{x}_1=x_2 \text{     (from the definition } x_1=z_b \text{)}\\
&\dot{x}_2=\frac{K}{M}(x_3-x_1)+\frac{B_s}{M}(u-x_2) \\
&\dot{x}_3=u \end{split} \label{example_1:eq2a} \\[12pt] $$

This is good but better yet is the choice of states, $x_1=z_r-z_b$, $x_2=\dot{z}_b$ and $u=\dot{z}_r$ because this removes the need for a third state. The model is then;

$$ \begin{split} &\dot{x}_1=u-x_2 \\
&\dot{x}_2=\frac{K}{M}x_1+\frac{B_s}{M}(u-x_2) \end{split} \label{example_1:eq3} \\[12pt] $$
