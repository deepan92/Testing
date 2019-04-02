Feature: Test Class Name
  Description of what this feature file will test

  Scenario: The On Boarding test
    And  Click on boarding btn

  Scenario: The On Boarding second test
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone

  Scenario: The On Boarding second test
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language

  Scenario: Fill inputs
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact

  Scenario: Fill inputs second test
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end

  Scenario: Fill inputs next
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill empty inputs in Specialist Information from specialists preferred_contact to the end

  Scenario: Add Alerts
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill empty inputs in Specialist Information from specialists preferred_contact to the end


  Scenario: Add new medication
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill empty inputs in Specialist Information from specialists preferred_contact to the end
    And Click on boarding btn
    And Add a new medication
    And Add a new medication from Time of the day to the end

  Scenario: Add new Vital
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill empty inputs in Specialist Information from specialists preferred_contact to the end
    And Click on boarding btn
    And Add a new medication
    And Add a new medication from Time of the day to the end
    And Click on boarding btn
    And Add a new Vital
    And Add a new Vital from Time of the day to the and

  Scenario: Add Patient Disabilities
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill empty inputs in Specialist Information from specialists preferred_contact to the end
    And Click on boarding btn
    And Add a new medication
    And Add a new medication from Time of the day to the end
    And Click on boarding btn
    And Add a new Vital
    And Add a new Vital from Time of the day to the and
    And Click on boarding btn
    And Add Patient's Disabilities

  Scenario: Add Alert
    And Click on boarding btn
    And Fill empty inputs Patient Information
    And Fill empty inputs in Patient Information from date_of_birth to cellphone
    And Fill the empty inputs in Patient Information from home phone to city
    And Fill empty inputs in Patient Information from patient state to patient care_provider_phone
    And Fill the radio btn Language
    And Fill the empty inputs in Care giver Information
    And Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact
    And Fill the empty inputs in Emergency Contact Information
    And Fill the empty inputs in Emergency Contact Information from cell phone to the end
    And Fill the empty inputs in Specialist Information
    And Fill empty inputs in Specialist Information from specialists preferred_contact to the end
    And Click on boarding btn
    And Add a new medication
    And Add a new medication from Time of the day to the end
    And Click on boarding btn
    And Add a new Vital
    And Add a new Vital from Time of the day to the and
    And Click on boarding btn
    And Add Patient's Disabilities
    And Click on boarding btn
    And Add Alert
    And Add Patient


  Scenario: Fill the inputs wrong
    And Click on boarding btn
    And text is ok
    And date of birth
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient
    And save Patient

  Scenario: first name and last name null save error
    And Click on boarding btn
    And first name, last name is null
    And date of birth
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient

  Scenario: Fill the wrong name
    And Click on boarding btn
    And fill wrong name
    And date of birth
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient

  Scenario: address with long numbers
    And Click on boarding btn
    And text is ok
    And date of birth
    And phone number is ok
    And gender is ok
    And Address with long numbers
    And Add Patient
    And save Patient

  Scenario: address with code
    And Click on boarding btn
    And text is ok
    And date of birth
    And phone number is ok
    And gender is ok
    And Address with code
    And Add Patient
    And save Patient

  Scenario: Date of birth empty
    And Click on boarding btn
    And date of birth is empty
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient
    And date of birth empty error text

  Scenario: Gender empty error
    And Click on boarding btn
    And date of birth is empty
    And phone number is ok
    And gender is empty
    And Address is ok
    And Add Patient
    And gender empty error text

  Scenario: Phone number empty error
    And Click on boarding btn
    And text is ok
    And date of birth
    And phone number is empty
    And gender is ok
    And Address is ok
    And Add Patient
    And phone error text

  Scenario: First name and last name empty error
    And Click on boarding btn
    And first name, last name is null
    And phone number is ok
    And gender is ok
    And Address is ok
    And Add Patient
    And first name, last name empty error text

  Scenario: The actual test
    When Logout

  Scenario: ReLogin
    When User View the FirstPage and Click Edit Profile
    And ClickEditProfile

  Scenario: Clear data in Edit Profiles
    When User View the FirstPage and Click Edit Profile
    And ClickEditProfile
    When User Click Edit Profiles and ClearData


  Scenario: The user goes to NavBar and change Password
    When User View the FirstPage and Click Edit Profile
    And ChangePassword
