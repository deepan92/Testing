$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("RandomTest.feature");
formatter.feature({
  "line": 1,
  "name": "Test Class Name",
  "description": "Description of what this feature file will test",
  "id": "test-class-name",
  "keyword": "Feature"
});
formatter.before({
  "duration": 15022101951,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 87552401,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 18408,
  "status": "passed"
});
formatter.scenario({
  "line": 8,
  "name": "The Onboarding test",
  "description": "",
  "id": "test-class-name;the-onboarding-test",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 9,
  "name": "The step that the test is created for is executed in the when step",
  "keyword": "When "
});
formatter.step({
  "comments": [
    {
      "line": 10,
      "value": "#And The user will log in"
    }
  ],
  "line": 11,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.theStepThatTheTestIsCreatedForIsExecutedInTheWhenStep()"
});
formatter.result({
  "duration": 13572,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3752907791,
  "status": "passed"
});
formatter.after({
  "duration": 295357381,
  "status": "passed"
});
formatter.before({
  "duration": 9711233951,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11184,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 17013,
  "status": "passed"
});
formatter.scenario({
  "line": 13,
  "name": "the onboarding second test",
  "description": "",
  "id": "test-class-name;the-onboarding-second-test",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 14,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 15,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 16,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3799432623,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6661988400,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5448436568,
  "status": "passed"
});
formatter.after({
  "duration": 153541465,
  "status": "passed"
});
formatter.before({
  "duration": 10058883188,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11834,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 15472,
  "status": "passed"
});
formatter.scenario({
  "line": 18,
  "name": "The Onboarding second test",
  "description": "",
  "id": "test-class-name;the-onboarding-second-test",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 19,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 20,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 21,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 22,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 23,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 24,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 4033076583,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6604319796,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5390426625,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4679956914,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4086107369,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 163356440,
  "status": "passed"
});
formatter.after({
  "duration": 94356895,
  "status": "passed"
});
formatter.before({
  "duration": 10606660001,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11010,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 12549,
  "status": "passed"
});
formatter.scenario({
  "line": 26,
  "name": "Fill inputs",
  "description": "",
  "id": "test-class-name;fill-inputs",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 27,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 28,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 29,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 30,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 31,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 32,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 33,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 34,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3673197844,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6503029204,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5329433662,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4589157263,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4019958017,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 141172797,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 557832561,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1667975742,
  "status": "passed"
});
formatter.after({
  "duration": 502370211,
  "status": "passed"
});
formatter.before({
  "duration": 9141164424,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 13766,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 13993,
  "status": "passed"
});
formatter.scenario({
  "line": 36,
  "name": "Fill inputs second test",
  "description": "",
  "id": "test-class-name;fill-inputs-second-test",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 37,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 38,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 39,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 40,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 41,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 42,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 43,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 44,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 45,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 46,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3635091339,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6489189633,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5298745590,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4584783607,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4027514606,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 146501199,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 555768737,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1655953794,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "duration": 623927316,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "duration": 1414261955,
  "status": "passed"
});
formatter.after({
  "duration": 92460832,
  "status": "passed"
});
formatter.before({
  "duration": 8384038227,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 9436,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 9197,
  "status": "passed"
});
formatter.scenario({
  "line": 48,
  "name": "Fill inputs next",
  "description": "",
  "id": "test-class-name;fill-inputs-next",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 49,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 50,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 51,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 52,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 53,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 54,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 55,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 56,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 57,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 58,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.step({
  "line": 59,
  "name": "Fill the empty inputs in Specialist Information",
  "keyword": "And "
});
formatter.step({
  "line": 60,
  "name": "Fill  empty inputs in Specialist Information from specialists preferred_contact to the end",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3794926275,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6532656568,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5561831580,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4600800910,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4195005336,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 141001858,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 825440178,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1674066881,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "duration": 876984164,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "duration": 1384015335,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInSpecialistInformation()"
});
formatter.result({
  "duration": 2375597784,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd()"
});
formatter.result({
  "duration": 998785695,
  "status": "passed"
});
formatter.after({
  "duration": 188469800,
  "status": "passed"
});
formatter.before({
  "duration": 10838925822,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 15043,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 12315,
  "status": "passed"
});
formatter.scenario({
  "line": 62,
  "name": "Add Alerts",
  "description": "",
  "id": "test-class-name;add-alerts",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 63,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 64,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 65,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 66,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 67,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 68,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 69,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 70,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 71,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 72,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.step({
  "line": 73,
  "name": "Fill the empty inputs in Specialist Information",
  "keyword": "And "
});
formatter.step({
  "line": 74,
  "name": "Fill  empty inputs in Specialist Information from specialists preferred_contact to the end",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3755824091,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6645903864,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5481679011,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4565165422,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4038907532,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 134860064,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 617199884,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1626363340,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "duration": 613223310,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "duration": 1378765203,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInSpecialistInformation()"
});
formatter.result({
  "duration": 2619139713,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd()"
});
formatter.result({
  "duration": 486091886,
  "status": "passed"
});
formatter.after({
  "duration": 175506579,
  "status": "passed"
});
formatter.before({
  "duration": 12598400867,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 16442,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 18357,
  "status": "passed"
});
formatter.scenario({
  "line": 77,
  "name": "Add new medication",
  "description": "",
  "id": "test-class-name;add-new-medication",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 78,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 79,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 80,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 81,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 82,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 83,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 84,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 85,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 86,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 87,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.step({
  "line": 88,
  "name": "Fill the empty inputs in Specialist Information",
  "keyword": "And "
});
formatter.step({
  "line": 89,
  "name": "Fill  empty inputs in Specialist Information from specialists preferred_contact to the end",
  "keyword": "And "
});
formatter.step({
  "line": 90,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 91,
  "name": "Add a new medication",
  "keyword": "And "
});
formatter.step({
  "line": 92,
  "name": "Add a new medication from Time of the day to the end",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3719331084,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6518877988,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5477026827,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4624059043,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4146594627,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 149767004,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 599414967,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 10964936605,
  "error_message": "java.lang.NoClassDefFoundError: org/openqa/selenium/WrapsDriver\n\tat org.openqa.selenium.support.ui.WebDriverWait.timeoutException(WebDriverWait.java:97)\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:272)\n\tat stepdefs.websitesteps.WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact(WebsiteStepDefs.java:157)\n\tat ✽.And Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact(RandomTest.feature:85)\nCaused by: java.lang.ClassNotFoundException: org.openqa.selenium.WrapsDriver\n\tat java.net.URLClassLoader.findClass(URLClassLoader.java:382)\n\tat java.lang.ClassLoader.loadClass(ClassLoader.java:424)\n\tat sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:349)\n\tat java.lang.ClassLoader.loadClass(ClassLoader.java:357)\n\tat org.openqa.selenium.support.ui.WebDriverWait.timeoutException(WebDriverWait.java:97)\n\tat org.openqa.selenium.support.ui.FluentWait.until(FluentWait.java:272)\n\tat stepdefs.websitesteps.WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact(WebsiteStepDefs.java:157)\n\tat sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\n\tat sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\n\tat sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\n\tat java.lang.reflect.Method.invoke(Method.java:498)\n\tat cucumber.runtime.Utils$1.call(Utils.java:40)\n\tat cucumber.runtime.Timeout.timeout(Timeout.java:16)\n\tat cucumber.runtime.Utils.invoke(Utils.java:34)\n\tat cucumber.runtime.java.JavaStepDefinition.execute(JavaStepDefinition.java:38)\n\tat cucumber.runtime.StepDefinitionMatch.runStep(StepDefinitionMatch.java:37)\n\tat cucumber.runtime.Runtime.runStep(Runtime.java:300)\n\tat cucumber.runtime.model.StepContainer.runStep(StepContainer.java:44)\n\tat cucumber.runtime.model.StepContainer.runSteps(StepContainer.java:39)\n\tat cucumber.runtime.model.CucumberScenario.run(CucumberScenario.java:44)\n\tat cucumber.runtime.junit.ExecutionUnitRunner.run(ExecutionUnitRunner.java:102)\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:63)\n\tat cucumber.runtime.junit.FeatureRunner.runChild(FeatureRunner.java:18)\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\n\tat cucumber.runtime.junit.FeatureRunner.run(FeatureRunner.java:70)\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:95)\n\tat cucumber.api.junit.Cucumber.runChild(Cucumber.java:38)\n\tat org.junit.runners.ParentRunner$3.run(ParentRunner.java:290)\n\tat org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:71)\n\tat org.junit.runners.ParentRunner.runChildren(ParentRunner.java:288)\n\tat org.junit.runners.ParentRunner.access$000(ParentRunner.java:58)\n\tat org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:268)\n\tat org.junit.runners.ParentRunner.run(ParentRunner.java:363)\n\tat cucumber.api.junit.Cucumber.run(Cucumber.java:100)\n\tat org.junit.runner.JUnitCore.run(JUnitCore.java:137)\n\tat com.intellij.junit4.JUnit4IdeaTestRunner.startRunnerWithArgs(JUnit4IdeaTestRunner.java:68)\n\tat com.intellij.rt.execution.junit.IdeaTestRunner$Repeater.startRunnerWithArgs(IdeaTestRunner.java:47)\n\tat com.intellij.rt.execution.junit.JUnitStarter.prepareStreamsAndStart(JUnitStarter.java:242)\n\tat com.intellij.rt.execution.junit.JUnitStarter.main(JUnitStarter.java:70)\n",
  "status": "failed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInSpecialistInformation()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedication()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedicationFromTimeOfTheDayToTheEnd()"
});
formatter.result({
  "status": "skipped"
});
formatter.after({
  "duration": 231802882,
  "status": "passed"
});
formatter.before({
  "duration": 12387248175,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11945,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 10137,
  "status": "passed"
});
formatter.scenario({
  "line": 94,
  "name": "Add new Vital",
  "description": "",
  "id": "test-class-name;add-new-vital",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 95,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 96,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 97,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 98,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 99,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 100,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 101,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 102,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 103,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 104,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.step({
  "line": 105,
  "name": "Fill the empty inputs in Specialist Information",
  "keyword": "And "
});
formatter.step({
  "line": 106,
  "name": "Fill  empty inputs in Specialist Information from specialists preferred_contact to the end",
  "keyword": "And "
});
formatter.step({
  "line": 107,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 108,
  "name": "Add a new medication",
  "keyword": "And "
});
formatter.step({
  "line": 109,
  "name": "Add a new medication from Time of the day to the end",
  "keyword": "And "
});
formatter.step({
  "line": 110,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 111,
  "name": "Add a new Vital",
  "keyword": "And "
});
formatter.step({
  "line": 112,
  "name": "Add a new Vital from Time of the day to the and",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3855539849,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6526784583,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5387218508,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4804204973,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4083645021,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 160206270,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 608029605,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1703525678,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "duration": 681027353,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "duration": 1439605300,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInSpecialistInformation()"
});
formatter.result({
  "duration": 2437119385,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd()"
});
formatter.result({
  "duration": 499200026,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 4170928821,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedication()"
});
formatter.result({
  "duration": 3937316400,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedicationFromTimeOfTheDayToTheEnd()"
});
formatter.result({
  "duration": 1260554411,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3780264179,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewVital()"
});
formatter.result({
  "duration": 7181760359,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewVitalFromTimeOfTheDayToTheAnd()"
});
formatter.result({
  "duration": 10313313065,
  "status": "passed"
});
formatter.after({
  "duration": 318098204,
  "status": "passed"
});
formatter.before({
  "duration": 12048420124,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11702,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 8739,
  "status": "passed"
});
formatter.scenario({
  "line": 114,
  "name": "Add Patient Disabilities",
  "description": "",
  "id": "test-class-name;add-patient-disabilities",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 115,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 116,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 117,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 118,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 119,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 120,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 121,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 122,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 123,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 124,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.step({
  "line": 125,
  "name": "Fill the empty inputs in Specialist Information",
  "keyword": "And "
});
formatter.step({
  "line": 126,
  "name": "Fill  empty inputs in Specialist Information from specialists preferred_contact to the end",
  "keyword": "And "
});
formatter.step({
  "line": 127,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 128,
  "name": "Add a new medication",
  "keyword": "And "
});
formatter.step({
  "line": 129,
  "name": "Add a new medication from Time of the day to the end",
  "keyword": "And "
});
formatter.step({
  "line": 130,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 131,
  "name": "Add a new Vital",
  "keyword": "And "
});
formatter.step({
  "line": 132,
  "name": "Add a new Vital from Time of the day to the and",
  "keyword": "And "
});
formatter.step({
  "line": 134,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 135,
  "name": "Add Patient\u0027s Disabilities",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3833836859,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6509133641,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5532666443,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4626593597,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4022683981,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 138490984,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 562279793,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1691372998,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "duration": 623201476,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "duration": 1400557157,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInSpecialistInformation()"
});
formatter.result({
  "duration": 2358262575,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd()"
});
formatter.result({
  "duration": 475503650,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 4078522184,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedication()"
});
formatter.result({
  "duration": 3840866928,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedicationFromTimeOfTheDayToTheEnd()"
});
formatter.result({
  "duration": 1185078176,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3832927461,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewVital()"
});
formatter.result({
  "duration": 7139533020,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewVitalFromTimeOfTheDayToTheAnd()"
});
formatter.result({
  "duration": 10300016714,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3874499129,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatientSDisabilities()"
});
formatter.result({
  "duration": 631071139,
  "status": "passed"
});
formatter.after({
  "duration": 84440649,
  "status": "passed"
});
formatter.before({
  "duration": 8386004473,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 10705,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 12815,
  "status": "passed"
});
formatter.scenario({
  "line": 137,
  "name": "Add Alert",
  "description": "",
  "id": "test-class-name;add-alert",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 138,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 139,
  "name": "Fill empty inputs Patient Information",
  "keyword": "And "
});
formatter.step({
  "line": 140,
  "name": "Fill empty inputs in Patient Information from date_of_birth to cellphone",
  "keyword": "And "
});
formatter.step({
  "line": 141,
  "name": "fill the empty inputs in Patient Information from homephone to city",
  "keyword": "And "
});
formatter.step({
  "line": 142,
  "name": "fill empty inputs in Patient Information from patientstate to patientcare_provider_phone",
  "keyword": "And "
});
formatter.step({
  "line": 143,
  "name": "Fill the radio btn Language",
  "keyword": "And "
});
formatter.step({
  "line": 144,
  "name": "Fill the empty inputs in Care giver Information",
  "keyword": "And "
});
formatter.step({
  "line": 145,
  "name": "Fill the empty inputs in Care giver Information from  cell phone to careGiverpreferred_contact",
  "keyword": "And "
});
formatter.step({
  "line": 146,
  "name": "Fill the empty inputs in Emergency Contact Information",
  "keyword": "And "
});
formatter.step({
  "line": 147,
  "name": "Fill the empty inputs in Emergency Contact Information from cell phone to the end",
  "keyword": "And "
});
formatter.step({
  "line": 148,
  "name": "Fill the empty inputs in Specialist Information",
  "keyword": "And "
});
formatter.step({
  "line": 149,
  "name": "Fill  empty inputs in Specialist Information from specialists preferred_contact to the end",
  "keyword": "And "
});
formatter.step({
  "line": 150,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 151,
  "name": "Add a new medication",
  "keyword": "And "
});
formatter.step({
  "line": 152,
  "name": "Add a new medication from Time of the day to the end",
  "keyword": "And "
});
formatter.step({
  "line": 153,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 154,
  "name": "Add a new Vital",
  "keyword": "And "
});
formatter.step({
  "line": 155,
  "name": "Add a new Vital from Time of the day to the and",
  "keyword": "And "
});
formatter.step({
  "line": 156,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 157,
  "name": "Add Patient\u0027s Disabilities",
  "keyword": "And "
});
formatter.step({
  "line": 158,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 159,
  "name": "Add Alert",
  "keyword": "And "
});
formatter.step({
  "line": 160,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 161,
  "name": "The assertion that the test has passed and worked fine",
  "keyword": "Then "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3837543862,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsPatientInformation()"
});
formatter.result({
  "duration": 6512196635,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone()"
});
formatter.result({
  "duration": 5282439208,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInPatientInformationFromHomephoneToCity()"
});
formatter.result({
  "duration": 4591530359,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone()"
});
formatter.result({
  "duration": 4131349715,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheRadioBtnLanguage()"
});
formatter.result({
  "duration": 150139269,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformation()"
});
formatter.result({
  "duration": 581631868,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGiverpreferred_contact()"
});
formatter.result({
  "duration": 1693165479,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformation()"
});
formatter.result({
  "duration": 629320541,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd()"
});
formatter.result({
  "duration": 1447652222,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillTheEmptyInputsInSpecialistInformation()"
});
formatter.result({
  "duration": 2410092383,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd()"
});
formatter.result({
  "duration": 482938172,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 4123151754,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedication()"
});
formatter.result({
  "duration": 3849814361,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewMedicationFromTimeOfTheDayToTheEnd()"
});
formatter.result({
  "duration": 1203103163,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3834219890,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewVital()"
});
formatter.result({
  "duration": 7161881646,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addANewVitalFromTimeOfTheDayToTheAnd()"
});
formatter.result({
  "duration": 10309745288,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3938200284,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatientSDisabilities()"
});
formatter.result({
  "duration": 636811252,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3716409847,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addAlert()"
});
formatter.result({
  "duration": 1964389961,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13128488364,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theAssertionThatTheTestHasPassedAndWorkedFine()"
});
formatter.result({
  "duration": 22759,
  "status": "passed"
});
formatter.after({
  "duration": 661374878,
  "status": "passed"
});
formatter.before({
  "duration": 10442585193,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 13149,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 8356,
  "status": "passed"
});
formatter.scenario({
  "line": 164,
  "name": "Fill the inputs wrong",
  "description": "",
  "id": "test-class-name;fill-the-inputs-wrong",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 165,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 166,
  "name": "text is ok",
  "keyword": "And "
});
formatter.step({
  "line": 167,
  "name": "date of birth",
  "keyword": "And "
});
formatter.step({
  "line": 168,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 169,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 170,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 171,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 172,
  "name": "save Patient",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3816346887,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.textIsOk()"
});
formatter.result({
  "duration": 3439409110,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirth()"
});
formatter.result({
  "duration": 123525902,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 291812700,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 339733781,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 583389169,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13113620416,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.savePatient()"
});
formatter.result({
  "duration": 985535099,
  "status": "passed"
});
formatter.after({
  "duration": 131893593,
  "status": "passed"
});
formatter.before({
  "duration": 9489566174,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11769,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 8344,
  "status": "passed"
});
formatter.scenario({
  "line": 174,
  "name": "firstname and lastname null save error",
  "description": "",
  "id": "test-class-name;firstname-and-lastname-null-save-error",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 175,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 176,
  "name": "firstname, lastname is null",
  "keyword": "And "
});
formatter.step({
  "line": 177,
  "name": "date of birth",
  "keyword": "And "
});
formatter.step({
  "line": 178,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 179,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 180,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 181,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3828928195,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.firstnameLastnameIsNull()"
});
formatter.result({
  "duration": 118844047,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirth()"
});
formatter.result({
  "duration": 127211944,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 278939804,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 350781720,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 595389550,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13116662100,
  "status": "passed"
});
formatter.after({
  "duration": 109621170,
  "status": "passed"
});
formatter.before({
  "duration": 8788668040,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11738,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 5210,
  "status": "passed"
});
formatter.scenario({
  "line": 183,
  "name": "Fill the wrong name",
  "description": "",
  "id": "test-class-name;fill-the-wrong-name",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 184,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 185,
  "name": "fill wrong name",
  "keyword": "And "
});
formatter.step({
  "line": 186,
  "name": "date of birth",
  "keyword": "And "
});
formatter.step({
  "line": 187,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 188,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 189,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 190,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3838765979,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.fillWrongName()"
});
formatter.result({
  "duration": 379357400,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirth()"
});
formatter.result({
  "duration": 105991063,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 285739198,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 368114746,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 599770280,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13131278587,
  "status": "passed"
});
formatter.after({
  "duration": 231481025,
  "status": "passed"
});
formatter.before({
  "duration": 10390170489,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 11423,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 5234,
  "status": "passed"
});
formatter.scenario({
  "line": 192,
  "name": "address with long numbers",
  "description": "",
  "id": "test-class-name;address-with-long-numbers",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 193,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 194,
  "name": "text is ok",
  "keyword": "And "
});
formatter.step({
  "line": 195,
  "name": "date of birth",
  "keyword": "And "
});
formatter.step({
  "line": 196,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 197,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 198,
  "name": "Address with long numbers",
  "keyword": "And "
});
formatter.step({
  "line": 199,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 200,
  "name": "save Patient",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3816477049,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.textIsOk()"
});
formatter.result({
  "duration": 3411472385,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirth()"
});
formatter.result({
  "duration": 146552542,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 331976247,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 377121309,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addressWithLongNumbers()"
});
formatter.result({
  "duration": 933673469,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13151598417,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.savePatient()"
});
formatter.result({
  "duration": 1212071292,
  "status": "passed"
});
formatter.after({
  "duration": 102451915,
  "status": "passed"
});
formatter.before({
  "duration": 12081582677,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 269230,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 213575,
  "status": "passed"
});
formatter.scenario({
  "line": 202,
  "name": "address with code",
  "description": "",
  "id": "test-class-name;address-with-code",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 203,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 204,
  "name": "text is ok",
  "keyword": "And "
});
formatter.step({
  "line": 205,
  "name": "date of birth",
  "keyword": "And "
});
formatter.step({
  "line": 206,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 207,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 208,
  "name": "Address with code",
  "keyword": "And "
});
formatter.step({
  "line": 209,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 210,
  "name": "save Patient",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3842284931,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.textIsOk()"
});
formatter.result({
  "duration": 3397784635,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirth()"
});
formatter.result({
  "duration": 100294895,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 324263517,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 436883405,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addressWithCode()"
});
formatter.result({
  "duration": 1185267518,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13104107217,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.savePatient()"
});
formatter.result({
  "duration": 1399043269,
  "status": "passed"
});
formatter.after({
  "duration": 162098861,
  "status": "passed"
});
formatter.before({
  "duration": 11933245861,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 31633,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 28082,
  "status": "passed"
});
formatter.scenario({
  "line": 212,
  "name": "Date of birth empty",
  "description": "",
  "id": "test-class-name;date-of-birth-empty",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 213,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 214,
  "name": "date of birth is empty",
  "keyword": "And "
});
formatter.step({
  "line": 215,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 216,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 217,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 218,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 219,
  "name": "date of birth empty error text",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3691266060,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirthIsEmpty()"
});
formatter.result({
  "duration": 3346450131,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 266290260,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 357221226,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 555524583,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13128455420,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirthEmptyErrorText()"
});
formatter.result({
  "duration": 32572506,
  "status": "passed"
});
formatter.after({
  "duration": 225090339,
  "status": "passed"
});
formatter.before({
  "duration": 8984803950,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 9631,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 7484,
  "status": "passed"
});
formatter.scenario({
  "line": 221,
  "name": "Gender empty error",
  "description": "",
  "id": "test-class-name;gender-empty-error",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 222,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 223,
  "name": "date of birth is empty",
  "keyword": "And "
});
formatter.step({
  "line": 224,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 225,
  "name": "gender is empty",
  "keyword": "And "
});
formatter.step({
  "line": 226,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 227,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 228,
  "name": "gender  empty error text",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3673158146,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirthIsEmpty()"
});
formatter.result({
  "duration": 3358887210,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 290796700,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsEmpty()"
});
formatter.result({
  "duration": 3362743249,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 330247100,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13145149774,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderEmptyErrorText()"
});
formatter.result({
  "duration": 30534697,
  "status": "passed"
});
formatter.after({
  "duration": 1842759987,
  "status": "passed"
});
formatter.before({
  "duration": 13562778182,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 15332,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 19097,
  "status": "passed"
});
formatter.scenario({
  "line": 230,
  "name": "Phone number empty error",
  "description": "",
  "id": "test-class-name;phone-number-empty-error",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 231,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 232,
  "name": "text is ok",
  "keyword": "And "
});
formatter.step({
  "line": 233,
  "name": "date of birth",
  "keyword": "And "
});
formatter.step({
  "line": 234,
  "name": "phone number is empty",
  "keyword": "And "
});
formatter.step({
  "line": 235,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 236,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 237,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 238,
  "name": "phone error text",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 4622959132,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.textIsOk()"
});
formatter.result({
  "duration": 3402562122,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.dateOfBirth()"
});
formatter.result({
  "duration": 89484631,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsEmpty()"
});
formatter.result({
  "duration": 80426515,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 367858272,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 541615593,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13126957280,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.PhoneErrorText()"
});
formatter.result({
  "duration": 29881601,
  "status": "passed"
});
formatter.after({
  "duration": 345680012,
  "status": "passed"
});
formatter.before({
  "duration": 10265994555,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 8377,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 5696,
  "status": "passed"
});
formatter.scenario({
  "line": 240,
  "name": "Firstname and last name empty error",
  "description": "",
  "id": "test-class-name;firstname-and-last-name-empty-error",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 241,
  "name": "click in Onboarding bttn",
  "keyword": "And "
});
formatter.step({
  "line": 242,
  "name": "firstname, lastname is null",
  "keyword": "And "
});
formatter.step({
  "line": 243,
  "name": "phone number is ok",
  "keyword": "And "
});
formatter.step({
  "line": 244,
  "name": "gender is ok",
  "keyword": "And "
});
formatter.step({
  "line": 245,
  "name": "Address is ok",
  "keyword": "And "
});
formatter.step({
  "line": 246,
  "name": "Add Patient",
  "keyword": "And "
});
formatter.step({
  "line": 247,
  "name": "firstname, lastname empty error text",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.clickInOnboardingBttn()"
});
formatter.result({
  "duration": 3675220034,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.firstnameLastnameIsNull()"
});
formatter.result({
  "duration": 108948528,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.phoneNumberIsOk()"
});
formatter.result({
  "duration": 268817087,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.genderIsOk()"
});
formatter.result({
  "duration": 363889186,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.AddressIsOk()"
});
formatter.result({
  "duration": 546625234,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.addPatient()"
});
formatter.result({
  "duration": 13130476659,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.firstnameLastnameEmptyErrorText()"
});
formatter.result({
  "duration": 56465488,
  "status": "passed"
});
formatter.after({
  "duration": 130628282,
  "status": "passed"
});
formatter.before({
  "duration": 9365256203,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 14205,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 7748,
  "status": "passed"
});
formatter.scenario({
  "line": 249,
  "name": "The actual test",
  "description": "",
  "id": "test-class-name;the-actual-test",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 250,
  "name": "Logout",
  "keyword": "When "
});
formatter.match({
  "location": "WebsiteStepDefs.Logout()"
});
formatter.result({
  "duration": 3098692985,
  "status": "passed"
});
formatter.after({
  "duration": 236722775,
  "status": "passed"
});
formatter.before({
  "duration": 10028203468,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 9408,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 10529,
  "status": "passed"
});
formatter.scenario({
  "line": 252,
  "name": "ReLogin",
  "description": "",
  "id": "test-class-name;relogin",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 253,
  "name": "User View the FirstPage and Click Edit Profile",
  "keyword": "When "
});
formatter.step({
  "line": 254,
  "name": "ClickEditProfile",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.userViewTheFirstPageAndClickEditProfile()"
});
formatter.result({
  "duration": 2059601783,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickeditprofile()"
});
formatter.result({
  "duration": 508814845,
  "status": "passed"
});
formatter.after({
  "duration": 104699950,
  "status": "passed"
});
formatter.before({
  "duration": 9365521300,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 10918,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 9493,
  "status": "passed"
});
formatter.scenario({
  "line": 256,
  "name": "Clear data in Edit Profiles",
  "description": "",
  "id": "test-class-name;clear-data-in-edit-profiles",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 257,
  "name": "User View the FirstPage and Click Edit Profile",
  "keyword": "When "
});
formatter.step({
  "line": 258,
  "name": "ClickEditProfile",
  "keyword": "And "
});
formatter.step({
  "line": 259,
  "name": "User Click Edit Profiles and ClearData",
  "keyword": "When "
});
formatter.match({
  "location": "WebsiteStepDefs.userViewTheFirstPageAndClickEditProfile()"
});
formatter.result({
  "duration": 2060683425,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickeditprofile()"
});
formatter.result({
  "duration": 513913441,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.userClickEditProfilesAndClearData()"
});
formatter.result({
  "duration": 9230526415,
  "status": "passed"
});
formatter.after({
  "duration": 163662013,
  "status": "passed"
});
formatter.before({
  "duration": 10017143945,
  "status": "passed"
});
formatter.background({
  "line": 4,
  "name": "Common Steps to be executed before test",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 5,
  "name": "The precondition for the test - goes to website or logs in",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "The next step that gets repeated before every test",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.thePreconditionForTheTestGoesToWebsiteOrLogsIn()"
});
formatter.result({
  "duration": 16134,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.theNextStepThatGetsRepeatedBeforeEveryTest()"
});
formatter.result({
  "duration": 6946,
  "status": "passed"
});
formatter.scenario({
  "line": 263,
  "name": "The user goes to NavBar and change Passord",
  "description": "",
  "id": "test-class-name;the-user-goes-to-navbar-and-change-passord",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 264,
  "name": "User View the FirstPage and Click Edit Profile",
  "keyword": "When "
});
formatter.step({
  "line": 265,
  "name": "ClickEditProfilePassword",
  "keyword": "And "
});
formatter.step({
  "line": 266,
  "name": "ChangePassword",
  "keyword": "And "
});
formatter.match({
  "location": "WebsiteStepDefs.userViewTheFirstPageAndClickEditProfile()"
});
formatter.result({
  "duration": 2055343829,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.clickeditprofilepassword()"
});
formatter.result({
  "duration": 1113900593,
  "status": "passed"
});
formatter.match({
  "location": "WebsiteStepDefs.changepassword()"
});
formatter.result({
  "duration": 741049582,
  "status": "passed"
});
formatter.after({
  "duration": 196609959,
  "status": "passed"
});
});