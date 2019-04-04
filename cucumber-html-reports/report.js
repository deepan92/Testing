$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("LogInTests.feature");
formatter.feature({
  "line": 1,
  "name": "Test Log In",
  "description": "Description of what this feature file will test",
  "id": "test-log-in",
  "keyword": "Feature"
});
formatter.before({
  "duration": 6221574975,
  "status": "passed"
});
formatter.before({
  "duration": 7239472790,
  "status": "passed"
});
formatter.scenario({
  "line": 4,
  "name": "Try to log in with wrong email",
  "description": "",
  "id": "test-log-in;try-to-log-in-with-wrong-email",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 5,
  "name": "User types email : \"wrong@email.com\"",
  "keyword": "When "
});
formatter.step({
  "line": 6,
  "name": "User types password : \"password\"",
  "keyword": "And "
});
formatter.step({
  "line": 7,
  "name": "Click Log In button",
  "keyword": "And "
});
formatter.step({
  "line": 8,
  "name": "The message \"These credentials do not match our records.\" should be shown",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "wrong@email.com",
      "offset": 20
    }
  ],
  "location": "LogInStepDefinition.userTypesWrongEmail(String)"
});
formatter.result({
  "duration": 192184461,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "password",
      "offset": 23
    }
  ],
  "location": "LogInStepDefinition.userTypesCorrectPassword(String)"
});
formatter.result({
  "duration": 54567263,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 805903358,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "These credentials do not match our records.",
      "offset": 13
    }
  ],
  "location": "LogInStepDefinition.theShouldBeShown(String)"
});
formatter.result({
  "duration": 26712200,
  "status": "passed"
});
formatter.after({
  "duration": 126825259,
  "status": "passed"
});
formatter.after({
  "duration": 81227151,
  "status": "passed"
});
formatter.before({
  "duration": 4776323885,
  "status": "passed"
});
formatter.before({
  "duration": 6322283185,
  "status": "passed"
});
formatter.scenario({
  "line": 10,
  "name": "Try to log in with wrong password",
  "description": "",
  "id": "test-log-in;try-to-log-in-with-wrong-password",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 11,
  "name": "User types email : \"tframe@vh.com\"",
  "keyword": "When "
});
formatter.step({
  "line": 12,
  "name": "User types password : \"wrongPassword\"",
  "keyword": "And "
});
formatter.step({
  "line": 13,
  "name": "Click Log In button",
  "keyword": "And "
});
formatter.step({
  "line": 14,
  "name": "The message \"These credentials do not match our records.\" should be shown",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "tframe@vh.com",
      "offset": 20
    }
  ],
  "location": "LogInStepDefinition.userTypesWrongEmail(String)"
});
formatter.result({
  "duration": 109260256,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "wrongPassword",
      "offset": 23
    }
  ],
  "location": "LogInStepDefinition.userTypesCorrectPassword(String)"
});
formatter.result({
  "duration": 84324203,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 777085361,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "These credentials do not match our records.",
      "offset": 13
    }
  ],
  "location": "LogInStepDefinition.theShouldBeShown(String)"
});
formatter.result({
  "duration": 27605006,
  "status": "passed"
});
formatter.after({
  "duration": 79977541,
  "status": "passed"
});
formatter.after({
  "duration": 144246963,
  "status": "passed"
});
formatter.before({
  "duration": 4021917165,
  "status": "passed"
});
formatter.before({
  "duration": 9135903463,
  "status": "passed"
});
formatter.scenario({
  "line": 16,
  "name": "Try to log in with correct email and password",
  "description": "",
  "id": "test-log-in;try-to-log-in-with-correct-email-and-password",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 17,
  "name": "User types email : \"tframe@vh.com\"",
  "keyword": "When "
});
formatter.step({
  "line": 18,
  "name": "User types password : \"blakaj123\"",
  "keyword": "And "
});
formatter.step({
  "line": 19,
  "name": "Click Log In button",
  "keyword": "And "
});
formatter.step({
  "line": 20,
  "name": "The user should be logged in \"https://nj-staging.vianovahealth.com/patients?status\u003dactive\"",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "tframe@vh.com",
      "offset": 20
    }
  ],
  "location": "LogInStepDefinition.userTypesWrongEmail(String)"
});
formatter.result({
  "duration": 127462249,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "blakaj123",
      "offset": 23
    }
  ],
  "location": "LogInStepDefinition.userTypesCorrectPassword(String)"
});
formatter.result({
  "duration": 62938723,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 2011914910,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "https://nj-staging.vianovahealth.com/patients?status\u003dactive",
      "offset": 30
    }
  ],
  "location": "LogInStepDefinition.theUserShouldBeLoggedIn(String)"
});
formatter.result({
  "duration": 14748027,
  "status": "passed"
});
formatter.after({
  "duration": 137874595,
  "status": "passed"
});
formatter.after({
  "duration": 164094589,
  "status": "passed"
});
formatter.before({
  "duration": 5320534345,
  "status": "passed"
});
formatter.before({
  "duration": 5862670905,
  "status": "passed"
});
formatter.scenario({
  "line": 22,
  "name": "Try to log in with invalid email",
  "description": "",
  "id": "test-log-in;try-to-log-in-with-invalid-email",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 23,
  "name": "User types email : \"\u003cscript text\u003d\u0027javascript\u0027\u003e\u003c/ script\u003e\"",
  "keyword": "When "
});
formatter.step({
  "line": 24,
  "name": "User types password : \"wrongPassword\"",
  "keyword": "And "
});
formatter.step({
  "line": 25,
  "name": "Click Log In button",
  "keyword": "And "
});
formatter.step({
  "line": 26,
  "name": "The message \"These credentials do not match our records.\" should be shown",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "\u003cscript text\u003d\u0027javascript\u0027\u003e\u003c/ script\u003e",
      "offset": 20
    }
  ],
  "location": "LogInStepDefinition.userTypesWrongEmail(String)"
});
formatter.result({
  "duration": 192621912,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "wrongPassword",
      "offset": 23
    }
  ],
  "location": "LogInStepDefinition.userTypesCorrectPassword(String)"
});
formatter.result({
  "duration": 83903770,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 734718048,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "These credentials do not match our records.",
      "offset": 13
    }
  ],
  "location": "LogInStepDefinition.theShouldBeShown(String)"
});
formatter.result({
  "duration": 25728163,
  "status": "passed"
});
formatter.after({
  "duration": 128614049,
  "status": "passed"
});
formatter.after({
  "duration": 84741575,
  "status": "passed"
});
formatter.uri("OnBoarding.feature");
formatter.feature({
  "line": 1,
  "name": "Test On Boarding",
  "description": "Description of what this feature file will test",
  "id": "test-on-boarding",
  "keyword": "Feature"
});
formatter.before({
  "duration": 4357537386,
  "status": "passed"
});
formatter.before({
  "duration": 6355768224,
  "status": "passed"
});
formatter.scenario({
  "line": 4,
  "name": "Go to OnBoarding and filter patient by non collaborative",
  "description": "",
  "id": "test-on-boarding;go-to-onboarding-and-filter-patient-by-non-collaborative",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 5,
  "name": "Filter by \"non_collaborative\"",
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "non_collaborative",
      "offset": 11
    }
  ],
  "location": "OnBoardingStepDefinitions.filterBy(String)"
});
formatter.result({
  "duration": 3475439709,
  "status": "passed"
});
formatter.after({
  "duration": 156245760,
  "status": "passed"
});
formatter.after({
  "duration": 108412487,
  "status": "passed"
});
});