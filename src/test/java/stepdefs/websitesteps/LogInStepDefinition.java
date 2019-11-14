package stepdefs.websitesteps;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.ca.I;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import gherkin.lexer.Fa;
import gherkin.lexer.Tr;
import javafx.util.Pair;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import sun.jvm.hotspot.debugger.Page;

import java.util.List;
import java.util.concurrent.TimeUnit;


public class LogInStepDefinition {
    private WebDriver driver;
    private WebElement element;
    private WebDriverWait wait;

    @Given("^Go to website$")
    public void goToWebsite() {
        System.setProperty("webdriver.chrome.driver", "src/main/resources/chromedriver");
        driver = new ChromeDriver();
        driver.manage().window().fullscreen();
        driver.navigate().to("https://dev.vianovahealth.com/admin");
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
    }

    @After
    public void tearDown() {
        if (driver != null)
            driver.quit();
    }

    @When("^User types email : \"([^\"]*)\"$")
    public void userTypesWrongEmail(String email) {
        WebElement element = driver.findElement(By.name("email"));
        element.sendKeys(email);
        new WebDriverWait(driver, 20).until(ExpectedConditions.textToBePresentInElementValue(element, email));
        Assert.assertEquals(element.getAttribute("value"), email);
    }


    @And("^User types password : \"([^\"]*)\"$")
    public void userTypesCorrectPassword(String password) {
        WebElement element = driver.findElement(By.name("password"));
        element.sendKeys(password);
        new WebDriverWait(driver, 20).until(ExpectedConditions.textToBePresentInElementValue(element, password));
        Assert.assertEquals(element.getAttribute("value"), password);
    }

    @And("^Click Log In button$")
    public void clickLogInButton() throws InterruptedException {
        WebElement element = driver.findElement(By.className("btn-blue"));
        element.click();
        Thread.sleep(5000);
    }


    @Then("^The message \"([^\"]*)\" should be shown$")
    public void theShouldBeShown(String message) throws InterruptedException {
        WebElement element = driver.findElement(By.className("invalid-feedback"));
        Assert.assertEquals(message, element.getText());

    }

    //Updated
    @When("^User click on DropDown$")
    public void userClickOnDropDown() {
        element = driver.findElement(By.id("organization_id"));
        element.click();
        //       Assert.assertEquals(element.getAttribute(driver.getCurrentUrl()),element.getAttribute(driver.getCurrentUrl()));
    }


    @And("^Select End User$")
    public void selectEndUser() {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(1) > a"));
        element.click();
//        Assert.assertEquals(element.getAttribute(driver.getCurrentUrl()),element.getAttribute(driver.getCurrentUrl()));

    }

    @And("^Add New User Button$")
    public void addNewUserButton() throws InterruptedException {
        element = driver.findElement(By.className("create-btn"));
        element.click();
        Thread.sleep(2000);
        String s = "https://dev.vianovahealth.com/admin/users/create";
        Assert.assertEquals(s, "https://dev.vianovahealth.com/admin/users/create");
    }

    @And("^Add new Name :")
    public void addNewName() throws InterruptedException {
        element = driver.findElement(By.name("first_name"));
        element.sendKeys("Kastriot");
        Thread.sleep(2000);
    }

    @And("^Add new LastName :")
    public void addNewLastName() throws Throwable {

        element = driver.findElement(By.cssSelector("#last_name"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Blakaj");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);

    }


    @And("^Add FirstAddress$")
    public void addFirstAddress() {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(2) > div:nth-child(1) > div > input"));
        element.sendKeys("First-Address");
        Assert.assertTrue(element.isDisplayed());
    }

    @And("^Add SecondAddress$")
    public void addSecondAddress() {
        element = driver.findElement(By.xpath("//*[@id=\"patient-care\"]/div/div/div[2]/form/div/div[2]/div[2]/div/input"));
        element.sendKeys("Second-Address");
        Assert.assertTrue(element.isDisplayed());
    }

    @And("^Add APT/SUITE$")
    public void addAPTSUITE() {
        element = driver.findElement(By.name("apt_suite"));
        element.sendKeys("FistSuite");
        Assert.assertTrue(element.isDisplayed());
    }

    @And("^Add City$")
    public void addCity() {
        element = driver.findElement(By.name("city"));
        element.sendKeys("Biggest City");
        Assert.assertTrue(element.isDisplayed());
    }

    @And("^Select State$")
    public void selectState() throws InterruptedException {
        element = driver.findElement(By.name("state"));
        element.click();
        Thread.sleep(200);
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(3) > div:nth-child(2) > div > select > option:nth-child(3)"));
        element.click();
        Assert.assertTrue(element.isDisplayed());
    }


    @And("^PutZipCode$")
    public void putzipcode() {
        element = driver.findElement(By.name("zip_code"));
        element.sendKeys("1233");
    }

    @And("^Put Cell/Home/Work Phone$")
    public void putCellHomeWorkPhone() {
        element = driver.findElement(By.id("cell_phone"));
        element.sendKeys("(234) 234-2342");
        Assert.assertTrue(element.isDisplayed());
        element = driver.findElement(By.id("home_phone"));
        element.sendKeys("(234) 234-2342");
        Assert.assertTrue(element.isDisplayed());
        element = driver.findElement(By.id("work_phone"));
        element.sendKeys("(234) 234-2342");
        Assert.assertTrue(element.isDisplayed());

    }

    @And("^Put valid Email$")
    public void putValidEmail() throws InterruptedException {
        element = driver.findElement(By.name("email"));
        if (element.isDisplayed() && element.isEnabled()) {
                        element.sendKeys("kast32rflakaaj@hotmail.com");                //Email Unique
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(1000);
    }

    @And("^Set a password for User$")
    public void setAPasswordForUser() throws InterruptedException {
        element = driver.findElement(By.name("password"));
        element.sendKeys("Loti@1997");
        Assert.assertTrue(element.isDisplayed());
        Thread.sleep(3000);

    }

    @And("^Set Location$")
    public void setLocation() throws InterruptedException {

        element = driver.findElement(By.name("location"));
        element.sendKeys("First Location-1");
        Assert.assertTrue(element.isDisplayed());
        Thread.sleep(1000);
    }

    @And("^Set Client  : \"([^\"]*)\"$")
    public void setClient(String arg0) throws Throwable {
        element = driver.findElement(By.name(arg0));
        element.sendKeys("First Client ");
        Assert.assertTrue(element.isDisplayed());
        Thread.sleep(2000);
    }

    @And("^Set Speciality Training$")
    public void setSpecialityTraining() throws InterruptedException {

        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(6) > div:nth-child(3) > div > select > option:nth-child(3)"));
        element.click();
        Assert.assertTrue(element.isDisplayed());
        Thread.sleep(2000);
    }


    @And("^Set Role$")
    public void setRole() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#roles > option:nth-child(5)"));
        element.click();
        Assert.assertTrue(element.isDisplayed());
        Thread.sleep(2000);
    }

    @And("^Click Save : \"([^\"]*)\"$")
    public void clickSave(String arg0) throws Throwable {
        element = driver.findElement(By.className(arg0));
        element.submit();

        Thread.sleep(1000);
    }
    //Specialist

    @When("^User Select Specialist$")
    public void userSelectSpecialist() throws Exception {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(2)"));
        element.click();

        Thread.sleep(1000);
        Assert.assertTrue(true);
    }

    @And("^User selct Specialist$")
    public void userSelctSpecialist() throws  InterruptedException{
       element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(2) > a"));
       if(element.isDisplayed() && element.isEnabled()){
           element.click();
       }
       else {
           Assert.assertFalse(false);
       }


    }

    @And("^User tries to create another specialist$")
    public void userTriesToCreateAnotherSpecialist() throws InterruptedException {
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

        element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.row > div > a"));
        if(element.isDisplayed() && element.isEnabled()){
            element.click();
        }
        else {
            Assert.assertFalse(false);
        }

        Thread.sleep(3000);


    }

    @And("^User Put in the Namee$")
    public void userPutInTheName() {
      //  driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        element =driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div.right-content > div:nth-child(1) > div:nth-child(1) > div > input"));
        if(element.isEnabled() &&  element.isDisplayed()){
            element.sendKeys("Kastriot");
            Assert.assertTrue(element.isDisplayed());
        }
        else {
            Assert.assertFalse(false);
        }


    }


    @And("^User types the LastName$")
    public void userTypesTheLastName() throws InterruptedException{
        List<WebElement> list= driver.findElements(By.className("form-control"));

        if(element.isDisplayed() && element.isEnabled()){
            list.get(2).sendKeys("Blakaj");
        }else {

            Assert.assertFalse(false);
        }


    }

    @And("^User select a speciality$")
    public void userSelectASpeciality() throws InterruptedException {
        element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div.right-content > div:nth-child(1) > div:nth-child(3) > div > select > option:nth-child(4)"));

        if(element.isDisplayed() && element.isEnabled()){
            element.click();
        }else {
            Assert.assertFalse(false);
        }

    }

    @And("^User types in the cell Phone Number$")
    public void userTypesInTheCellPhoneNumber()throws Exception {
        List<WebElement> list= driver.findElements(By.className("form-control"));

        if(element.isDisplayed() && element.isEnabled()){
            list.get(4).sendKeys("(234) 646-4645");
            list.get(5).sendKeys("(234) 646-4215");
            list.get(6).sendKeys("(234) 636-4645");
        }else {

            Assert.assertFalse(false);
        }
        Thread.sleep(3333);
    }


    @And("^User select Preferred Phone Number$")
    public void userSelectPreferredPhoneNumber() {
        element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div.right-content > div:nth-child(2) > div.col-md-3.m-t-20 > div > select > option:nth-child(2)"));
        if(element.isEnabled()&& element.isDisplayed()){
            element.click();
            Assert.assertTrue(element.isDisplayed()&& element.isEnabled());
        }
        else{
            Assert.assertFalse(false);
        }

    }

    @And("^User types in Extension$")
    public void userTypesInExtension() throws InterruptedException{
        List<WebElement> list= driver.findElements(By.className("form-control"));

        if(element.isDisplayed() && element.isEnabled()){
            list.get(8).sendKeys("Extension-Kastriot");
            Assert.assertTrue(element.isDisplayed()&& element.isEnabled());
        }else {

            Assert.assertFalse(false);
        }
        Thread.sleep(3333);

    }

    @And("^User types on the Email$")
    public void userTypesOnTheEmail() {
        List<WebElement> list= driver.findElements(By.className("form-control"));

        if(element.isDisplayed() && element.isEnabled()){
            list.get(9).sendKeys("lotisdsdfj1323s2a3@gmail.com");                       //Email unique
            Assert.assertTrue(element.isDisplayed()&& element.isEnabled());

        }else {

            Assert.assertFalse(false);
        }//Unique Email

    }

    @And("^User check the checkBox$")
    public void userCheckTheCheckBox() {
        element=driver.findElement(By.className("form-check-input"));
        if(element.isDisplayed()&& element.isEnabled()){
            element.click();
            Assert.assertTrue(element.isDisplayed()&& element.isEnabled());

        }else {
            Assert.assertFalse(false);
        }


    }

    @And("^User Submit the Create Button$")
    public void userSubmitTheCreateButton() throws InterruptedException {
        element=driver.findElement(By.className("btn-blue"));
         while (element.isEnabled()&& element.isDisplayed()){
             element.click();

         }

        driver.navigate().to("https://dev.vianovahealth.com/admin/users");
    }
    // Provider a

    @And("^Click on Provider$")
    public void clickOnProvider() {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(3) > a"));
        if(element.isEnabled()&& element.isDisplayed()){
            element.click();
          //  Assert.assertTrue(element.isDisplayed()&& element.isEnabled());
        }
        else {
            Assert.assertFalse(false);
        }

    }

    @And("^Click Add Provider$")
    public void clickAddProvider() throws InterruptedException {
        element=driver.findElement(By.className("create-btn"));
        if(element.isEnabled()&& element.isDisplayed()
        ){
            element.click();
        }else {
            Assert.assertFalse(false);
        }

    }

    @And("^User put in the Fist Name$")
    public void userPutInTheFistName() {
       element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(1) > div:nth-child(1) > div > input"));
       if(element.isDisplayed()&& element.isEnabled()){
           element.sendKeys("Kastriot");
       }else {
           Assert.assertFalse(false);
       }


    }

    @And("^User put the LastName$")
    public void userPutTheLastName() {
        element=driver.findElement(By.cssSelector("#last_name"));
        if(element.isDisplayed()&& element.isEnabled()){
            element.sendKeys("Kastriot");
        }else {
            Assert.assertFalse(false);
        }

    }

    @And("^User Put in the Email$")
    public void userPutInTheEmail() {
        element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(1) > div:nth-child(3) > div > input"));
        if(element.isDisplayed()&& element.isEnabled()){
            element.sendKeys("434wf@gmail.comm");                               //Email unique
        }else {
            Assert.assertFalse(false);
        }

    }

    @And("^User put in the Cell_Phone$")
    public void userPutInTheCell_Phone() throws InterruptedException{

        List<WebElement> list= driver.findElements(By.className("form-control"));

        if(element.isDisplayed() && element.isEnabled()){
            list.get(3).sendKeys("(928) 410-9192");
            list.get(4).sendKeys("(928) 410-9444");
            list.get(5).sendKeys("(928) 410-1234");
            list.get(6).sendKeys("(928) 410-1234");

        }else {

            Assert.assertFalse(false);
        }


    }
    @And("^User click on the PreferedNumber$")
    public void userClickOnThePreferedNumber() {
        element=driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(2) > div.col-md-3.m-t-20 > div > select > option:nth-child(2)"));
        element.click();
    }
    @And("^User put in the FAX number$")
    public void userPutInTheFAXNumber() throws InterruptedException{
        element=driver.findElement(By.cssSelector("#fax_number"));
        element.sendKeys("(234) 242-3423");
        Thread.sleep(3444);
    }


    @And("^User Submits the Save Button$")
    public void userSubmitsTheSaveButton() {


    }

    @And("^User click on the Roles$")
    public void userClickOnTheRoles() {

    }

    @And("^User trie to Create another ROLE$")
    public void userTrieToCreateAnotherROLE() {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.row > div > a"));
        if (element.isDisplayed() && element.isEnabled()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User set a Name for the Name$")
    public void userSetANameForTheName() {
        element = driver.findElement(By.name("name"));
        if (element.isEnabled() && element.isDisplayed()) {

            element.sendKeys("KastriotRole");
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User set the permissions for the user$")
    public void userSetThePermissionsForTheUser() throws InterruptedException {
//        element = driver.findElement(By.name("permissions[]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//        Thread.sleep(3000);
//        //add users
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(2) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//        //edit users
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(3) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//        //delete users
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(4) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//
//
//        //view Roles
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(5) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//
//
//        //add Roles
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(6) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//
//        //edit Roles
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(7) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());
//
//
//        //delete Roles
//        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > div > div > div > form > div > div:nth-child(2) > div:nth-child(8) > div > label > input[type=checkbox]"));
//        if (element.isDisplayed() && element.isEnabled()) {
//            element.click();
//        }
//        Assert.assertEquals(element.isDisplayed(), element.isEnabled());

    }

    @And("^User set the premissions for the last row$")
    public void userSetThePremissionsForTheLastRow() throws InterruptedException {

        List<WebElement> wb = driver.findElements(By.name("permissions[]"));  //Check for all Button that have the same name with the others Items !
        for (WebElement we : wb) {
            if (we.isDisplayed() && we.isEnabled()) {
                we.click();
                //Loop goes on till the end
            }
        }
        Thread.sleep(2200);
    }

    @And("^User Click Save Button$")
    public void userClickSaveButton() {
        element = driver.findElement(By.className("btn-blue"));

        if (element.isDisplayed() && element.isEnabled()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User click on the Onboarded Drugs$")
    public void userClickOnTheOnboardedDrugs() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(5) > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on Add Onboard Drugs$")
    public void userClickOnAddOnboardDrugs() throws InterruptedException {
        element = driver.findElement(By.xpath("//*[@id=\"patient-care\"]/div/div/div[2]/div[1]/div/a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User set the name of the Drug$")
    public void userSetTheNameOfTheDrug() {
        element = driver.findElement(By.name("name"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Tableta1");
        } else {
            Assert.assertFalse(false);
        }

    }

    @And("^User click the Save Button$")
    public void userClickTheSaveButton() throws InterruptedException {
        element = driver.findElement(By.className("btn-blue"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Tableta1");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);

    }

    @And("^User click on Disease$")
    public void userClickOnDisease() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(6) > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on Add Disease$")
    public void userClickOnAddDisease() throws InterruptedException {

        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.row > div > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on Add new Alert$")
    public void userClickOnAddNewAlert() {
        element = driver.findElement(By.cssSelector("#addAlert"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User sents Disease Name$")
    public void userSentsDiseaseName() throws InterruptedException {
        element = driver.findElement(By.name("name"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Kastriot-Disease");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(4000);
    }

    @And("^User puts is Ancronym$")
    public void userPutsIsAncronym() throws InterruptedException {
        element = driver.findElement(By.name("acronym"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("KT");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(4000);
    }


    @And("^User add AlertList-Name$")
    public void userAddAlertListName() throws InterruptedException {
        element = driver.findElement(By.className("form-control"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Alert-1");
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User add AlertList-Status$")
    public void userAddAlertListStatus() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#collapseExample > div:nth-child(1) > div:nth-child(2) > div > select > option:nth-child(3)  "));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User add AlertList-Vital$")
    public void userAddAlertListVital() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#collapseExample > div:nth-child(2) > div > div > select > option:nth-child(3)"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User add AlertList-FROM-TO$")
    public void userAddAlertListFROMTO() throws InterruptedException {
        List<WebElement> wb = driver.findElements(By.className("form-control"));  //Check for all Button that have the same name with the others Items !
        for (WebElement we : wb) {
            if (we.isDisplayed() && we.isEnabled()) {
                we.sendKeys("100");
                we.sendKeys("200");
                //Loop goes on till the end
            }
        }
        Thread.sleep(2200);
    }


    @And("^User click on Disease-Plan$")
    public void userClickOnDiseasePlan() {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(7) > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
    }

    @And("^User click on \\+Add Disease Plans$")
    public void userClickOnAddDiseasePlans() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.row > div > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on KastriotDisease$")
    public void userClickOnKastriotDisease() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > form > div > div > div:nth-child(1) > div > div > select > option:nth-child(8)"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on \\+Add New Disease Plan$")
    public void userClickOnAddNewDiseasePlan() throws InterruptedException {

        element = driver.findElement(By.className("add-new-btn"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on Task and Vitals$")
    public void userClickOnTaskAndVitals() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#collapseExample > div:nth-child(1) > div:nth-child(1) > div > select > option:nth-child(3)"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);

    }

    @And("^User click on Frequency$")
    public void userClickOnFrequency() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#collapseExample > div:nth-child(1) > div:nth-child(2) > div > select > option:nth-child(4)"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User selects time of the day$")
    public void userSelectsTimeOfTheDay() throws InterruptedException {


        List<WebElement> wb = driver.findElements(By.className("right-space"));  //Check for all Button that have the same name with the others Items !
        for (WebElement we : wb) {
            if (we.isDisplayed() && we.isEnabled()) {
                we.click();
                //Loop goes on till the end
            }
        }
        Thread.sleep(2200);

    }

    @And("^User click on Add Disease Plan$")
    public void userClickOnAddDiseasePlan() throws InterruptedException {
        element = driver.findElement(By.className("btn-blue"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }


    @And("^User submit the save Button$")
    public void userSubmitTheSaveButton() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div > form > div > div > div.row.justify-content-center.m-t-50 > div:nth-child(1) > button"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @Then("^Delete the Disease Plan we have added$")
    public void deleteTheDiseasePlanWeHaveAdded() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.patient-table.right-content > div.row > div > table > tbody > tr:nth-child(3) > td:nth-child(4) > form > button"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User click on Organisation$")
    public void userClickOnOrganisation() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-2.col-sm-12.col-xs-12 > div > div > div > ul > li:nth-child(8) > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User clicn on \\+Add Organisation$")
    public void userClicnOnAddOrganisation() throws InterruptedException {

        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.row > div > a"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.click();
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User Types in the Name$")
    public void userTypesInTheName() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > form > div > div:nth-child(1) > div > div > input"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Kastriot");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User Types in the Contact Name$")
    public void userTypesInTheContactName() throws InterruptedException {
        element = driver.findElement(By.name("contact_name"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("Kastriot Contact");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User Types in the Contact Contact Phone Number$")
    public void userTypesInTheContactContactPhoneNumber() throws InterruptedException {
        element = driver.findElement(By.name("contact_phone_number"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("+38349525171");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User Types in the Call Contact Fax Number$")
    public void userTypesInTheCallContactFaxNumber() throws InterruptedException {
        element = driver.findElement(By.name("call_center_fax_number"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("(234) 234-2342");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @And("^User Submit the Save Buttonn$")
    public void userSubmitTheSaveButtonn() throws InterruptedException {
        element = driver.findElement(By.className("btn-blue"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("(234) 234-2342");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }

    @Then("^Delete the Organisation we have added$")
    public void deleteTheOrganisationWeHaveAdded() throws InterruptedException {
        element = driver.findElement(By.cssSelector("#patient-care > div > div > div.col-md-10.col-sm-12.col-xs-12 > div.patient-table.right-content > div.row > div > table > tbody > tr:nth-child(8) > td:nth-child(5) > form > button"));
        if (element.isEnabled() && element.isDisplayed()) {
            element.sendKeys("(234) 234-2342");
        } else {
            Assert.assertFalse(false);
        }
        Thread.sleep(2000);
    }



}



