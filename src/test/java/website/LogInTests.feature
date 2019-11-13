Feature: Test Log In
  Description of what this feature file will test

  #The Given section is the place where it all starts with the URL of the web that will be tested !

  Background: Methods to be run before every test
    Given Go to website
  #In this Scenario we will try to login with the wrong Email
  Scenario: Try to log in with wrong email
    When User types email : "wrong@email.com"
    And User types password : "password"
    And Click Log In button
    Then The message "These credentials do not match our records." should be shown

    #In this Scenario we will try to login with the wrong Password
  Scenario: Try to log in with wrong password
    When User types email : "tframe@vh.com"
    And User types password : "wrongPassword"
    And Click Log In button
    Then The message "These credentials do not match our records." should be shown

   # This scenario will have the correct email and the password and we will proceed further

  Scenario: Try to log in with correct email and password
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button

  # In this Scenario we will take a view over all the organisation
  Scenario: Scroll down into all Organisation
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    Then User click on DropDown
    And  Select End User
  # In this scenario we will add a new User into End Users Section
  Scenario: Add a new User
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And Add New User Button
    And Add new Name :
    And Add new LastName :
    And Add FirstAddress
    And Add SecondAddress
    And Add APT/SUITE
    And Add City
    And Select State
    And PutZipCode
    And Put Cell/Home/Work Phone
    And Put valid Email
    And Set a password for User
    And  Set Location
    And  Set Client  : "client"
    And  Set Speciality Training
    And  Set Role
    And  Click Save : "btn-blue"

    # In this Scenario we will add another Specialist

  Scenario: Specialist Add/Edit/Delete
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And User selct Specialist
    And User tries to create another specialist
    And User Put in the Namee
    And User types the LastName
    And User select a speciality
    And User types in the cell Phone Number
    And User select Preferred Phone Number
    And User types in Extension
    And User types on the Email
    And User check the checkBox
    And User Submit the Create Button

       # In this Scenario we will add another Provider to our Tests

  Scenario:  Provider-Section
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And Click on Provider
    And Click Add Provider
    And User put in the Fist Name
    And User put the LastName
    And User Put in the Email
    And User put in the Cell_Phone
    And User click on the PreferedNumber
    And User put in the FAX number
    And User Submits the Save Button

         # In this Scenario we will add another Role to our Tests

  Scenario:  Roles-Section
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And User click on the Roles
    And User trie to Create another ROLE
    And User set a Name for the Name
    And User set the permissions for the user
    And User set the premissions for the last row
    And User Click Save Button



            # In this Scenario we will add another Onboard Drugs to our Tests

  Scenario:  Onboarded Drugs-Section
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And User click on the Onboarded Drugs
    And User click on Add Onboard Drugs
    And User set the name of the Drug
    And User click the Save Button

 # In this Scenario we will add another Disease to our Tests

  Scenario:  Disease-Section
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And User click on Disease
    And User click on Add Disease
    And User click on Add new Alert
    And User sents Disease Name
    And User puts is Ancronym
    And User add AlertList-Name
    And User add AlertList-Status
    And User add AlertList-Vital
    And User add AlertList-FROM-TO


   # In this Scenario we will add another Disease-Plan to our Tests

  Scenario:  Disease-Plan-Section
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And User click on Disease-Plan
    And User click on +Add Disease Plans
   # And User click on KastriotDisease
    And User click on +Add New Disease Plan
    And User click on Task and Vitals
    And User click on Frequency
    And User selects time of the day
    And User click on Add Disease Plan
    And User submit the save Button
 #   Then Delete the Disease Plan we have added

    # In this Scenario we will add another Organisation to our Tests

  Scenario:  Oraganisation-Section
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    And User click on Organisation
    And User clicn on +Add Organisation
    And User Types in the Name
    And User Types in the Contact Name
    And User Types in the Contact Contact Phone Number
    And User Types in the Call Contact Fax Number
    And User Submit the Save Buttonn
 #  Then Delete the Organisation we have added


























