Feature: Test Class Name
  Description of what this feature file will test

  Scenario: Try to log in with wrong email
    When User types email : "wrong@email.com"
    And User types password : "password"
    And Click Log In button
    Then The message "These credentials do not match our records." should be shown

  Scenario: Try to log in with wrong password
    When User types email : "tframe@vh.com"
    And User types password : "wrongPassword"
    And Click Log In button
    Then The message "These credentials do not match our records." should be shown

  Scenario: Try to log in with correct email and password
    When User types email : "tframe@vh.com"
    And User types password : "blakaj123"
    And Click Log In button
    Then The user should be logged in "https://nj-staging.vianovahealth.com/patients?status=active"

  Scenario: Try to log in with invalid email
    When User types email : "<script text='javascript'></ script>"
    And User types password : "wrongPassword"
    And Click Log In button
    Then The message "These credentials do not match our records." should be shown
