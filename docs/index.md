---
layout: home
nav_order: 1
---

# Overview

## Week 1

The first part of the lecture for this week introduces the module and the assessment structure for the module, the second part will be looking at and explaining the requirement for simulation in modern development processes.  By way of revision in the third part we will be reviewing differential equations; what they are, what do they do and how to do numerical integration.

Why numerical integration?  It can help us find a solution where it is too difficult or not possible to find an analytical one. What is a solution? Well we normally describe a dynamic system in terms of a differential equation but are often, as we do the engineering, interested for example in actual position, velocity and acceleration, not just how these are related (through some difficult-to-think-about equation).  Working out what they are for some initial conditions and parameter values e.g. spring stiffness, mass, etc help us to evaluate the consequences of the engineering decisions we make i.e. to achieve my engineering specification should I use spring with stiffness x or y?

### Week 1 Resources

| **Lecture Slides**  |
|[Introduction]({{ site.url }}/ttc066-module/lectures/Introduction.pdf) |
|[Differential Equations and Numerical Integration]({{ site.url }}/ttc066-module/lectures/Differential Equations.pdf) |

| **Lecture Notes** |
| [Section 1: Introduction]({{ site.url }}/ttc066-module/notes/Section_1.html) |
| [Section 2: Differential Equations]({{ site.url}}/ttc066-module/notes/Section_2.html) |
| [Section 3: Numerical Integration]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial and Computer Labs** |
| [Numerical Integration using MATLAB]({{ site.url}}/ttc066-module/labs/Numerical%20Integration.html) |
| [MATLAB Onramp](https://uk.mathworks.com/learn/tutorials/matlab-onramp.html) |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

| **Reading** |
| [Chapter 1 of System Identification Theory for the User by Lennart Ljung](https://lboro-test-vufind.koha-ptfs.co.uk/Record/454427)

## Week 2

In the second week we will be continuing our review of some of the more theoretical fundamentals of the module, that ultimately allow us to represent the behaviour of complex systems using numerical dynamic models.  In the first part of the lecture we will be looking at linearity.  

Whether or not a system is linear, or at least can be represented linearly, is important because this enables to describe and analyse the system using less complex mathematical methods.  In reality very few real systems are actually linear but in many cases they can be approximated as such.

Following from a quick look at linearity we will review the State Space Representation of a system.  This particular way of formulating the system equations is one of many but it is perhaps one of the best known.  In state space form we can make use of many different analytical methods to probe and understand the behaviour of the system we are studying and determine the consequences of the engineering decisions we make.

### Week 2 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |
|[Ride Dynamics]({{ site.url }}/ttc066-module/lectures/Ride Dynamics.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_4.html) |
| [Section 5: Ride Dynamics]({{ site.url}}/ttc066-module/notes/Section_5.html) |

| **Tutorial and Computer Labs** |
| [State Space Simulation]({{ site.url}}/ttc066-module/labs/State%20Space%20Simulation.html) |

## Week 3

In week three we will continue looking at Ride Dynamics by finishing off the last part of the lecture and starting the Tutorial and Computer Lab on Suspension System Simulation.  The lab will give you an opportunity to put what you have learnt into practice in the lectures by creating a simple quarter car model and running some simulations to observe, as you change parameters, how the system response changes.

In the second topic covered this week, Using Eigenvalues and Eigenvectors, we will start off by reviewing what eigenvalues and eigenvectors are.  Following this we will see they help us to understand the type of response to expect from a system and how systems behaviour can be invested using them.

### Week 3 Resources

| **Lecture Slides**  |
| [Ride Dynamics]({{ site.url }}/ttc066-module/lectures/Ride Dynamics.pdf) |
| [Using Eigenvalues and Eigenvectors]({{ site.url }}/ttc066-module/lectures/Using Eigenvalues and Eigenvectors.pdf) |

| **Lecture Notes** |
| [Section 5: Ride Dynamics]({{ site.url}}/ttc066-module/notes/Section_5.html) |
| [Section 6: Using Eigenvalues and Eigenvectors]({{ site.url}}/ttc066-module/notes/Section_6.html) |

| **Tutorial and Computer Labs** |
| [Simulink Drivetrain Modelling]({{ site.url}}/ttc066-module/labs/Simulink%20Drivetrain%20Modelling.html) |
| [Suspension System Simulation]({{ site.url}}/ttc066-module/labs/Suspension%20System%20Simulation.html) |

<!-- ## Week 4

### Week 4 Resources

| **Lecture Slides**  |
|[Ride Dynamics]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 5

### Week 5 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 6

### Week 6 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 7

### Week 7 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 8

### Week 8 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 9

### Week 9 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 10

### Week 10 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 11

### Week 11 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) |

## Week 12

### Week 12 Resources

| **Lecture Slides**  |
|[Linearity and State Space]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf) |

| **Lecture Notes** |
| [Section 4: Linearity and State Space]({{ site.url}}/ttc066-module/notes/Section_3.html) |

| **Tutorial** |
| [Numerical Integration]({{ site.url}}/ttc066-module/labs/Integration%20Lab.html) |

| **Computer Lab** |
| [Simulink Onramp](https://uk.mathworks.com/learn/tutorials/simulink-onramp.html) | -->
