package stepdefs.websitesteps;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.cs.A;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import gherkin.lexer.Th;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.nio.channels.InterruptedByTimeoutException;
import java.util.List;

public class NavBarStepDefinitions {

    private WebDriver driver;
    private WebElement element;

    @Given("^Go to website and log in for nav bar$")
    public void goToWebsiteAndLogInForNavBar() {
        System.setProperty("webdriver.chrome.driver", "src/main/resources/chromedriver");
        driver = new ChromeDriver();
        driver.manage().window().fullscreen();
        driver.navigate().to("https://nj-staging.vianovahealth.com/login");
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
        WebElement element = driver.findElement(By.name("email"));
        element.sendKeys("tframe@vh.com");
        element = driver.findElement(By.name("password"));
        element.sendKeys("blakaj123");
        element = driver.findElement(By.className("btn-blue"));
        element.click();
    }

    @After
    public void tearDown() {
        if (driver != null)
            driver.quit();
    }

    @And("^Click EditProfile$")
    public void clickEditProfile() throws Exception {
        element = driver.findElement(By.id("navbarDropdown"));
        element.click();
    }


    @And("^Select Edit Profile : \"([^\"]*)\"$")
    public void selectEditProfile(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + value + "']"));
        element.click();
        new WebDriverWait(driver, 20).until(ExpectedConditions.urlToBe(value));
        Assert.assertEquals(driver.getCurrentUrl(), value);
    }

    @And("^Edit FirstName : \"([^\"]*)\"$")
    public void editFirstName(String firstname) throws Throwable {
        element = driver.findElement(By.name("first_name"));
        element.clear();
        element.sendKeys(firstname);
        Assert.assertEquals(element.getAttribute("value"), firstname);
    }


    @And("^Edit LastName : \"([^\"]*)\"$")
    public void editLastname(String lastname) throws Throwable {
        element = driver.findElement(By.name("last_name"));
        element.clear();
        element.sendKeys(lastname);
        Assert.assertEquals(element.getAttribute("value"), lastname);

    }

    @And("^Edit FirstAddress :\"([^\"]*)\"$")
    public void editFirstAddress(String firstaddres) throws Throwable {
        element = driver.findElement(By.name("address_line_1"));
        element.clear();
        element.sendKeys(firstaddres);
        Assert.assertEquals(element.getAttribute("value"), firstaddres);


    }

    @And("^Edit SecondAddress :\"([^\"]*)\"$")
    public void editSecondAddress(String secondaddress) throws Throwable {
        element = driver.findElement(By.name("address_line_2"));
        element.clear();
        element.sendKeys(secondaddress);
        Assert.assertEquals(element.getAttribute("value"), secondaddress);

    }

    @And("^Add AppSuite : \"([^\"]*)\"$")
    public void addAppSuite(String app_suit) throws Throwable {
        element = driver.findElement(By.name("apt_suite"));
        element.clear();
        element.sendKeys(app_suit);
        Assert.assertEquals(element.getAttribute("value"), app_suit);
        Thread.sleep(4000);
    }


    @And("^Add CityOnEdit : \"([^\"]*)\"$")
    public void addCityOnEdit(String city) throws Throwable {
        element = driver.findElement(By.name("city"));
        element.clear();
        element.sendKeys(city);
        Assert.assertEquals(element.getAttribute("value"), city);
    }

    @And("^Click to select State :\"([^\"]*)\"$")
    public void clickToSelectState(String value) throws Throwable {
        element.findElements(By.name("state"));
        element.click();

//        Assert.assertEquals(driver.getCurrentUrl(),value="http://nj-staging.vianovahealth.com/users/33/edit");
    }

    @And("^select A state : \"([^\"]*)\"$")
    public void selectAState(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("option[value='" + value + "']"));
        element.click();
    }

    @Then("^FillSecondPartoF Edit Profile$")
    public void fillsecondpartofEditProfile() throws InterruptedException {
        Thread.sleep(1000);
    }

    @And("^Set Zip Number : \"([^\"]*)\"$")
    public void setZipNumber(String zip_code) throws Throwable {
        element = driver.findElement(By.name("zip_code"));
        element.sendKeys(zip_code);
        Assert.assertEquals("995182708", zip_code);

    }

    @And("^Set email: \"([^\"]*)\"$")
    public void setEmail(String email) {
        element = driver.findElement(By.name("email"));
        element.clear();
        element.sendKeys(email);
        Assert.assertEquals(element.getAttribute("value"), email);


    }

    @And("^Set Location$")
    public void setLocation() {
        element = driver.findElement(By.name("location"));
        element.clear();
        element.sendKeys("Prishtina");
        Assert.assertEquals("Prishtina", element.getAttribute("value"));
    }

    @And("^Set Client name :\"([^\"]*)\"$")
    public void setClientName(String client_name) throws Throwable {
        element = driver.findElement(By.name("location"));
        element.clear();
        element.sendKeys(client_name);
        Assert.assertEquals(client_name, element.getAttribute("value"));

    }

    @And("^Select a category :\"([^\"]*)\"$")
    public void selectACategory(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("option[value='" + value + "']"));
        element.click();
        Assert.assertEquals(value, element.getAttribute("value"));
        Thread.sleep(3000);
    }

    @Then("^The user click CancelButton :\"([^\"]*)\"$")
    public void theUserClickCancelButton(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + value + "']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?status=active");
    }


    @And("^Click Change password :\"([^\"]*)\"$")
    public void clickChangepassword(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + value + "']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/user/change-password");

    }

    @Then("^User Wait for nextStep$")
    public void userWaitForNextStep() throws InterruptedException {
        Thread.sleep(1000);
    }

    @And("^Set old Password :\"([^\"]*)\"$")
    public void setOldPassword(String oldPassword) {
        element = driver.findElement(By.id("current-password"));
        element.sendKeys(oldPassword);
        Assert.assertEquals(element.getAttribute("value"), oldPassword);

    }

    @And("^Set new Password :\"([^\"]*)\"$")
    public void setNewPassword(String newPassword) {
        element = driver.findElement(By.id("new-password"));
        element.sendKeys(newPassword);
        Assert.assertEquals(element.getAttribute("value"), newPassword);

    }

    @And("^Set new Password confirm :\"([^\"]*)\"$")
    public void setNewPasswordConfirm(String newPassword_confirm) throws Throwable {
        element = driver.findElement(By.id("new-password-confirm"));
        element.sendKeys(newPassword_confirm);
        Assert.assertEquals(element.getAttribute("value"), newPassword_confirm);
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/user/change-password");
        Thread.sleep(3000);
    }

    @Then("^User click on ChangePassword$")
    public void userClickOnChangePassword() throws InterruptedException {
        element = driver.findElement(By.className("btn-primary"));
        element.submit();
        Thread.sleep(20000);
    }


    @And("^Click on View Patient :\"([^\"]*)\"$")
    public void clickOnViewPatient(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + value + "']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?status=active");
    }

    @And("^The user click on Search Field :\"([^\"]*)\"$")
    public void theUserClickOnSearchField(String wrong_name) {
        element = driver.findElement(By.name("search"));
        element.clear();
        element.sendKeys(wrong_name);
        element.submit();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?search=besa+gashi&status=active");
    }

    @And("^The user click on search and search for :\"([^\"]*)\"$")
    public void theUserClickOnSearchAndSearchFor(String right_name) {
        element = driver.findElement(By.name("search"));
        element.clear();
        element.sendKeys(right_name);
        element.submit();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?search=besa&status=active");

    }

    //
    //ViewPatient
    @And("^User click and select first result$")
    public void userClickAndSelectFirstResult() throws InterruptedException {

        element = driver.findElement(By.id("row-light"));
        element.click();

        Thread.sleep(4000);

    }

    @And("^User click and select first result :\"([^\"]*)\"$")
    public void userClickAndSelectFirstResult(String click) throws Throwable {
        element = driver.findElement(By.id(click));
        element.click();
//        element =driver.findElement(By.className("dismiss-new"));
        //       element.click(); //Me munngesa
        Thread.sleep(3000);
    }

    @And("^User Select button to add Vitals for seven days$")
    public void userSelctButtonToAddVitalsForSevenDays() {
        element = driver.findElement(By.cssSelector("#control_screen > div.content-background.control-page > div.container.m-t-50 > div > div > div.col-md-1.col-sm-1.col-xs-1 > a")); //Mund  te ndrroj
        element.click();

    } //

    @And("^After click a new window is appeared and select a vital :\"([^\"]*)\"$")
    public void afterClickANewWindowIsAppeardAndSelctAVital(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("#rosie-conversation-modal > div > div > div.modal-body > div > div > form > div > div:nth-child(2) > div > select"));
        element.click();
        element = driver.findElement(By.cssSelector("#rosie-conversation-modal > div > div > div.modal-body > div > div > form > div > div:nth-child(2) > div > select > option:nth-child(2)"));
        element.click();
        Thread.sleep(3999);
    }


    @And("^After click a new window is appeared and select a date :\"([^\"]*)\"$")
    public void afterClickANewWindowIsAppeardAndSelctADate(String data) throws Throwable {
        element = driver.findElement(By.cssSelector("#rosie-conversation-modal > div > div > div.modal-body > div > div > form > div > div:nth-child(3) > div > input"));
        element.sendKeys(data);
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/controls");
        Thread.sleep(2000);
    }

    @And("^After click a new window is appeared and select a Value:\"([^\"]*)\"$")
    public void afterClickANewWindowIsAppeardAndSelctAValue(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("#rosie-conversation-modal > div > div > div.modal-body > div > div > form > div > div:nth-child(4) > div > input"));
        element.sendKeys(value);
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/controls");
    }

    @And("^After click a new window is appeared and select a Time of day$")
    public void afterClickANewWindowIsAppeardAndSelctATimeOfDay() throws Exception {
//        List<WebElement> icons = driver.findElements(By.className("select-custom-style form-control"));
//        WebElement element=icons.get(2);
//        element.click();
        element = driver.findElement(By.cssSelector("#rosie-conversation-modal > div > div > div.modal-body > div > div > form > div > div:nth-child(5) > div > select > option:nth-child(4)"));
        element.click();

    }

    @And("^After click a new window is appeared and select a Time of Meal$")
    public void afterClickANewWindowIsAppeardAndSelctATimeOfMeal() throws Exception {
        element = driver.findElement(By.cssSelector("#rosie-conversation-modal > div > div > div.modal-body > div > div > form > div > div:nth-child(6) > div > select > option:nth-child(3)"));
        element.click();
    }


    @Then("^Click ADD Button :\"([^\"]*)\"$")
    public void clickADDButton(String classname) throws Throwable {
        element = driver.findElement(By.className("btn-blue"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/controls");

    }

    @And("^User click Summaries :\"([^\"]*)\"$")
    public void userClickSummaries(String summaries) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + summaries + "']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), summaries);
        Thread.sleep(3000);
    }

    @And("^User click Summaries and select MealTpye$")
    public void userClickSummariesAndSelectMealTpye() {
        element = driver.findElement(By.cssSelector("#app > section > div.content-background > div > div.row > div > div:nth-child(1) > div.content-box > div:nth-child(1) > div.d-flex.justify-content-end > div:nth-child(2) > select > option:nth-child(2)"));
        element.click();
    }

    @And("^User click Summaries and select TimeType$")
    public void userClickSummariesAndSelectTimeType() {
        element = driver.findElement(By.cssSelector("#app > section > div.content-background > div > div.row > div > div:nth-child(1) > div.content-box > div:nth-child(1) > div.d-flex.justify-content-end > div:nth-child(3) > select > option:nth-child(4)"));
        element.click();
    }

    @And("^User click Summaries and select Blood Pressure$")
    public void userClickSummariesAndSelectBloodPreasure() {

        element = driver.findElement(By.cssSelector("#app > section > div.content-background > div > div.row > div > div:nth-child(1) > div.content-box > div:nth-child(2) > div.row > div.col-md-2 > div > div > select > option:nth-child(4)\n"));

        element.click();
    }


    @And("^User click Summaries and submit Preview Medication :\"([^\"]*)\"$")
    public void userClickSummariesAndSubmitPreviewMedication(String previewMedication) throws Throwable {
        element = driver.findElement(By.cssSelector("#app > section > div.content-background > div > div.row > div > div:nth-child(2) > div.content-box > div > div > div > div.col-md-5 > div > button"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), previewMedication);
        driver.navigate().back();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/summaries");
    }

    @And("^User Click on Communication :\"([^\"]*)\"$")
    public void userClickOnComunications(String comunications) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + comunications + "']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/communications");


    }

    @And("^User Click on Communication and Sent Sms now :\"([^\"]*)\"$")
    public void userClickOnComunicationsAndSentSmsNow(String smsfield) throws Throwable {
        element = driver.findElement(By.className(smsfield));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.className(smsfield)));

    }
    @And("^User Click on Communication and fill sent sms field : \"([^\"]*)\"$")
    public void userClickOnComunicationsAndFillSentSmsField(String smsfield) throws Throwable {
        element = driver.findElement(By.cssSelector("#communication_screen > div.content-background.communication-page > div.container.m-t-70.m-b-30 > div.message-holder > textarea"));
        element.sendKeys("20 mg");
    }

    @And("^User Click on Communication and click sent button for sent : \"([^\"]*)\"$")
    public void userClickOnComunicationsAndClickSentButtonForSent(String sentbtn) throws Throwable {
        element = driver.findElement(By.cssSelector("#communication_screen > div.content-background.communication-page > div.container.m-t-70.m-b-30 > div.message-holder > button"));
        element.click(); //sdfs
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.className(sentbtn)));

    }

    @And("^User click on Communication and click Care notes$") //css
    public void userClickOnComunicationsAndClickCarenotes() {
        element = driver.findElement(By.cssSelector("#cnc > div > form > div:nth-child(1) > textarea"));
        element.sendKeys("blakaj123");
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));

    }

    @And("^User click on Communication and click care note minutes :\"([^\"]*)\"$")
    public void userClickOnComunicationsAndClickCareNoteMinutes(String mincare) throws Throwable {
        element = driver.findElement(By.className(mincare));
        element.sendKeys("21");
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
        Thread.sleep(5000);
    }

    @And("^User click on Care plan :\"([^\"]*)\"$")
    public void userClickOnCareplan(String careplan) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='" + careplan + "']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/care_plans");
        Thread.sleep(4000);
    }

    @And("^User click on Care plan$")
    public void userClickOnCareplan() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#app > section > div.content-background > div:nth-child(1) > div > div > div:nth-child(3) > div > div.background-box.space.m-t-20 > table > tbody > tr:nth-child(1) > td:nth-child(6) > div > a:nth-child(1)"));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));

    }
//
//    @And("^User click on Careplan and edit$ ")
//    public void userClickOnCareplanAndEdit() {
//        WebElement element = driver.findElement(By.cssSelector("input[placeholder='Example: 20mg']"));
//        element.sendKeys("20mg");
//    }

    @And("^User click on Care plan and click Add Medication :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMediction(String addmedication) throws Throwable {
        element = driver.findElement(By.id(addmedication));
        element.click();
//        new WebDriverWait(driver,10).until(ExpectedConditions.elementToBeClickable(By.id(addmedication)));


    }


    @And("^User click on Care plan and click Add Medication name :\"([^\"]*)\"$")
    public void userClickOnCareplnNdClickAddMeciactionName(String medicament_name) throws Throwable {
//        element = driver.findElement(By.xpath("//*[@id=\"collapseExample\"]/div/form/div/div[1]/div/div"));
//        element.sendKeys("Flonase");
        Thread.sleep(5000);
        element = driver.findElement(By.cssSelector("input[placeholder='Search Medication Name']"));
        element.sendKeys("Bleron");
    }

    @And("^User click on Care plan and click Add Medication Frequency :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionFrequency(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("select[class='select-custom-style form-control'] > option[value=" + value + "]"));
        element.click();
        Thread.sleep(5000);
    }

    @And("^User click on Care plan and click Add Medication Dosage :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedicationDosage(String dose) throws Throwable {
        element = driver.findElement(By.cssSelector("input[placeholder='" + dose + "']"));
        element.sendKeys("20 mg");

    }

    @And("^User click on Care plan and click Add Medication PRN :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedicationPRN(String arg0) throws Throwable {
        element = driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(3) > div > select > option:nth-child(3)"));
        element.click();

    }

    @And("^User click on Care plan and click Add Medication Time of Day$")
    public void userClickOnCareplanAndClickAddMedictionTimeOfDay() throws InterruptedException {
        element = driver.findElement(By.className("right-space"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/care_plans");
    }

    @And("^User click on Care plan and click Add Medication Meal Association$")
    public void userClickOnCareplanAndClickAddMedictionMealAssocation() {
        element = driver.findElement(By.className("right-space"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients/342/care_plans");
    }

    @And("^User click on Care plan and click Add Medication Description :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionDescription(String description) throws Throwable {
        element = driver.findElement(By.id(description));
        element.sendKeys("Blakaj123");
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add Medication Rx \"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionRx(String rxNumber) throws Throwable {
        element = driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(6) > div > div > div > input"));
        element.sendKeys("32");
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }


    @And("^User click on Care plan and click Add Medication and select :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionAndSelect(String arg0) throws Throwable {
        element = driver.findElement(By.cssSelector("#collapseExample > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button"));
        element.click();
        //  Assert.assertEquals(driver.getCurrentUrl(),"http://nj-staging.vianovahealth.com/patients/342/care_plans");
    }

    @And("^User click on Care plan and click Add Medication and delete one$")
    public void userClickOnCareplanAndClickAddMedictionAndDeleteOne() {
        element = driver.findElement(By.cssSelector("#app > section > div.content-background > div:nth-child(1) > div > div > div:nth-child(3) > div > div.background-box.space.m-t-20 > table > tbody > tr:nth-child(1) > td:nth-child(6) > div > a:nth-child(2) > img"));
        element.click();


    }

    @And("^User click on Care plan and click Add Medication and add New Vital :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionAndAddNewVital(String add_new_vital) throws Throwable {
        element = driver.findElement(By.cssSelector("#addMonitor"));
        element.click();
        //       new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add Vital and select name on Vital$")
    public void userClickOnCareplanAndClickAddMedictionAndSelectNameOnVital() {
        element = driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(1) > div > select > option:nth-child(3)"));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add Vital and frequency on vital$")
    public void userClickOnCareplanAndClickAddMedictionAndFrequencyNameOnVital() {
        element = driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-4 > div > select > option:nth-child(3)"));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add Vital and GOAL on vital :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionAndGOALNameOnVital(String goal) throws Throwable {
        element = driver.findElement(By.cssSelector("input[placeholder='" + goal + "']"));
        element.sendKeys("34");
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));

    }

    @And("^User click on Care plan and click Add Vital and Time on vital :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddMedictionAndTimeOnVital(String arg0) throws Throwable {
        element = driver.findElement(By.className(arg0));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add Vital and select after :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddVitalAndSelectAfter(String value) throws Throwable {
        element = driver.findElement(By.className(value));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add Vital and add new vital :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddVitalAndAddNewVital(String arg0) throws Throwable {
        element = driver.findElement(By.className(arg0));
        element.click();
        Thread.sleep(5000);
    }

    @And("^User click on Care plan and click Add new Alert Rule :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddNewAlertRule(String addalert_rule) throws Throwable {
        driver.findElement(By.id("addAlert")).click();
//        elemen.click();
//        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));

    }

    @And("^User click on Care plan and click Add new Alert Rule set name :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddNewAlertRuleSetName(String name_alert_rule) throws Throwable {
        Thread.sleep(10000);
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(1) > div > input")).sendKeys("blakaj");

        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add new Alert Rule set Status$")
    public void userClickOnCareplanAndClickAddNewAlertRuleSetStatus() {
        element =driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(2) > div > select > option:nth-child(2)"));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on Care plan and click Add new Alert Rule set Vital Type$")
    public void userClickOnCareplanAndClickAddNewAlerRuleSetVitalType() {
        element =driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(3) > div > select > option:nth-child(2)")) ;
        element.click();
    }

    @And("^User click on Care plan and click Add new Alert Rule set From :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddNewAlerRuleSetFrom(String from) throws Throwable {
     element = driver.findElement(By.cssSelector("input[placeholder='"+from+"']"));
     element.sendKeys("21");
    }

    @And("^User click on Care plan and click Add new Alert Rule set TO :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddNewAlerRuleSetTO(String to) throws Throwable {
        element = driver.findElement(By.cssSelector("input[placeholder='"+to+"']"));
        element.sendKeys("21");
    }

    @And("^User click on Care plan and click Add new Alert Rule set message :\"([^\"]*)\"$")
    public void userClickOnCareplanAndClickAddNewAlerRuleSetMessage(String arg0) throws Throwable {
      element=driver.findElement(By.id(arg0));
      element.sendKeys("blakaj123");
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));

    }

    @And("^User click on Care plan and click Add new Alert Rule click button Add new Aler rule$")
    public void userClickOnCareplanAndClickAddNewAlerRuleClickButtonAddNewAlerRule() {
        element= driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button"));
        element.click();
    }

    @And("^User click on Device :\"([^\"]*)\"$")
    public void userClickOnDevice(String arg0) throws Throwable {
       element = driver.findElement(By.cssSelector("a[href='"+arg0+"']"));
       element.click();
       Assert.assertEquals(driver.getCurrentUrl(),"https://nj-staging.vianovahealth.com/patients/342/device_summaries");
    }

    @And("^User clicn on device Add Device :\"([^\"]*)\"$")
    public void userClicnOnDeviceAddDevice(String arg0) throws Throwable {
        element = driver.findElement(By.id(arg0));
        element.click();
//        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(element));
    }

    @And("^User click on All Alerts :\"([^\"]*)\"$")
    public void userClickOnAllAlerts(String arg0) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='"+arg0+"']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(),"https://nj-staging.vianovahealth.com/patients/342/alerts");
    }

    @And("^User click on all Alerts and Done$")
    public void userClickOnAllAlertsAndDone() {
        element = driver.findElement(By.className("dismiss-new"));
        element.click();
        new WebDriverWait(driver,10).until(ExpectedConditions.elementToBeClickable(By.className("dismiss-new")));
    }

    @And("^User click and search Encounter :\"([^\"]*)\"$")
    public void userClickAndSearchEncounter(String arg0) throws Throwable {
        element = driver.findElement(By.cssSelector("a[href='"+arg0+"']"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(),"https://nj-staging.vianovahealth.com/patients/342/encounters");

    }

    @And("^User click and Search Encounter Add Encounter$")
    public void userClickAndSearchEndounterAddEcounter() throws Throwable {
        element = driver.findElement(By.cssSelector("#encounter > div.content-background > div.container.m-t-30.m-b-30 > div > ul > li:nth-child(2) > button"));
        element.click();
        Thread.sleep(4000);
    }

    @And("^User click and search Encounter fill Encounter Assign To$")
    public void userClickAndSearchEncounterFillEncounterAssignTo() {
        element = driver.findElement(By.cssSelector("#add-encounter-modal > div > div.row.m-t-30 > div:nth-child(1) > div > select > option:nth-child(2)"));
        element.click();
    }

    @And("^User click and search Encounter and select Resources$")
    public void userClickAndSearchEncounterAndSelectResources() {
        element = driver.findElement(By.cssSelector("#add-encounter-modal > div > div.row.m-t-30 > div:nth-child(2) > div > select > option:nth-child(3)"));
        element.click();
    }

    @And("^User click and search Encounter and select Minutes : \"([^\"]*)\"$")
    public void userClickAndSearchEncounterAndSelectMinutes(String value) throws Throwable {
        element = driver.findElement(By.cssSelector("input[name='"+value+"']"));
        element.sendKeys("32");
    }

    @And("^User click and search Encounter and select call type$")
    public void userClickAndSearchEncounterAndSelectCallType() {
        element = driver.findElement(By.cssSelector("#add-encounter-modal > div > div:nth-child(2) > div:nth-child(1) > div > select > option:nth-child(3)"));
        element.click();
    }

    @And("^User click and search Encounter and select outcomes$")
    public void userClickAndSearchEncounterAndSelectOutcomes() {
        element  = driver.findElement(By.cssSelector("#add-encounter-modal > div > div:nth-child(2) > div:nth-child(2) > div > select > option:nth-child(4)"));
        element.click();
    }

    @And("^User click and search Encounter and click Date$")
    public void userClickAndSearchEncounterAndClickDate(){
        element =driver.findElement(By.xpath("//*[@id=\"add-encounter-modal\"]/div/div[3]/div[1]/div/input"));
        element.sendKeys("12121998");

    }

    @And("^User click and search Encounter and select Time$")
    public void userClickAndSearchEncounterAndSelectTime()  {
        element= driver.findElement(By.xpath("//*[@id=\"add-encounter-modal\"]/div/div[3]/div[2]/div/input"));
        element.sendKeys("1203PM");

    }

    @And("^User click and search Encounter and write down notes$")
    public void userClickAndSearchEncounterAndWriteDownNotes() throws Throwable{
        element = driver.findElement(By.xpath("//*[@id=\"add-encounter-modal\"]/div/div[4]/div/div/textarea"));
        element.sendKeys("blakaj123123121312");

    }

    @And("^User click and search Encounter and set Date next Schedle :\"([^\"]*)\"$")
    public void userClickAndSearchEncounterAndSetDateNextSchedle(String arg0) throws Throwable {
        element = driver.findElement(By.cssSelector("input[name='"+arg0+"']"));
        element.sendKeys("12121997");

    }

    @And("^User click and search Encounter and select Additional Information :\"([^\"]*)\"$")
    public void userClickAndSearchEncounterAndSelectAdditionalInformation(String args) throws Throwable {
        element= driver.findElement(By.xpath("//*[@id=\"add-encounter-modal\"]/div/div[4]/div/div/textarea"));
        element.sendKeys("Random  Text");
    }

    @And("^User click Save on add Encounter$")
    public void userClickSaveOnAddEncouter()throws  Throwable  {
        element = driver.findElement(By.xpath("//*[@id=\"add-encounter-modal\"]/div/div[7]/div/div[1]/button"));
        element.click();

    }

    @And("^User click and search Encounter Add Action button$")
    public void userClicnAndSerachEncounterAddActionButton() throws  Throwable{
        element =driver.findElement(By.xpath("//*[@id=\"encounter\"]/div[3]/div[1]/div/ul/li[3]/button"));
        element.click();
        Thread.sleep(3999);
    }

    @And("^User click and search Encounter add action took medication$")
    public void userClicnAndSearchEncounterAddactionTookmedication() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[2]/div[2]/div/select"));
        element.click();
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[2]/div[2]/div/select/option[2]"));
        element.click();
    }

    @And("^User click Add Action encounter checked Blood Sugar :\"([^\"]*)\"$")
    public void userClickAddActionEncounterCheckedBloodSugar(String arg0) throws Throwable {
            element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[3]/div[2]/input"));
            element.sendKeys("8");

        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[3]/div[3]/input"));
        element.sendKeys("12");


    }

    @And("^User click Add Action encounter checked Blood Sugar information$")
    public void userClickAddActionEncounterCheckedBloodSugarInformation() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[3]/div[4]/input"));
        element.sendKeys("blakaj123");
    }

    @And("^User click Add Action encounter checked Weight$")
    public void userClickAddActionEncounterCheckedWeight() {

        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[4]/div[2]/input"));
        element.sendKeys("2");



        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[4]/div[3]/input"));
        element.sendKeys("12");
    }

    @And("^User click Add Action encounter checked Weight Information$")
    public void userClickAddActionEncounterCheckedWeightInformation() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[4]/div[4]/input"));
        element.sendKeys("blakaj123");
    }

    @And("^User click Add Action encounter checked Blood Pressure$")
    public void userClickAddActionEncounterCheckedBloodPressure() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[5]/div[2]/input"));
        element.sendKeys("3");

        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[5]/div[3]/input"));
        element.sendKeys("3");
    }

    @And("^User click Add Action encounter checked Blood Pressure Information$")
    public void userClickAddActionEncounterCheckedBloodPressureInformation() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[5]/div[4]/input"));
        element.sendKeys("Bleon Hasani 123");
    }

    @And("^User click Add Action encounter checked feet for redness$")
    public void userClickAddActionEncounterCheckedFeetForRednes() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[6]/div[3]/div/select"));
        element.click();

        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[6]/div[3]/div/select/option[2]"));
        element.click();

    }

    @And("^User click on Additional information$")
    public void userClicnOnAdditonInformation() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[7]/div/div/textarea"));
        element.sendKeys("Blakaj213");
    }

    @And("^Check for Signs$")
    public void checkForSigns() throws Throwable{
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[8]/div/div/div[1]/div/label"));
        element.click();
        element =driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[8]/div/div/div[2]/div/label"));
        element.click();


        //minuatat
        element =driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[1]/div[2]/div/input"));
        element.sendKeys("12");

        element =driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[2]/div[4]/input"));
        element.sendKeys("Endrit");

    }

    @And("^Save Button$")
    public void saveButon() {
        element = driver.findElement(By.xpath("//*[@id=\"daily-action-plan\"]/div/div[9]/div/div[1]/button"));
        element.click();
        Assert.assertEquals(driver.getCurrentUrl(),"https://nj-staging.vianovahealth.com/patients/342/encounters");
    }
}












