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

Formulating the state space representation of a system gives us the opportunity to understand some of its behaviour without running a simulation through eigen-analysis.  This involves determining the eigenvalues and eigenvectors of the system which are derived from the $A$ matrix in the state space formulation.  

In this lecture we will look at what the eigenvalues and eigenvectors of a system can tell us about the characteristics of a dynamic system.

Download slides [here]({{ site.url }}/ttc066-module/lectures/Using Eigenvalues and Eigenvectors.pdf)

---

## Drivetrain Dynamics

The drivetrain is an important consideration in understanding vehicle driveability, noise vibration and harshness.  In engineering a drivetrain that produces a *good* response (however this is defined) the first stage is always creating a model.  This model is used for defining a required response, analysis and investigation.

In this lecture we will be looking at the drivetrain as a system to understand the role of each component.  Following this we will discuss how various of models of the system can be created, what they tell us and finally finish by looking at how these can be used for evaluating and engineering the performance of the drivetrain system.

Download slides [here]({{ site.url }}/ttc066-module/lectures/Drivetrain Dynamics.pdf)

---

## Engine Modelling

The engine is an important system in the vehicle whether acting alone or alongside an electric machine in a hybrid vehicle. Representation of the engine as a torque producing device can be done in a number of ways, we will be looking in this lecture at Mean Value Engine Models (MVEM).  This form of model represents the gas flows and thermodynamics as discrete points.

The elements and equations used to model an engine are commonly encountered in other applications but do require some assumptions to be made which leads to some loss of accuracy.  We will be looking at this and how measurement results can me used to improve accuracy.

Download slides [here]({{ site.url }}/ttc066-module/lectures/Engine Modelling.pdf)

---

<!-- ---

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
