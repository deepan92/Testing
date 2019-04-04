$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("LogInTests.feature");
formatter.feature({
  "line": 1,
  "name": "Test Class Name",
  "description": "Description of what this feature file will test",
  "id": "test-class-name",
  "keyword": "Feature"
});
formatter.before({
  "duration": 4965288915,
  "status": "passed"
});
formatter.scenario({
  "line": 4,
  "name": "Try to log in with wrong email",
  "description": "",
  "id": "test-class-name;try-to-log-in-with-wrong-email",
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
  "duration": 413490564,
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
  "duration": 79598413,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 714946638,
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
  "duration": 32474401,
  "status": "passed"
});
formatter.after({
  "duration": 83807265,
  "status": "passed"
});
formatter.before({
  "duration": 5058425472,
  "status": "passed"
});
formatter.scenario({
  "line": 10,
  "name": "Try to log in with wrong password",
  "description": "",
  "id": "test-class-name;try-to-log-in-with-wrong-password",
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
  "duration": 118324475,
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
  "duration": 85639668,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 811540983,
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
  "duration": 25531798,
  "status": "passed"
});
formatter.after({
  "duration": 82634835,
  "status": "passed"
});
formatter.before({
  "duration": 4432656416,
  "status": "passed"
});
formatter.scenario({
  "line": 16,
  "name": "Try to log in with correct email and password",
  "description": "",
  "id": "test-class-name;try-to-log-in-with-correct-email-and-password",
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
  "duration": 315811123,
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
  "duration": 84382630,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 1679663774,
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
  "duration": 12038477,
  "status": "passed"
});
formatter.after({
  "duration": 86428813,
  "status": "passed"
});
formatter.before({
  "duration": 4747567321,
  "status": "passed"
});
formatter.scenario({
  "line": 22,
  "name": "Try to log in with invalid email",
  "description": "",
  "id": "test-class-name;try-to-log-in-with-invalid-email",
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
  "duration": 333072517,
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
  "duration": 96377133,
  "status": "passed"
});
formatter.match({
  "location": "LogInStepDefinition.clickLogInButton()"
});
formatter.result({
  "duration": 1158400700,
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
  "duration": 24459656,
  "status": "passed"
});
formatter.after({
  "duration": 86998700,
  "status": "passed"
});
});