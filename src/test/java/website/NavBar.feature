Feature: Test NavBar
  Description of what this feature file will test

  Background: Methods to be run before every test
    Given Go to website and log in for nav bar

  Scenario:  The user Click and edit first part of edit Profile  to NavBar
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
    Then  FillSecondPartoF Edit Profile


  Scenario:  The user click and edit second part of Edit Profile to NavBar
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
    And Click Changepassword :"https://nj-staging.vianovahealth.com/user/change-password"
    Then User Wait for nextStep

  Scenario: The user Set new Password
    When Click EditProfile
    And Click Changepassword :"https://nj-staging.vianovahealth.com/user/change-password"
    And  Set old Password :"blakaj123"


  Scenario: The user Set Password for first time
    When Click EditProfile
    And Click Changepassword :"https://nj-staging.vianovahealth.com/user/change-password"
    And  Set old Password :"blakaj123"
    And  Set new Password :"blakaj123"


  Scenario: The user Set Password to confirm
    When Click EditProfile
    And Click Changepassword :"https://nj-staging.vianovahealth.com/user/change-password"
    And  Set old Password :"blakaj123"
    And  Set new Password :"blakaj123"
    And  Set new Password confirm :"blakaj123"

  Scenario: The user Set Password to confirm
    When Click EditProfile
    And Click Changepassword :"https://nj-staging.vianovahealth.com/user/change-password"
    And  Set old Password :"blakaj123"
    And  Set new Password :"blakaj123"
    And  Set new Password confirm :"blakaj123"
    Then  User click on ChangePassword


  Scenario: The User click on view First Page
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"

  Scenario:  The user click on first result
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"

  Scenario:  The user click on ViewPatient
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"


  Scenario: The user click On Controlls in Selected Patient
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"
    And  User Selct   button to add Vitals for seven days
    And  After click a new window is appeard and selct a vital :"422"
    And  After click a new window is appeard and selct a date :"18/05/1997"
    And  After click a new window is appeard and selct a Value:"123"
    And  After click a new window is appeard and selct a Time of day
    And  After click a new window is appeard and selct a Time of Meal
    Then Click ADD Button :"btn-blue"

# skippuar nga dje


  Scenario: The user click On Controlls in Selected Patient and  Select Summaries
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"
    And  User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And  User click Summaries and select MealTpye
    And  User click Summaries and select TimeType
    And  User click Summaries and select Blood Preasure
    And  User click Summaries  and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"


  Scenario: The user click On Controlls in Selected Patient and  Select Comunications
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"
    And  User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And  User click Summaries and select MealTpye
    And  User click Summaries and select TimeType
    And  User click Summaries and select Blood Preasure
    And  User click Summaries  and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And  User Click on  Comunications :"https://nj-staging.vianovahealth.com/patients/342/communications"

  Scenario: The user click On Controlls in Selected Patient and  Select Comunications and Test cases
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"
    And  User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And  User click Summaries and select MealTpye
    And  User click Summaries and select TimeType
    And  User click Summaries and select Blood Preasure
    And  User click Summaries  and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And  User Click on  Comunications :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And  User Click on  Comunications and Sent Sms now :"green-btn"
    And  User Click on  Comunications and fill sent sms field : "message-holder"
    And  User Click on  Comunications and click sent button for sent : "send-btn"
    And  User click on  Comunications and click Carenotes
    And  User click on  Comunications and click care note minutes :"notes-number"


  Scenario: The user click On Controlls in Selected Patient and  Select Care plan and Test cases
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"
    And  User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And  User click Summaries and select MealTpye
    And  User click Summaries and select TimeType
    And  User click Summaries and select Blood Preasure
    And  User click Summaries  and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And  User Click on  Comunications :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And  User Click on  Comunications and Sent Sms now :"green-btn"
    And  User Click on  Comunications and fill sent sms field : "message-holder"
    And  User Click on  Comunications and click sent button for sent : "send-btn"
    And  User click on  Comunications and click Carenotes
    And  User click on  Comunications and click care note minutes :"notes-number"
    And  User click on Careplan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And  User click on Careplan and click Add Mediction :"addMedication"


  Scenario: The user click On Controlls in Selected Patient and  Select Care plan and incoming data
    When Click EditProfile
    And  Click on View Patient :"https://nj-staging.vianovahealth.com/patients?status=active"
    And  The user click on Search Field :"besa gashi"
    And  The user click on search and search for :"besa"
    And  User click and select first result :"row-light"
    And  User click Summaries :"https://nj-staging.vianovahealth.com/patients/342/summaries"
    And  User click Summaries and select MealTpye
    And  User click Summaries and select TimeType
    And  User click Summaries and select Blood Preasure
    And  User click Summaries  and submit Preview Medication :"http://nj-staging.vianovahealth.com/patients/342/care_plans"
    And  User Click on  Comunications :"https://nj-staging.vianovahealth.com/patients/342/communications"
    And  User Click on  Comunications and Sent Sms now :"green-btn"
    And  User Click on  Comunications and fill sent sms field : "message-holder"
    And  User Click on  Comunications and click sent button for sent : "send-btn"
    And  User click on  Comunications and click Carenotes
    And  User click on  Comunications and click care note minutes :"notes-number"
    And  User click on Careplan :"https://nj-staging.vianovahealth.com/patients/342/care_plans"
    And  User click on Careplan and click Add Mediction :"addMedication"
    And  User click on Carepln and click AddMeciaction name :"Search Medication Name"
    And  User click on Careplan and click Add Mediction Frequency :"daily"
    And  User click on Careplan and click Add Medication Dosage :"Example: 20mg"
    And  User click on Careplan and click Add Medication PRN :"0"
    And  User click on Careplan and click Add Mediction Time of Day
    And  User click on Careplan and click Add Mediction Meal Assocation
    And  User click on Careplan and click Add Mediction  Description :"textarea-background"
#    And  User click on Careplan and click Add Mediction  Rx "




