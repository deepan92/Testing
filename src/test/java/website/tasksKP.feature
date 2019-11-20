Feature: Test Add Tasks For KPLA
  Description of what this feature file will test

  #The Given section is the place where it all starts with the URL of the web that will be tested !

  Background: Methods to be run before every testt
    Given Go to website KP


  #In this Scenario we will try to login with the wrong Email
  Scenario: Try to log in to add Tasks
    When User types email for LOGIN : "admin@vianovahealth.com"
    And User types passwordd : "kB#VssaXDau7Fd&3"
    And Click Log In button for KPLA
    And Select KP-Setup-Organisation
    And User click on the Patent that is connected with the device
    And User click on Careplan
    And User AddTask
    And User add BloodPressure

