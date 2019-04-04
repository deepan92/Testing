$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("LogInTests.feature");
formatter.feature({
  "line": 1,
  "name": "Test Log In",
  "description": "Description of what this feature file will test",
  "id": "test-log-in",
  "keyword": "Feature"
});
formatter.before({
  "duration": 7180082426,
  "status": "passed"
});
formatter.before({
  "duration": 4824678118,
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
  "duration": 473609287,
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
  "duration": 83263108,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 1058371520,
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
  "duration": 25228541,
  "status": "passed"
});
formatter.after({
  "duration": 84024542,
  "status": "passed"
});
formatter.after({
  "duration": 121731640,
  "status": "passed"
});
formatter.before({
  "duration": 6752619888,
  "status": "passed"
});
formatter.before({
  "duration": 4424557923,
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
  "duration": 311855168,
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
  "duration": 92813796,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 1221282585,
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
  "duration": 25923783,
  "status": "passed"
});
formatter.after({
  "duration": 95469863,
  "status": "passed"
});
formatter.after({
  "duration": 82343243,
  "status": "passed"
});
formatter.before({
  "duration": 6823923967,
  "status": "passed"
});
formatter.before({
  "duration": 5035809572,
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
  "duration": 307043307,
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
  "duration": 75008543,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 1626451267,
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
  "duration": 10715636,
  "status": "passed"
});
formatter.after({
  "duration": 86626982,
  "status": "passed"
});
formatter.after({
  "duration": 83387280,
  "status": "passed"
});
formatter.before({
  "duration": 7259132001,
  "status": "passed"
});
formatter.before({
  "duration": 5133460563,
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
  "duration": 219751008,
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
  "duration": 85369818,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 759901964,
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
  "duration": 31937184,
  "status": "passed"
});
formatter.after({
  "duration": 80192627,
  "status": "passed"
});
formatter.after({
  "duration": 238201850,
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
  "duration": 6446751331,
  "status": "passed"
});
formatter.before({
  "duration": 4474489360,
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
  "duration": 3461469823,
  "status": "passed"
});
formatter.after({
  "duration": 85226897,
  "status": "passed"
});
formatter.after({
  "duration": 79286750,
  "status": "passed"
});
});