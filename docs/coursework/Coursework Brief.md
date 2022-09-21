---
layout: page
# mathjax: true
parent: Test and Coursework
published: false
---

# MIRA Coursework Brief

## Background

Development of models for the use of predicting powertrain performance is an important process in the design of a modern vehicle. Once a model has been developed it is also necessary to validate it against experimental data.

Over the last few weeks you have developed a MATLAB Simulink vehicle and powertrain simulation model that can be used to estimate the straight-line performance of a passenger vehicle, this model will be used in the coursework. Empirical data will be collected from test track experiments at MIRA and this will be used to both tune and assess the validity of the model as well as illustrate factors affecting acceleration performance.

## Coursework assignment

The objective of the coursework assignment is to obtain real-world experience of straight-line vehicle performance characteristics and to use a simulation model to predict the vehicle motion under such conditions. This will involve;

* Measurement of empirical data from the vehicle CANBUS.
* Graphical examination and discussion of the measured data.
* Tuning of key simulation model parameters.
* Comparing the model predictions and measured data.

## Test vehicle

The test vehicle is a Ford Focus ST.  Information about the speed of the vehicle is obtained from the vehicle's CANBUS and GPS data. The driver's inputs of clutch and throttle pedal position are measured and these are used as inputs to the powertrain model. All variables are recorded on a laptop.

## Test procedure

The coastdown tests will be conducted on the parallel straight test tracks, these consist of two dual carriageways, one mile long straights, linked with banked turns. The straight sections have zero gradients.

<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d8334.717817611583!2d-1.4499219170241149!3d52.562047999845625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2suk!4v1637585553496!5m2!1sen!2suk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

You are responsible for devising a test plan and communicating this on the day of the test to the driver. A suggested plan for the coastdown test is shown below, this does not include all of the tests required and serves only as an example.  Two test runs would normally be collected a a single result set, with the vehicle moving in opposite directions, this allows you to *average* out the effect of wind.

* Prior to testing the vehicle is weighed.
* The vehicle and tyres are warmed up by driving a couple of laps and the testing is then started.
* A speed of approximately 100kph is reached on the turn and the vehicle quickly accelerated up to approximately 115kph once on the straight.
* The gearbox is put into neutral and the vehicle coasts.
* Immediately after neutral is selected the data collection is started.
* At the end of the straight, the data collection is stopped and the test is then repeated in the opposite direction.
* The vehicle should be weighed on completion of all tests.

After completion of the coastdown tests, standing start acceleration tests should also be carried out.

After completing all the tests, the recorded data should be transferred to the analysis PC for viewing and subsequent model validation. It is essential that the different test runs are compared and the most suitable test runs selected for further analysis. To help you get used to the format of the data that will be obtained, an example data set is provided [here](files/sample_data.mat).

In devising your test plan think carefully about which model parameters you will be using the data to tune. For example higher speed coastdown tests can be used to tune the aerodynamic coefficients (as these will be dominant at higher speeds). At lower speeds the rolling resistance terms will be dominant.

There are *many* more tests that can be done in the time available (with some careful planning).  Good data collection will enable many opportunities for tuning the model response, for example you may wish to consider collecting data to support tuning of some of the following;

* Clutch biting point (as a function of pedal position)
* Drivetrain oscillation (frequency response)
* Engine torque production
* Tyre adhesion characteristics
* Clutch logic
* Engine inertia
* Traction control on launch

## Model tuning

**Coastdown tests.** These act as a precursor to the acceleration tests, allowing appropriate tuning of the drag parameters. You should compare simulated and measured vehicle speeds, and tune the $A_d$, $B_d$ and/or $C_d$ values to get the best match. It is also possible to change drivetrain friction parameters and/or the vehicle frontal area (provided it remains physically realistic).

**Acceleration tests.** You should aim to get the best correlation between vehicle/wheel speed in the simulation, and measured wheel speed from the MIRA tests, also aim for good correlation between measured and simulated engine speeds. The most likely discrepancies between the results will probably relate to the tyre adhesion characteristics and clutch biting point. Adjust these parameters in the simulation model to match the measured data as accurately as possible. Other sources of error for example could be;

* Non-linearity of the clutch and/or throttle pedal inputs.
* Engine torque scaling.

These parameters can also be tuned to achieve a better match, but the tuned parameters must remain meaningful. Always try to understand and be prepared to explain the reason for changes.

## Preparation for MIRA week

Before the test week, you should attempt a model tuning *dry run* (for acceleration tests). Tune the model parameters to obtain a single model that gives best performance on average for the calibrated test files provided for the lab exercise. Note that the actual MIRA tests results may vary significantly from the sample data and as such the tuned values will differ (i.e. you will need to tune the model to the actual measured data), the main purpose of the lab exercise is to gain familiarity with the software and parameter names.

In groups, you should decide how to instruct the driver to drive during the acceleration tests. Within reason they can be requested to perform any (safe) straight line manoeuvre involving the accelerator and clutch. Please note however, that the condition of the clutch and tyres will be monitored and it may be necessary to restrict manoeuvres involving excessive wear (excessive clutch slip manoeuvres and wheel spin are not allowed). All tests to be undertaken should be written on the test plan sheet and handed to the driver before starting the test.  It is unlikely that amendments to the test plan can be made during the testing. Note, they driver of the vehicle is unlikely to know anything about the model you have created and will not be in a position to help you collect 'correct' data, this is your responsibility.

## Report

The report must be written in a formal, technical style. The maximum length of the report is 11 sides of A4 excluding the title page. You should include the following sections;

1. Introduction
2. Vehicle Test Plan
3. Results
4. Model Tuning
5. Simulation Results and Discussion
6. Improving the Results
7. Conclusions
8. Bibliography

Your report will be assessed as follows;

|---|---|---|
| Allocation | Description | Total Marks |
|---|---|---|
| Report structure, presentation and use of language | The report should include the required sections with appropriate content included in each. An introduction should be included that is a maximum of 300 words with a brief overview of the report contents to a level of detail that its topic and main contents can be understood. Figures and tables are appropriately labelled with units included. Fonts and figures are sized appropriately. The language used is appropriate for a technical report.  The report is written in third person. | 5 |
| Vehicle test plan| The plan is of sufficient detail to enable someone to execute it and obtain the same results reported in the subsequent sections. There should be no gaps in the description or assumptions in executing the tests to obtain the same results. | 10 |
| Results | The results are presented in an appropriate manner using plots, tables and diagrams.  A description of the main features of the results is provided in the accompanying text at a level of understanding that aides comprehension.  All figures are introduced within the text before they appear. | 20 |
| Model tuning | Results from the model tuning are presented clearly and include an acceleration and coastdown tuning and at least one other tuning that you decide. The description of the tuning process should enable someone else to repeat the work described in the report and obtain the same results. | 20 |
| Simulation results and discussion | Run some simulations (after tuning) and show off your excellent results. You should identify key areas where the model represents the physical system *well* and where it does not i.e. identify the limitations of the model. This description should be supported by appropriate figures. Select metrics that enable you to *quantify* good and bad aspects of the models performance.  Explain the metrics that you use and what they show, indicate any limitations to the metrics used. *Note: some background reading will be required to do this well.* | 20 |
| Improving the results | If you were given the chance to collect the data again what would you improve? Quantify the expected improvement in model prediction capability as a result of the changes to the testing method that you have identified. | 10 |
| Conclusions | The report is summarised by reference to the main findings and achievements. No *new* information is presented in this section. | 10 |
| Bibliography | At least three sources of external information should be used in a meaningful way to improve the report. For example describing your model evaluation metrics, explaining your results or showing how the model could be improved. The external sources of information are cited appropriately. | 5 |
| **Total** | | **100** |

If you would like more guidance on report writing please have a look at this [advice sheet](https://www.lboro.ac.uk/media/wwwlboroacuk/content/library/downloads/advicesheets/Report%20writing.pdf) from the library.

## Collaboration

The testing and data post-processing for this work will be done in groups. The primary tuning of the model can also be carried out (and shared) within your group. Please note however, that fine tuning of the model and report writing must be carried out individually.

<script src="https://formspree.io/js/formbutton-v1.min.js" defer></script>

<script>
  /* paste this in verbatim */
  window.formbutton=window.formbutton||function(){(formbutton.q=formbutton.q||[]).push(arguments);};

  /* customize formbutton here*/     
  formbutton("create", {
    action: "https://formspree.io/f/mwkyekwk",
    title: "Please help me, I have a question about...",
    fields: [
      { 
        type: "email", 
        label: "Email:", 
        name: "email",
        required: true,
        placeholder: "your@student.lboro.ac.uk"
      },
      {
        type: "textarea",
        label: "Message:",
        name: "message",
        placeholder: "What would you like help with?",
      },
      { type: "submit" }      
    ],
    styles: {
      title: {
        backgroundColor: "gray"
      },
      button: {
        backgroundColor: "gray"
      }
    },
    initiallyVisible: false
  });
</script>
