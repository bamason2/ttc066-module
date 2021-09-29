### Example 2: Bouncing Ball Model Vertical Component Only

A simple bouncing ball model based on the schematic below can be created as follows.

![image](figures/suspension_bouncing_ball.png)\
*Figure 2: Ball bounce model*

When the ball is in contact with the ground this is very similar to the suspension, except that the road won’t move up and down and the reference is the ground, so the sign of positive $z_b$ is different.

The obvious state choice is $x_1=z_b$ and $x_2=\dot{z}_b$ and there is no input, $u$ here. The model is;

$$
\begin{cases}
{\dot{x}_1=x_2} & \text{if } x_1<r \\
\dot{x}_2=\frac{K}{M}\left(r-x_{1}\right)-\frac{B}{M} x_{2} &\\
{\dot{x}_1=x_2} & \text{otherwise}\\
\dot{x}_2=-g &\\
\end{cases} $$

It's interesting that we're modelling mass, $M$ in the case if $z_b<r$ (in the $\frac{K}{M}$ and $\frac{B}{M}$ coefficients) but not modelling weight in this case.  Compare with the *otherwise* case, where the acceleration is only due ot the weight (the $-g$ comes from $F=ma$ where the force is the ball weight).

In the ball model, there is no input ($u$) so we run different scenarios by setting different initial conditions, $x_1(0), x_2(0)$.  In the suspension model we can also set initial conditions (and see how the suspension settles) and / or we can define a road input over time and play this into the model as it integrates.  With the full set of information;

- Model
- Initial conditions, $\mathbf{x}(0)$
- Input(s) over time, $\mathbf{u}(t)$