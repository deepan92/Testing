Feature: Test On Boarding
  Description of what this feature file will test

  Background: Methods to be run before every test
    Given Go to website and log in

  Scenario: Go to On Boarding and filter patient by non collaborative
    And Filter by "non_collaborative"


  Scenario: Go to On Boarding bttn
    And User click On Boarding bttn

  Scenario: Go to OnBoarding fill correct name
    And User click On Boarding bttn
    And User types first_name"Bleron"

  Scenario: Go to On Boarding fill wrong  name
    And User click On Boarding bttn
    And User types first_name"<scropt>Bleron<script/>"

  Scenario: Go to OnBoarding fill correct last_name
    And User click On Boarding bttn
    And User types last_name"hasani"

  Scenario: Go to OnBoarding fill wrong last_name
    And User click On Boarding bttn
    And User types last_name"<div class=spodi>hasani</div>"


  Scenario: Go to On Boarding fill first & last_name
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"


  Scenario: Go to On Boarding fill correct date of birth
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"


  Scenario: Go to On Boarding select gender
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"


  Scenario: Go to On Boarding select material status
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"

  Scenario: Go to On Boarding fill wrong  middle initial
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "<div>h</div>"

  Scenario: Go to On Boarding fill correct middle initial
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"

  Scenario: Go to On Boarding empty first_name&last_name
    And User click On Boarding bttn
    And User types first_name""
    And User types last_name""
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"


  Scenario: Go to On Boarding empty middle initial
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial ""

  Scenario: Go to On Boarding Choose Disease
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"
    And Choose Disease "4"

  Scenario: Go to On Boarding Choose Disease
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"
    And Choose Disease "4"


  Scenario: Go to On Boarding Cell Phone
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"
    And Choose Disease "4"
    And User types cell_phone "(333)222 9999"

  Scenario: Go to On Boarding home Phone
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"
    And Choose Disease "4"
    And User types cell_phone "(333)222 9999"
    And User types home_phone"(333)212 9669"

  Scenario: Go to On Boarding work Phone
    And User click On Boarding bttn
    And User types first_name"Bleron"
    And User types last_name"hasani"
    And User types date_of_birth "10/10/2001"
    And select gender"male"
    And select material status "single"
    And fill wrong middle initial "h"
    And Choose Disease "4"
    And User types cell_phone "(333)222 9999"
    And User types home_phone"(333)212 9669"
    And User types work_phone"(333)212 9669"