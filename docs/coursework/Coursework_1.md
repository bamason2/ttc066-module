---
layout: page
# mathjax: true
parent: Coursework
---

# MIRA Coursework Brief

## Background

Development of models for the use of predicting powertrain performance is an important process in the design of a modern vehicle. Once a model has been developed it is also necessary to validate it against experimental data. Over the last few weeks you have developed a MATLAB Simulink vehicle/powertrain simulation model that can be used to estimate the straight-line performance of a passenger vehicle, this model will be used in the coursework. Empirical data will be collected from test track experiments at MIRA and this will be used to both tune and assess the validity of the model as well as illustrate factors affecting acceleration.

## Coursework assignment

The objective of the coursework assignment is to obtain real-world experience of straight-line vehicle performance characteristics and the use of a vehicle/powertrain simulation model to predict the vehicle motion under such conditions. This will involve;

* Measurement of empirical data from the vehicle CANBUS
* Graphical examination and discussion of the measured data
* Tuning of key simulation model parameters and \item Comparing the model predictions and measured data

A report, for assessment, will be written and handed in at the end of the MIRA week.

## Test vehicle
The test vehicle is a Ford Focus ST.  Information about the speed of the vehicle is obtained from the vehicle's CANBUS and GPS data. The driver's inputs,  of clutch and throttle pedal position are measured and these are used as inputs to the powertrain model. All variables are recorded on a laptop.

## Test procedure

The coastdown tests will be conducted on parallel straights. These consist of two dual carriageways, one mile long straights, linked with banked turns. The straight sections have zero gradients. Prior to testing the vehicle is weighed. The vehicle and tyres are warmed up by driving a couple of laps and the testing can then be started.

You are responsible for devising a test plan (to be communicated to the driver), a suggested test plan would be as follows (at least two pairs of coastdown data will normally be collected and used to cancel out the effect of wind);

* A speed of approximately 100kph is reached on the turn and the vehicle quickly accelerated up to approximately 115kph once on the straight. 
* The gearbox is put into neutral and the vehicle coasts. 
* Immediately after neutral is selected the data collection is started. 
* At the end of the straight, the data collection is stopped and the test is then repeated in the opposite direction. 

After completion of the coastdown tests, standing start acceleration tests are carried out. A maximum of two of these in each direction can be used to try to achieve a minimum acceleration time. Other normal driving procedures can also be run, time allowing.

After completing all the tests, the recorded data should be transferred to the analysis PC for viewing and subsequent model validation. It is essential that the different test runs are compared and the most suitable test runs selected for further analysis.

## Model tuning

**Coastdown tests** These act as a precursor to the acceleration tests, allowing appropriate tuning of the drag parameters. You should compare simulated and measured vehicle speeds, and tune the Ad, Bd and/or Cd values to get the best match. It is also possible to change drivetrain friction parameters and/or the vehicle frontal area (provided it remains physically realistic)

**Acceleration tests** You should aim to get the best correlation between vehicle/wheel speed in the simulation, and measured wheel speed from the MIRA tests – also aim for good correlation between measured and simulated engine speeds. The most likely discrepancies between the results will probably relate to the tyre adhesion characteristics and clutch biting point. Adjust these parameters in the simulation model to match the measured data as accurately as possible. Other sources of error for example could be;

* Non-linearity of the clutch and/or throttle pedal inputs 
* Engine torque scaling 

These parameters can also be tuned to achieve a better match – but the tuned parameters must remain meaningful. Always try to understand and be prepared to explain the reason for changes.

## Preparation for MIRA week

Before the test week, you should (individually) attempt a model tuning ‘dry run’ (for acceleration tests). Tune the model parameters to obtain a single model that gives best performance on average for the calibrated test files provided for the lab exercise. Note that the actual MIRA tests results may vary significantly from the sample data and as such the tuned values will differ (i.e. you will need to tune the model to the actual measured data), the main purpose of the lab exercise is to gain familiarity with the software and parameter names.

In groups, you should decide how to instruct the driver to drive during the acceleration tests. Within reason he can be requested to perform any (safe) straight line manoeuvre involving the accelerator and clutch. Please note however, that the condition of the clutch and tyres will be monitored and it may be necessary to restrict manoeuvres involving excessive wear (excessive clutch slip manoeuvres and wheel spin are not allowed). All tests to be undertaken should be written on the test plan sheet and handed to the driver before starting the test – amendments to the test plan cannot be made ‘on the fly’.

Think about the report structure in advance so that number of graphs and information needed from the tests and analysis are known in advance. Parts of the report (such as the introduction) can be written in advance (and modified as necessary during MIRA week) to save time.

## Report

The report must be written in a “formal” style. The title/first page should include an executive summary containing a maximum of 250 words. The maximum length of the report is 9 pages of A4, including the title page, all graphs and appendices. Describe your results as concisely as possible – including plots of simulated and measured data on the same axes. Fully describe your measurements and examine/discuss the empirical data before moving on to the MATLAB analysis. Illustrate and discuss your findings for both the coastdown and acceleration sections of the test. Tabulate your tuned parameter settings and briefly discuss these settings in terms of feasibility and effect. Comment (but don’t dwell) on the major discrepancies between your tuned model and the vehicle results. In the further work section comment on additional instrumentation and/or tests that you would undertake to improve accuracy if you were to repeat the experiment and subsequent analysis.

Your report will be assessed in terms of:

* Your description of the vehicle testing. 
* Your analysis and discussion of the measured data. 
* Your approach to, and comparative success in tuning the model parameters. 
* Your discussions and commentary on the model/testing methods and errors noted.
* Clear and concise reporting style and general quality and completeness of the report.

## Collaboration
The testing and data post-processing for this work will be done in groups. The primary tuning of the model can also be carried out (and shared) within your group. Please note however, that fine tuning of the model (optional) and report writing (essential!) must be carried out individually.