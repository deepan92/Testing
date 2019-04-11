Feature: Test On Boarding
  Description of what this feature file will test

  Background: Methods to be run before every test
    Given Go to website and log in

  Scenario: Go to On Boarding and filter patient by non collaborative
    And Filter by "non_collaborative"


  Scenario: Go to On Board
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

  Scenario: Go to On Boarding fill Email
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
    And fill Email "bleronhasani.2001@gmail.com"

  Scenario: Go to On Boarding empty Email
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
    And fill Email ""


  Scenario: Go to On Boarding select Preferred Phone Number
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"

  Scenario: Go to On Boarding fill correct Address Line 1
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"

  Scenario: Go to On Boarding fill wrong Address Line 1
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"12345678901234567890-=1234567890-1234567890-=1234567890-=-0987654321234567890-=-098765432"

  Scenario: Go to On Boarding fill correct Address Line 2
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"


  Scenario: Go to On Boarding fill wrong Address Line 2
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"76543567898765456789087654324567897654323456787654324567865432"

  Scenario: Go to On Boarding fill city
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"

  Scenario: Go to On Boarding fill city
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"

  Scenario: Go to On Boarding fill Zip Code
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"


  Scenario: Go to On Boarding fill Provider
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"


  Scenario: Go to On Boarding fill Care-Provider-phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"


  Scenario: Go to On Boarding select Language
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language


  Scenario: Go to On Boarding select Need Translator
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator


  Scenario: Go to On Boarding Care Giver Information-correct-First Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"


  Scenario: Go to On Boarding Care Giver Information-wrong-First Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"<121/>Kastriot<duv?"

  Scenario: Go to On Boarding Care Giver Information-correct-Last Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"

  Scenario: Go to On Boarding Care Giver Information-wrong-Last Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name"<div>blakaj<div/>"

  Scenario: Go to On Boarding Care Giver Information-Relationship
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"


  Scenario: Go to On Boarding Care Giver Information-Cell Phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"


  Scenario: Go to On Boarding Care Giver Information-Home Phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"

  Scenario: Go to On Boarding Care Giver Information-Work Phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"

  Scenario: Go to On Boarding Care Giver Information-Preferred Phone Number
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"

  Scenario: Go to On Boarding Care Giver Information-Opt to Send Text Message
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message


  Scenario: Go to On Boarding Care Giver Information-Language
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language

  Scenario: Go to On Boarding Care Giver Information-Also Emergency Contact
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact


  Scenario: Go to On Boarding Emergency Contact Information-correct-First Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"

  Scenario: Go to On Boarding Emergency Contact Information-wrong-First Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"<script>Urim</script>"


  Scenario: Go to On Boarding Emergency Contact Information-wrong-Last Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"<script>Bajgora</script>"

  Scenario: Go to On Boarding Emergency Contact Information-correct-Last Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"


  Scenario: Go to On Boarding Emergency Contact Information-correct-Middle Initial
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"


  Scenario: Go to On Boarding Emergency Contact Information-correct-Relationship
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"


  Scenario: Go to On Boarding Emergency Contact Information-correct-Cell Phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"

  Scenario: Go to On Boarding Emergency Contact Information-correct-Home Phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"

  Scenario: Go to On Boarding Emergency Contact Information-correct-Work Phone
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"

  Scenario: Go to On Boarding Emergency Contact Information-correct-Preferred Phone Number
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number

  Scenario: Go to On Boarding Emergency Contact Information-correct-Opt to Send Text Message
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number


  Scenario: Go to On Boarding Emergency Contact Information-correct-Language
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language


  Scenario: Go to On Boarding Specialist Information
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"


  Scenario: Go to On Boarding Specialist Information-Speciality
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"

  Scenario: Go to On Boarding Specialist Information-Add New Specialist
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro" 
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist

  Scenario: Go to On Boarding Add New Specialist-Specialist Information
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"


  Scenario: Go to On Boarding Add New Specialist-Delete Specialist
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"


  Scenario: Go to On Boarding Add New Medication
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro" 
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication

  Scenario: Go to On Boarding Add New Medication_Name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro" 
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name

  Scenario: Go to On Boarding Add New Medication_Frequency
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"


  Scenario: Go to On Boarding Add New Medication_Dosage
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage

  Scenario: Go to On Boarding Add New Medication_PRN
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"

  Scenario: Go to On Boarding Add New Medication_Time of the day
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro" 
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«


  Scenario: Go to On Boarding Add New Medication_Timeoftheday second
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association


  Scenario: Go to On Boarding Add New Medication_Rx Number
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"  
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number

  Scenario: Go to On Boarding Add New Medication_Description
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro" 
#    And User select New_Specialist Information_Specialist "Arnold Bacarro"  "28"_Speciality :"34"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "

  Scenario: Go to On Boarding Add New Medication_Add Medication
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication

  Scenario: Go to On Boarding Add Patient's Disabilities
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
#    And User Adds Patient's Disabilities_blind
# And User Adds Patient's Disabilities_Amputations



  Scenario: Go to On Boarding Alert Rules_bttn
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
#    And User Adds Patient's Disabilities_blind
# And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn

  Scenario: Go to On Boarding Alert Rules_name
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
#    And User Adds Patient's Disabilities_blind
# And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name

  Scenario: Go to On Boarding Alert Rules_status
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
#    And User Adds Patient's Disabilities_blind
#    And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"

  Scenario: Go to On Boarding Alert Rules_Vital
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
    #And User Adds Patient's Disabilities_blind
  #  And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"
    And User types_Vital Type"Blood Pressure"


  Scenario: Go to On Boarding Alert Rules_From
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
    #And User Adds Patient's Disabilities_blind
  #  And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"
    And User types_Vital Type"Blood Pressure"
    And User types_From

  Scenario: Go to On Boarding Alert Rules_to
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
    #And User Adds Patient's Disabilities_blind
  #  And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"
    And User types_Vital Type"Blood Pressure"
    And User types_From
    And User types_to


  Scenario: Go to On Boarding Alert Rules_textarea_background
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
    #And User Adds Patient's Disabilities_blind
  #  And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"
    And User types_Vital Type"Blood Pressure"
    And User types_From
    And User types_to
    And User types textarea_background"KA LUJT HAVERI"


  Scenario: Go to On Boarding Alert Rules and add text in description
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
    #And User Adds Patient's Disabilities_blind
  #  And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"
    And User types_Vital Type"Blood Pressure"
    And User types_From
    And User types_to
    And User types textarea_background"KA LUJT HAVERI"
    And User types save

  Scenario: Go to On Boarding save patient
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
    And fill Email "bleronhasani.2001@gmail.com"
    And select Preferred Phone Number "cell_phone"
    And fill correct Address_Line"30 South Plaza Place"
    And fill second Address_line"20 South Plaza Place"
    And fill city "Atlanta City"
    And User select State"Hawaii"
    And User types Zip Code"123456789"
    And User types Provider "Siguria Koseve"
    And User types Care_Provider_phone "(333)222 9999"
    And User select Language
    And User select Need Translator
    And User types First_Name"Kastriot"
    And User types Care_Last_Name" Blakaj"
    And User select Relationship"Friend"
    And User types Care_Giver_Cell_Phone"(222)234 2345"
    And User types Care_Giver_Home_Phone"(222)234 2345"
    And User types Care_Giver_Work_Phone"(222)234 2345"
    And User types Care_Giver_Preferred Phone Number"home_phone"
    And User select Opt to Send Text Message
    And User select Care_Giver_Information_Language
#    And User select Also Emergency Contact
    And User select Emergency_Contact_Information_First_Name"Urim"
    And User select Emergency_Contact_Information_Last_Name"Bajgora"
    And User select Emergency_Contact_Information_Middle_Initial"b"
    And User select Emergency_Contact_Information_Relationship "Nephew"
    And User select Emergency_Contact_Information_Cell_Phone "(333)212 9669"
    And User select Emergency_Contact_Information_Home_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Work_Phone "(333)112 9669"
    And User select Emergency_Contact_Information_Preferred_Phone_Number
    And User select Emergency_Contact_Information_Language
    And User select New_Specialist Information_Specialist "Arnold Bacarro"
    And User select Specialist : "Suketu Nanavati"
    And Add New Specialist
    And User types Specialist Information"Robert Beitman"
    And Delete Specialist"X"
    And User has to Add New Medication
    And User types Name
    And User types Frequency"Weekly"
    And User types Dosage
    And User types PRN"Yes"
    And User types Time of the day«
    And User types Meal Association
    And User types Rx Number
    And User types Description"Ka lujt haveri "
    And User click Add Medication
#    And User Adds Patient's Disabilities_blind
#    And User Adds Patient's Disabilities_Amputations
    And User click in Alert Rules bttn
    And User types_name
    And User types_status"High"
    And User types_Vital Type"Blood Pressure"
    And User types_From
    And User types_to
    And User types textarea_background"KA LUJT HAVERI"
    And User types save
    And User clcik save bttn





#    EDIT PATIENT

  Scenario: User edit Patient
    And User go to May hasani and click Edit btn

  Scenario: User edit firt_name
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"

  Scenario: User edit last_name
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"

  Scenario: User edit middle_initial
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"

  Scenario: User edit selected Status
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"

  Scenario: User edit selected Date of Birth*
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"

  Scenario: User edit Gender
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"


  Scenario: User edit Martial Status
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"

  Scenario: User edit  Disease
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease

  Scenario: User edit Cell Phone
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease
    And User edit Cell_Phone "(333)222 9999"

  Scenario: User edit Home Phone
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease
    And User edit Cell_Phone "(333)222 9999"
    And User edit Home_Phone "(333)222 2349"

  Scenario: User edit Adress Line 1
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease
    And User edit Cell_Phone "(333)222 9999"
    And User edit Home_Phone "(333)222 2349"
    And User edit Adress_Line "20 South Plaza Place"

  Scenario: User edit Adress Line 1
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease
    And User edit Cell_Phone "(333)222 9999"
    And User edit Home_Phone "(333)222 2349"
    And User edit Adress_Line_second"30 South Plaza Place"

  Scenario: User edi Language
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease
    And User edit Cell_Phone "(333)222 9999"
    And User edit Home_Phone "(333)222 2349"
    And User edit Adress_Line_second"30 South Plaza Place"
    And User edit Language

  Scenario: User click btn Save
    And User go to May hasani and click Edit btn
    And User edit first_name"Bleron"
    And User edit last_name"hasani"
    And User edit middile_initial"R"
    And User edit selected status"active"
    And User edit Date_of_Birth"10/10/2000"
    And User edit Gender"male"
    And User edit Martial Status"married"
    And User edit Disease
    And User edit Cell_Phone "(333)222 9999"
    And User edit Home_Phone "(333)222 2349"
    And User edit Adress_Line_second"30 South Plaza Place"
    And User edit Language
    And User click btn Save
#  ENCOUNTERS
  Scenario: User click bttn to click in patient bttn
    And User click in to a patient

  Scenario: User click bttn to go to encounters
    And User click in to a patient
    And User click in encounters bttn


  Scenario: User click bttn to go to encounters_edit
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn

  Scenario: User click bttn to go to encounters_edit_Assign To
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To

  Scenario: User click bttn to go to encounters_edit_Resources
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources


  Scenario: User click bttn to go to encounters_edit_Minutes
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes

  Scenario: User click bttn to go to encounters_edit_Reason
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason

  Scenario: User click bttn to go to encounters_edit_Outcomes
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes

  Scenario: User click bttn to go to encounters_edit_Date
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date

  Scenario: User click bttn to go to encounters_edit_Time
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time

  Scenario: User click bttn to go to encounters_edit_Intro Call
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call

  Scenario: User click bttn to go to encounters_edit_ Notes
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call
    And User types Notes

  Scenario: User click bttn to go to encounters_edit_Next Call Schedule: date
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call
    And User types Notes
    And Next Call Schedule_date


  Scenario: User click bttn to go to encounters_edit_Next Call Schedule:Time
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call
    And User types Notes
    And Next Call Schedule_date
    And Next Call Schedule_Time

  Scenario: User click bttn to go to encounters_edit_Additional Information
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call
    And User types Notes
    And Next Call Schedule_date
    And Next Call Schedule_Time
    And Additional Information

  Scenario: User click bttn to go to encounters_edit_Update
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call
    And User types Notes
    And Next Call Schedule_date
    And Next Call Schedule_Time
    And Additional Information
    And Update

  Scenario: User click bttn to go to encounters_Delete_bttn
    And User click in to a patient
    And User click in encounters bttn
    And user click in encounters_edit bttn
    And User types Assign_To
    And User types Resources
    And User types Minutes
    And User types Reason
    And User types Outcomes
    And User types Date
    And User types Time
    And User types Intro Call
    And User types Notes
    And Next Call Schedule_date
    And Next Call Schedule_Time
    And Additional Information
    And Update
    #And Delete_bttn
















