Feature: Test Class Name
  Description of what this feature file will test

  Background: Common Steps to be executed before test
    Given The precondition for the test - goes to website or logs in
    And The next step that gets repeated before every test

  Scenario: The Onboarding test
    When The step that the test is created for is executed in the when step
      #And The user will log in
    And  click in Onboarding bttn

  Scenario: the onboarding second test
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone

  Scenario: The Onboarding second test
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language

  Scenario: Fill inputs
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact

  Scenario: Fill inputs second test
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end

  Scenario: Fill inputs next
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill  empty inputs in Specialist Information from specialists preferred_contact to the end

  Scenario: Add Alerts
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill  empty inputs in Specialist Information from specialists preferred_contact to the end


  Scenario: Add new medication
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill  empty inputs in Specialist Information from specialists preferred_contact to the end
    And  click in Onboarding bttn
    And Add a new medication
    And Add a new medication from Time of the day to the end

  Scenario: Add new Vital
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill  empty inputs in Specialist Information from specialists preferred_contact to the end
    And  click in Onboarding bttn
    And Add a new medication
    And Add a new medication from Time of the day to the end
    And  click in Onboarding bttn
    And Add a new Vital
    And Add a new Vital from Time of the day to the and

  Scenario: Add Patient Disabilities
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill  empty inputs in Specialist Information from specialists preferred_contact to the end
    And  click in Onboarding bttn
    And Add a new medication
    And Add a new medication from Time of the day to the end
    And  click in Onboarding bttn
    And Add a new Vital
    And Add a new Vital from Time of the day to the and

    And  click in Onboarding bttn
    And Add Patient's Disabilities

  Scenario: Add Alert
    And  click in Onboarding bttn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And fill the empty inputs in Patient Information from homephone to city
    And fill empty inputs in Patient Information from patientstate to patientcare_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill  empty inputs in Specialist Information from specialists preferred_contact to the end
    And  click in Onboarding bttn
    And Add a new medication
    And Add a new medication from Time of the day to the end
    And  click in Onboarding bttn
    And Add a new Vital
    And Add a new Vital from Time of the day to the and
    And  click in Onboarding bttn
    And Add Patient's Disabilities
    And  click in Onboarding bttn
    And Add Alert
    And Add Patient
    Then The assertion that the test has passed and worked fine


  Scenario: Fill the inputs wrong
    And  click in Onboarding bttn
    And text is ok
    And date of birth
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient
    And save Patient

  Scenario: firstname and lastname null save error
    And  click in Onboarding bttn
    And firstname, lastname is null
    And date of birth
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient

  Scenario: Fill the wrong name
    And  click in Onboarding bttn
    And fill wrong name
    And date of birth
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient

  Scenario: address with long numbers
    And  click in Onboarding bttn
    And text is ok
    And date of birth
    And phone number is ok
    And gender is ok
    And Address with long numbers
    And Add Patient
    And save Patient

  Scenario: address with code
    And  click in Onboarding bttn
    And text is ok
    And date of birth
    And phone number is ok
    And gender is ok
    And Address with code
    And Add Patient
    And save Patient

  Scenario: Date of birth empty
    And  click in Onboarding bttn
    And date of birth is empty
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient
    And date of birth empty error text

  Scenario: Gender empty error
    And  click in Onboarding bttn
    And date of birth is empty
    And phone number is ok
    And gender is empty
    And Address is ok
    And Add Patient
    And gender  empty error text

  Scenario: Phone number empty error
    And  click in Onboarding bttn
    And text is ok
    And date of birth
    And phone number is empty
    And gender is ok
    And Address is ok
    And Add Patient
    And phone error text

  Scenario: Firstname and last name empty error
    And  click in Onboarding bttn
    And firstname, lastname is null
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient
    And firstname, lastname empty error text

  Scenario: The actual test
    When Logout

  Scenario: ReLogin
    When  User View the FirstPage and Click Edit Profile
    And  ClickEditProfile

  Scenario:  Clear data in Edit Profiles
    When  User View the FirstPage and Click Edit Profile
    And  ClickEditProfile
    When User Click Edit Profiles and ClearData



  Scenario:  The user goes to NavBar and change Passord
    When  User View the FirstPage and Click Edit Profile
    And  ClickEditProfilePassword
    And  ChangePassword



#Scenario: Fill error name
#  And name is error
#  And text is null
#  And text is ok
