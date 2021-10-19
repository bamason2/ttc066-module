---
layout: home
title: Lectures
nav_order: 3
has_children: false
---

## Introduction

The first part of this lecture is an introduction to the module and the assessment for the module.

The second part of the lecture briefly outlines the need for Simulation Based Development in the engineering of modern, complex dynamic systems.

Download slides [here]({{ site.url }}/ttc066-module/lectures/Introduction.pdf)

---

## Differential Equations and Numerical Integration

Why numerical integration? It can help us find a solution where it is too difficult or not possible to find an analytical one. What is a solution? Well we normally describe a dynamic system in terms of a differential equation but are often, as we do the engineering, interested for example in actual position, velocity and acceleration, not just how these are related (through some difficult-to-think-about equation). Working out what they are for some initial conditions and parameter values e.g. spring stiffness, mass, etc help us to evaluate the consequences of the engineering decisions we make i.e. to achieve my engineering specification should I use spring with stiffness x or y?

Download slides [here]({{ site.url }}/ttc066-module/lectures/Differential Equations.pdf)

---

## Linearity and State Space

What is a linear system and why is it important to know if a system is linear. The vast majority of real systems are non-linear but they can often be approximated as linear systems.  This is important because the mathematics developed around linear systems is much more simple both the understand and to implement.  Whenever we can we would prefer to deal with a linear (or linearised) description of the systems we are trying to engineer.

In dealing with dynamic systems there are several ways in which we can represent the system for analysis.  One of the most common approaches is the state space representation which you will have come across previously.  Represented in this form there are many methods of analysis that we can throw at our system to understand how it behaves and to some extent why.  This is useful information for an engineer!

Download slides [here]({{ site.url }}/ttc066-module/lectures/Linearity and State Space.pdf)

---

## Ride Dynamics

When driving (or riding) in a car you will experience a wide frequency of vibration, this will manifest itself in vibration to your body and the sound that you hear as the vehicle operates.  Naturally, some of these vibrations and sounds are more or less pleasant to us as humans, most will have had the experience of a particularly annoying vibration or sound when in a car.  As engineers we want to make sure that the vehicles we produce don't annoy the people that use them (not a great well to sell cars) additionally vibration can be a safety issue that needs to be considered in the engineering process.

In this lecture we will look at how these vibration are generated, how they are classified and what they are called.  Also we will think about some of the things that we can do to engineer-out the annoying any unsafe vibrations.

Download slides [here]({{ site.url }}/ttc066-module/lectures/Ride Dynamics.pdf)

---

## Using Eigenvalues and Eigenvectors

Formulating the state space representation of a system gives us the opportunity to understand some of its behaviour without running a simulation through eigen-analysis.  This involves determining the eigenvalues and eigenvectors of the system which are derived from the $A$ matric in the state space formulation.  

In this week we will look at what the eigenvalues and eigenvectors of a system can tell us about the characteristics of a dynamic system.

Download slides [here]({{ site.url }}/ttc066-module/lectures/Using Eigenvalues and Eigenvectors.pdf)

<!-- ---

## Engine Modelling

Download slides [here]({{ site.url }}/ttc066-module/files/Powertrain_Modelling.pdf)

---

## Drivetrain Modelling

Download slides [here]({{ site.url }}/ttc066-module/files/Powertrain_Modelling.pdf)

---

## Parameter Tuning

Download slides [here]({{ site.url }}/ttc066-module/files/Powertrain_Modelling.pdf)

---

## Vehicle and Engine Testing

Download slides [here]({{ site.url }}/ttc066-module/files/Powertrain_Modelling.pdf)

---

## MIRA Test Planning and Simulation

Download slides [here]({{ site.url }}/ttc066-module/files/Powertrain_Modelling.pdf)

--- -->
