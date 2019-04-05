Feature: Test NavBar
  Description of what this feature file will test

  Scenario:  The user Click edit to NavBar
    And Click EditProfile
    And Select Edit Profile : "https://nj-staging.vianovahealth.com/users/33/edit"
    And Edit FirstName : "first_name"
    And Edit Lastname  : "last_name"
    And Edit FirstAddress :"address_line_1"
    And Edit SecondAddress :"address_line_2"
    And Add AppSuite : "apt_suite"



