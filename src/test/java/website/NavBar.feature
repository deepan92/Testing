Feature: Test NavBar
  Description of what this feature file will test

  Background: Methods to be run before every test
    Given Go to website and log in for nav bar

  Scenario: The user Click and edit first part of edit Profile to NavBar
    And Click EditProfile
    And Select Edit Profile : "https://nj-staging.vianovahealth.com/users/33/edit"
    And Edit FirstName : "Time"
    And Edit LastName : "Frame"
    And Edit FirstAddress :"Agim Ramadani-1"
    And Edit SecondAddress :"Agim Ramadani-1"
    And Add AppSuite : "------"
    And Add CityOnEdit : "Prishtina"
    And Click to select State :"http://nj-staging.vianovahealth.com/users/33/edit"
    And select A state : "Alaska"
    Then FillSecondPartoF Edit Profile


  Scenario: The user click and edit second part of Edit Profile to NavBar
    When Click EditProfile
    And Select Edit Profile : "https://nj-staging.vianovahealth.com/users/33/edit"
    And Set Zip Number : "995182708"
    And Set email: "tframe@vh.com"
    And Set Location
    And Set Client name :"Filan"
    And Select a category :"Anesthesiology Assistant"
    Then The user click CancelButton :"https://nj-staging.vianovahealth.com/patients?status=active"

  Scenario: The user click on Edit And change password
    When Click EditProfile
    And Click Change password :"https://nj-staging.vianovahealth.com/user/change-password"
    Then User Wait for nextStep

  Scenario: The user Set new Password
    When Click EditProfile
    And Click Change password :"https://nj-staging.vianovahealth.com/user/change-password"
    And Set old Password :"blakaj123"


  Scenario: The user Set Password for first time
    When Click EditProfile
    And Click Change password :"https://nj-staging.vianovahealth.com/user/change-password"
    And Set old Password :"blakaj123"
    And Set new Password :"blakaj123"


  Scenario: The user Set Password to confirm
    When Click EditProfile
    And Click Change password :"https://nj-staging.vianovahealth.com/user/change-password"
    And Set old Password :"blakaj123"
    And Set new Password :"blakaj123"
    And Set new Password confirm :"blakaj123"

  Scenario: The user Set Password to confirm
    When Click EditProfile
    And Click Change password :"https://nj-staging.vianovahealth.com/user/change-password"
    And Set old Password :"blakaj123"
    And Set new Password :"blakaj123"
    And Set new Password confirm :"blakaj123"
    Then User click on ChangePassword

  Scenario: The User click on view First Page
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"

  Scenario: The user click on first result
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"

  Scenario: The user click on ViewPatient
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"

  Scenario: The user click On Control in Selected Patient
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User Select button to add Vitals for seven days
    And After click a new window is appeared and select a vital :"422"
    And After click a new window is appeared and select a date :"18/05/1997"
    And After click a new window is appeared and select a Value:"123"
    And After click a new window is appeared and select a Time of day
    And After click a new window is appeared and select a Time of Meal
    Then Click ADD Button :"btn-blue"

  Scenario: The user click On Control in Selected Patient and Select Summaries
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"


  Scenario: The user click On Control in Selected Patient and Select Communication
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"

  Scenario: The user click On Control in Selected Patient and Select Communication and Test cases
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And User Click on Communication and Sent Sms now :"green-btn"
    And User Click on Communication and fill sent sms field : "message-holder"
    And User Click on Communication and click sent button for sent : "send-btn"
    And User click on Communication and click Care notes
    And User click on Communication and click care note minutes :"notes-number"


  Scenario: The user click On Control in Selected Patient and Select Care plan and Test cases
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And User Click on Communication and Sent Sms now :"green-btn"
    And User Click on Communication and fill sent sms field : "message-holder"
    And User Click on Communication and click sent button for sent : "send-btn"
    And User click on Communication and click Care notes
    And User click on Communication and click care note minutes :"notes-number"
    And User click on Care plan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User click on Care plan and click Add Medication :"addMedication"


  Scenario: The user click On Controlin Selected Patient and Select Care plan and incoming data
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And User Click on Communication and Sent Sms now :"green-btn"
    And User Click on Communication and fill sent sms field : "message-holder"
    And User Click on Communication and click sent button for sent : "send-btn"
    And User click on Communication and click Care notes
    And User click on Communication and click care note minutes :"notes-number"
    And User click on Care plan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User click on Care plan and click Add Medication :"addMedication"
    And User click on Care plan and click Add Medication name :"Search Medication Name"
    And User click on Care plan and click Add Medication Frequency :"daily"
    And User click on Care plan and click Add Medication Dosage :"Example: 20mg"
    And User click on Care plan and click Add Medication PRN :"0"
    And User click on Care plan and click Add Medication Time of Day
    And User click on Care plan and click Add Medication Meal Association
    And User click on Care plan and click Add Medication Description :"textarea-background"
    And User click on Care plan and click Add Medication Rx "form-control"
    And User click on Care plan and click Add Medication and select :"btn-blue"

  Scenario: The user click On Control in Selected Patient and Select Care plan and Delete a Medication
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And User Click on Communication and Sent Sms now :"green-btn"
    And User Click on Communication and fill sent sms field : "message-holder"
    And User Click on Communication and click sent button for sent : "send-btn"
    And User click on Communication and click Care notes
    And User click on Communication and click care note minutes :"notes-number"
    And User click on Care plan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User click on Care plan and click Add Medication :"addMedication"
    And User click on Care plan and click Add Medication name :"Search Medication Name"
    And User click on Care plan and click Add Medication Frequency :"daily"
    And User click on Care plan and click Add Medication Dosage :"Example: 20mg"
    And User click on Care plan and click Add Medication PRN :"0"
    And User click on Care plan and click Add Medication Time of Day
    And User click on Care plan and click Add Medication Meal Association
    And User click on Care plan and click Add Medication Description :"textarea-background"
    And User click on Care plan and click Add Medication Rx "form-control"
    And User click on Care plan and click Add Medication and select :"btn-blue"

  Scenario: The user click On Control in Selected Patient and Select Care plan and Add New Vital
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And User Click on Communication and Sent Sms now :"green-btn"
    And User Click on Communication and fill sent sms field : "message-holder"
    And User Click on Communication and click sent button for sent : "send-btn"
    And User click on Communication and click Care notes
    And User click on Communication and click care note minutes :"notes-number"
    And User click on Care plan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User click on Care plan and click Add Medication :"addMedication"
    And User click on Care plan and click Add Medication name :"Search Medication Name"
    And User click on Care plan and click Add Medication Frequency :"daily"
    And User click on Care plan and click Add Medication Dosage :"Example: 20mg"
    And User click on Care plan and click Add Medication PRN :"0"
    And User click on Care plan and click Add Medication Time of Day
    And User click on Care plan and click Add Medication Meal Association
    And User click on Care plan and click Add Medication Description :"textarea-background"
    And User click on Care plan and click Add Medication Rx "form-control"
    And User click on Care plan and click Add Medication and select :"btn-blue"
    And User click on Care plan and click Add Medication and add New Vital :"addMonitor"
    And User click on Care plan and click Add Vital and select name on Vital
    And User click on Care plan and click Add Vital and frequency on vital
    And User click on Care plan and click Add Vital and GOAL on vital :"Goal"
    And User click on Care plan and click Add Vital and Time on vital :"right-space"
    And User click on Care plan and click Add Vital and select after :"right-space"
    And User click on Care plan and click Add Vital and add new vital :"btn-blue"

  Scenario: The user click On Controlls in Selected Patient and Select Care plan and Add New Aler Rule
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click Summaries and select MealTpye
    And User click Summaries and select TimeType
    And User click Summaries and select Blood Pressure
    And User click Summaries and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User Click on Communication :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And User Click on Communication and Sent Sms now :"green-btn"
    And User Click on Communication and fill sent sms field : "message-holder"
    And User Click on Communication and click sent button for sent : "send-btn"
    And User click on Communication and click Care notes
    And User click on Communication and click care note minutes :"notes-number"
    And User click on Care plan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And User click on Care plan and click Add Medication :"addMedication"
    And User click on Care plan and click Add Medication name :"Search Medication Name"
    And User click on Care plan and click Add Medication Frequency :"daily"
    And User click on Care plan and click Add Medication Dosage :"Example: 20mg"
    And User click on Care plan and click Add Medication PRN :"0"
    And User click on Care plan and click Add Medication Time of Day
    And User click on Care plan and click Add Medication Meal Association
    And User click on Care plan and click Add Medication Description :"textarea-background"
    And User click on Care plan and click Add Medication Rx "form-control"
    And User click on Care plan and click Add Medication and select :"btn-blue"
    And User click on Care plan and click Add Medication and add New Vital :"addMonitor"
    And User click on Care plan and click Add Vital and select name on Vital
    And User click on Care plan and click Add Vital and frequency on vital
    And User click on Care plan and click Add Vital and GOAL on vital :"Goal"
    And User click on Care plan and click Add Vital and Time on vital :"right-space"
    And User click on Care plan and click Add Vital and select after :"right-space"
    And User click on Care plan and click Add Vital and add new vital :"btn-blue"
    And User click on Care plan and click Add new Alert Rule :"addAlert"
    And User click on Care plan and click Add new Alert Rule set name :"Name"
    And User click on Care plan and click Add new Alert Rule set Status
    And User click on Care plan and click Add new Alert Rule set Vital Type
    And User click on Care plan and click Add new Alert Rule set TO :"To"
    And User click on Care plan and click Add new Alert Rule set message :"textarea-background"
    And User click on Care plan and click Add new Alert Rule click button Add new Aler rule

  Scenario: The user click Device
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click on Device :"https://nj-staging.vianovahealth.com/patients/342/device_summaries"
    And User clicn on device Add Device :"addMonitor"


  Scenario: The user click All Alerts
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And User click on All Alerts :"https://nj-staging.vianovahealth.com/patients/342/alerts"
    And User click on all Alerts and Done


  Scenario: The user click Encounter
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click and search Encounter :"https://nj-staging.vianovahealth.com/patients/342/encounters"


  Scenario: The user click Encounter Add Encounter
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click and search Encounter :"https://nj-staging.vianovahealth.com/patients/342/encounters"
    And User click and Search Encounter Add Encounter

  Scenario: The user click Encounter Add Encounter and Add Encounter
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click and search Encounter :"https://nj-staging.vianovahealth.com/patients/342/encounters"
    And User click and Search Encounter Add Encounter
    And User click and search Encounter fill Encounter Assign To
    And User click and search Encounter and select Resources
    And User click and search Encounter and select Minutes : "encounter[minutes]"
    And User click and search Encounter and select call type
    And User click and search Encounter and select outcomes
    And User click and search Encounter and click Date
    And User click and search Encounter and select Time
    And User click and search Encounter and write down notes
    And User click and search Encounter and set Date next Schedle :"schedule[scheduled_date]"
    And User click and search Encounter and select Additional Information :"schedule[additional_information]"
    And User click Save on add Encounter


  Scenario: The user click Encounter Add Encounter and Add Action
    When Click EditProfile
    And Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And The user click on Search Field :"besa gashi"
    And The user click on search and search for :"besa"
    And User click and select first result :"row-light"
    And User click and search Encounter :"https://nj-staging.vianovahealth.com/patients/342/encounters"
    And User click and search Encounter Add Action button
    And User click and search Encounter add action took medication
    And User click Add Action encounter checked Blood Sugar :"AM"
    And User click Add Action encounter checked Blood Sugar information
    And User click Add Action encounter checked Weight
    And User click Add Action encounter checked Weight Information
    And User click Add Action encounter checked Blood Pressure
    And User click Add Action encounter checked Blood Pressure Information
    And User click Add Action encounter checked feet for redness
    And User click on Additional information
    And Check for Signs
    And Save Button