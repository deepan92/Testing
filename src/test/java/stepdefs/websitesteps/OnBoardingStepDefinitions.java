package stepdefs.websitesteps;

import com.sun.org.glassfish.gmbal.DescriptorFields;
import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.cs.A;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import sun.java2d.pipe.AAShapePipe;

public class OnBoardingStepDefinitions {

    private WebDriver driver;

    @Given("^Go to website and log in$")
    public void goToWebsiteAndLogIn() {
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

    @And("^Filter by \"([^\"]*)\"$")
    public void filterBy(String value) throws Exception {
        Thread.sleep(3000);
        WebElement element = driver.findElement(By.cssSelector("select[name='status'] > option[value=" + value + "]"));
        element.click();
    }

    @And("^User click On Boarding bttn$")
    public void userClickOnBoardingBttn() {
        WebElement element = driver.findElement(By.xpath("//*[@id=\"navbarVianova\"]/ul[1]/li[1]/a"));
        element.click();
    }

    @And("^User types first_name\"([^\"]*)\"$")
    public void UserTypesFirst_name(String first_name) throws Exception {
        Thread.sleep(3000);
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys(first_name);
        Assert.assertEquals(element.getAttribute("value"), first_name);
    }


    @And("^User types last_name\"([^\"]*)\"$")
    public void userTypesLast_name(String last_name) {
        WebElement element = driver.findElement(By.id("last_name"));
        element.sendKeys(last_name);
        Assert.assertEquals(element.getAttribute("value"), last_name);
//        new WebDriverWait(driver,10).until(ExpectedConditions.textToBePresentInElementLocated(By.id("last_name"),last_name));
    }

    @And("^User types date_of_birth \"([^\"]*)\"$")
    public void userTypesdate_of_birth(String date_of_birth) {
        WebElement element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys(date_of_birth);
//       Assert.assertEquals(element.getAttribute("value"), date_of_birth);
    }

    @And("^select gender\"([^\"]*)\"$")
    public void selectGender(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[gender]'] > option[value=" + value + "]"));
        element.click();
        element = driver.findElement(By.name("patient[gender]"));
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^select material status \"([^\"]*)\"$")
    public void selectMaterialStatus(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[martial_status]']> option[value=" + value + "]"));
        element.click();
        element = driver.findElement(By.name("patient[martial_status]"));
        Assert.assertEquals(element.getAttribute("value"), value);
    }


    @And("^fill wrong middle initial \"([^\"]*)\"$")
    public void fillWrongMiddleInitial(String middle_initial) {
        WebElement element = driver.findElement(By.name("patient[middle_name]"));
        element.sendKeys(middle_initial);
        Assert.assertEquals(element.getAttribute("value"), middle_initial);
    }


    @And("^Choose Disease \"([^\"]*)\"$")
    public void chooseDisease(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[disease_id]'] > option[value='" + value + "']"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User types cell_phone \"([^\"]*)\"$")
    public void userTypesCellPhone(String cell_phone) {
        WebElement element = driver.findElement(By.id("cell_phone"));
        element.sendKeys(cell_phone);
//        Assert.assertEquals(element.getAttribute("value"),cell_phone);
//        new WebDriverWait(driver,10).until(ExpectedConditions.textToBePresentInElementLocated(By.id("cell_phone"),cell_phone));


    }

    @And("^User types home_phone\"([^\"]*)\"$")
    public void userTypesHome_phone(String home_phone) {
        WebElement element = driver.findElement(By.id("home_phone"));
        element.sendKeys(home_phone);
//        new WebDriverWait(driver,10).until(ExpectedConditions.textToBePresentInElementLocated(By.id("home_phone"),home_phone));

    }

    @And("^User types work_phone\"([^\"]*)\"$")
    public void userTypesWork_phone(String work_phone) {
        WebElement element = driver.findElement(By.id("work_phone"));
        element.sendKeys(work_phone);
    }


    @And("^fill Email \"([^\"]*)\"$")
    public void fillEmail(String Email) {
        WebElement element = driver.findElement(By.name("patient[email]"));
        element.sendKeys(Email);
        Assert.assertEquals(element.getAttribute("value"), Email);

    }

    @And("^select Preferred Phone Number \"([^\"]*)\"$")
    public void selectPreferredPhoneNumber(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[preferred_contact]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);


    }

    @And("^fill correct Address_Line\"([^\"]*)\"$")
    public void fillCorrectAddressLine(String Addres_Line1) {
        WebElement element = driver.findElement(By.name("patient[address_line_1]"));
        element.sendKeys(Addres_Line1);
        Assert.assertEquals(element.getAttribute("value"), Addres_Line1);

    }

    @And("^fill second Address_line\"([^\"]*)\"$")
    public void fillSecondAddress_line(String Addres_Line2) {
        WebElement element = driver.findElement(By.name("patient[address_line_2]"));
        element.sendKeys(Addres_Line2);
        Assert.assertEquals(element.getAttribute("value"), Addres_Line2);
    }

    @And("^fill city \"([^\"]*)\"$")
    public void fillCity(String city) {
        WebElement element = driver.findElement(By.id("city"));
        element.sendKeys(city);
        Assert.assertEquals(element.getAttribute("value"), city);
    }

    @And("^User select State\"([^\"]*)\"$")
    public void userSelectState(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[state]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);

    }

    @And("^User types Zip Code\"([^\"]*)\"$")
    public void userTypesZipCode(String zip_code) {
        WebElement element = driver.findElement(By.id("zip_code"));
        element.sendKeys(zip_code);
        Assert.assertEquals(element.getAttribute("value"), zip_code);
    }


    @And("^User types Provider \"([^\"]*)\"$")
    public void userTypesProvider(String Provider) {
        WebElement element = driver.findElement(By.name("patient[care_provider]"));
        element.sendKeys(Provider);
        Assert.assertEquals(element.getAttribute("value"), Provider);
    }

    @And("^User types Care_Provider_phone \"([^\"]*)\"$")
    public void userTypesCareProviderPhone(String Care_Provider_phone) {
        WebElement element = driver.findElement(By.name("patient[care_provider_phone]"));
        element.sendKeys(Care_Provider_phone);
//        Assert.assertEquals(element.getAttribute("value"), Care_Provider_phone);
    }

    @And("^User select Language$")
    public void userSelectLanguage() {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='spanish']"));
        element.click();
    }

    @And("^User select Need Translator$")
    public void userSelectNeedTranslator() {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='need_translator_yes']"));
        element.click();
    }

    @And("^User types First_Name\"([^\"]*)\"$")
    public void userTypesFirstName(String First_Name) {
        WebElement element = driver.findElement(By.name("careGiver[first_name]"));
        element.sendKeys(First_Name);
        Assert.assertEquals(element.getAttribute("value"), First_Name);
    }

    @And("^User types Care_Last_Name\"([^\"]*)\"$")
    public void userTypesCare_Last_Name(String Care_Last_Name) {
        WebElement element = driver.findElement(By.name("careGiver[last_name]"));
        element.sendKeys(Care_Last_Name);
        Assert.assertEquals(element.getAttribute("value"), Care_Last_Name);
    }

    @And("^User select Relationship\"([^\"]*)\"$")
    public void userSelectRelationship(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='careGiver[relationship]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User types Care_Giver_Cell_Phone\"([^\"]*)\"$")
    public void userTypesCareGiverCellPhone(String Care_Giver_Cell_Phone) {
        WebElement element = driver.findElement(By.id("cell_phone"));
        element.sendKeys(Care_Giver_Cell_Phone);
    }

    @And("^User types Care_Giver_Home_Phone\"([^\"]*)\"$")
    public void userTypesCare_Giver_Home_Phone(String Care_Giver_Home_Phone) {
        WebElement element = driver.findElement(By.id("cell_phone"));
        element.sendKeys(Care_Giver_Home_Phone);
    }

    @And("^User types Care_Giver_Work_Phone\"([^\"]*)\"$")
    public void userTypesCare_Giver_Work_Phone(String Care_Giver_Work_Phone) {
        WebElement element = driver.findElement(By.id("cell_phone"));
        element.sendKeys(Care_Giver_Work_Phone);
    }


    @And("^User types Care_Giver_Preferred Phone Number\"([^\"]*)\"$")
    public void userTypesCare_Giver_PreferredPhoneNumber(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='careGiver[preferred_contact]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User select Opt to Send Text Message$")
    public void userSelectOptToSendTextMessage() {
        WebElement element = driver.findElement(By.id("send_text_message"));
        element.click();
    }

    @And("^User select Care_Giver_Information_Language$")
    public void userSelectCare_Giver_Information_Language() {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='careGiver_language_spanish']"));
        element.click();
    }

    @And("^User select Also Emergency Contact$")
    public void userSelectAlsoEmergencyContact() {
        WebElement element = driver.findElement(By.id("also_emergency_contact"));
        element.click();
    }

    @And("^User select Emergency_Contact_Information_First_Name\"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_First_Name(String Emergency_Contact_Information_First_Name) {
        WebElement element = driver.findElement(By.name("emergencyContact[first_name]"));
        element.sendKeys(Emergency_Contact_Information_First_Name);
        Assert.assertEquals(element.getAttribute("value"), Emergency_Contact_Information_First_Name);
    }

    @And("^User select Emergency_Contact_Information_Last_Name\"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_Last_Name(String Emergency_Contact_Information_Last_Name) {
        WebElement element = driver.findElement(By.name("emergencyContact[last_name]"));
        element.sendKeys(Emergency_Contact_Information_Last_Name);
        Assert.assertEquals(element.getAttribute("value"), Emergency_Contact_Information_Last_Name);
    }

    @And("^User select Emergency_Contact_Information_Middle_Initial\"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_Middle_Initial(String Emergency_Contact_Information_Middle_Initial) {
        WebElement element = driver.findElement(By.name("emergencyContact[middle_name]"));
        element.sendKeys(Emergency_Contact_Information_Middle_Initial);
        Assert.assertEquals(element.getAttribute("value"), Emergency_Contact_Information_Middle_Initial);
    }

    @And("^User select Emergency_Contact_Information_Relationship \"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_Relationship(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='emergencyContact[relationship]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User select Emergency_Contact_Information_Cell_Phone \"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_CellPhone(String Emergency_Contact_Information_Cell_Phone) {
        WebElement element = driver.findElement(By.id("cell_phone"));
        element.sendKeys(Emergency_Contact_Information_Cell_Phone);

    }

    @And("^User select Emergency_Contact_Information_Home_Phone \"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_Home_Phone(String Emergency_Contact_Information_Home_Phone) {
        WebElement element = driver.findElement(By.id("home_phone"));
        element.sendKeys(Emergency_Contact_Information_Home_Phone);
    }

    @And("^User select Emergency_Contact_Information_Work_Phone \"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_Work_Phone(String Emergency_Contact_Information_Work_Phone) {
        WebElement element = driver.findElement(By.id("work_phone"));
        element.sendKeys(Emergency_Contact_Information_Work_Phone);
    }

    //  TODO fix selector
    @And("^User select Emergency_Contact_Information_Preferred_Phone_Number \"([^\"]*)\"$")
    public void userSelectEmergency_Contact_Information_Preferred_Phone_Number(String value)  {
        WebElement element = driver.findElement(By.cssSelector("select[name='emergencyContact[preferred_contact]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User select Emergency_Contact_Information_Language$")
    public void userSelectEmergency_Contact_Information_Language() {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='emergencyContact_language_spanish']"));
        element.click();
    }

    @And("^User select New_Specialist Information_Specialist \"([^\"]*)\"$")
    public void userSelectNew_SpecialistInformation_Specialist(String value) {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^User select Specialist : \"([^\"]*)\"$")
    public void userSelectSpecialistInformation_Specialist_Speciality(String value) {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^Add New Specialist$")
    public void addNewSpecialist() {
        WebElement element = driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div.center > button"));
        element.click();

    }

    @And("^User types Specialist Information\"([^\"]*)\"$")
    public void userTypesSpecialistInformation(String value) {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^Delete Specialist\"([^\"]*)\"$")
    public void deleteSpecialist(String value) {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
//        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^User has to Add New Medication$")
    public void userHasToAddNewMedication() {
        WebElement element = driver.findElement(By.id("addMedication"));
        element.click();
//        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#collapseExample > div > form > div > div.col-md-8 > div > div"))));
    }

    @And("^User types Name")
    public void userTypesName()  {
        WebElement element = driver.findElement(By.cssSelector("input[placeholder='Search Medication Name']"));
        element.sendKeys("Lexapro");
    }

    @And("^User types Frequency\"([^\"]*)\"$")
    public void userTypesFrequency(String value) {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^User types Dosage$")
    public void userTypesDosage() {
        WebElement element = driver.findElement(By.cssSelector("input[placeholder='Example: 20mg']"));
        element.sendKeys("20mg");
    }

    @And("^User types PRN\"([^\"]*)\"$")
    public void userTypesPRN(String value) {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^User types Time of the day«")
    public void userTypesTimeOfTheDay()  {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='cb_afternoon']"));
        element.click();
    }

    @And("^User types Meal Association$")
    public void userTypesMealAssociation() {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='cb_with']"));
        element.click();
    }

    @And("^User types Rx Number$")
    public void userTypesRxNumber() {
        WebElement element = driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(5) > div > div > div > input"));
        element.sendKeys("12345678987654321");
    }


    @And("^User types Description\"([^\"]*)\"$")
    public void userTypesDescription(String Description) {
        WebElement element = driver.findElement(By.id("textarea-background"));
        element.sendKeys(Description);
        Assert.assertEquals(element.getAttribute("value"), Description);
    }

    @And("^User click Add Medication$")
    public void userClickAddMedication() {
        WebElement element1 = driver.findElement(By.cssSelector("#collapseExample > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button"));
        element1.click();
    }

    @And("^User Adds Patient's Disabilities_blind")
    public void userAddsPatientSDisabilities_blind(){
        WebElement element = driver.findElement(By.xpath("//*[@id=\"onBoardForm\"]/div[4]/div/div[2]/div/div[1]/label"));
        element.click();
    }

    @And("^User Adds Patient's Disabilities_Has_Service_Dog")
    public void userAddsPatientSDisabilities_Has_Service_Dog() {
        WebElement element = driver.findElement(By.cssSelector("label[for='cb_service-dog']"));
        element.click();
    }

    @And("^User Adds Patient's Disabilities_Amputations")
    public void userAddsPatientSDisabilities_Amputations() {
        WebElement element = driver.findElement(By.cssSelector("label[for='cb_amputations']"));
        element.click();
    }





    @And("^User click in Alert Rules bttn$")
    public void userClickInAlertRulesBttn() {
        WebElement element = driver.findElement(By.id("addAlert"));
        element.click();
    }

    @And("^User types_name$")
    public void userTypes_name() throws Exception {
        Thread.sleep(5000);
        WebElement element = driver.findElement(By.cssSelector("input[placeholder='Name']"));
        element.sendKeys("Bleron");
    }


    @And("^User types_status\"([^\"]*)\"$")
    public void userTypes_status(String value)  {
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
//        Assert.assertEquals(element.getAttribute("text"), value);
    }

    @And("^User types_Vital Type\"([^\"]*)\"$")
    public void userTypes_VitalType(String value){
        WebElement element = driver.findElement(By.xpath("//option[contains(text(),'" + value + "')]"));
        element.click();
    }

    @And("^User types_From")
    public void userTypes_From( ) {
        WebElement element = driver.findElement(By.cssSelector("input[placeholder='From']"));
        element.sendKeys("150");
    }

    @And("^User types_to$")
    public void userTypes_to() {
        WebElement element = driver.findElement(By.cssSelector("input[placeholder='To']"));
        element.sendKeys("80");
    }


    @And("^User types textarea_background\"([^\"]*)\"$")
    public void userTypes_DisplayMessage(String text_area_background)  {
        WebElement element = driver.findElement(By.cssSelector("textarea[placeholder='Display Message']"));
        element.sendKeys(text_area_background);
        Assert.assertEquals(element.getAttribute("value"), text_area_background);
    }

    @And("^User types save$")
    public void userTypesSave() {
        WebElement element=driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button"));
        element.click();
    }





    //=======================================EDIT PATIENT EDIT PATIENT EDIT PATIENT EDIT PATIENT
    @And("^User go to May hasani and click Edit btn$")
    public void userGoToMayHasaniAndClickEditBtn() {
        WebElement element = driver.findElement(By.cssSelector("#row-light > td:nth-child(6) > a > img"));
        element.click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.id("first_name"))));
    }

    @And("^User edit first_name\"([^\"]*)\"$")
    public void userEditFirst_name(String first_name) {
        WebElement element = driver.findElement(By.id("first_name"));
        element.clear();
        element.sendKeys(first_name);
        Assert.assertEquals(element.getAttribute("value"), first_name);

    }

    @And("^User edit last_name\"([^\"]*)\"$")
    public void userEditLast_name(String last_name) {
        WebElement element = driver.findElement(By.id("last_name"));
        element.clear();
        element.sendKeys(last_name);
        Assert.assertEquals(element.getAttribute("value"), last_name);
    }

    @And("^User edit middile_initial\"([^\"]*)\"$")
    public void userEditMiddile_initial(String middle_initial) {
        WebElement element = driver.findElement(By.name("patient[middle_name]"));
        element.clear();
        element.sendKeys(middle_initial);
        Assert.assertEquals(element.getAttribute("value"), middle_initial);
    }

    @And("^User edit selected status\"([^\"]*)\"$")
    public void userEditSelectedStatus(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[status]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User edit Date_of_Birth\"([^\"]*)\"$")
    public void userEditDateOfBirth(String Date_of_Birth) {
        WebElement element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys(Date_of_Birth);
//        Assert.assertEquals(element.getAttribute("value"),Date_of_Birth);
    }

    @And("^User edit Gender\"([^\"]*)\"$")
    public void userEditGender(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[gender]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User edit Martial Status\"([^\"]*)\"$")
    public void userEditMartialStatus(String value) {
        WebElement element = driver.findElement(By.cssSelector("select[name='patient[martial_status]'] > option[value=" + value + "]"));
        element.click();
        Assert.assertEquals(element.getAttribute("value"), value);
    }

    @And("^User edit  Disease")
    public void userEditDisease() {
        WebElement element = driver.findElement(By.id("disease_id"));
        element.click();
        WebElement element1 = driver.findElement(By.cssSelector("#disease_id > option:nth-child(3)"));
        element1.click();
    }

    @And("^User edit  Cell_Phone \"([^\"]*)\"$")
    public void userEditCellPhone(String Cell_Phone) {
        WebElement element = driver.findElement(By.id("cell_phone"));
        element.clear();
        element.sendKeys(Cell_Phone);
//        Assert.assertEquals(element.getAttribute("value"),Cell_Phone);
    }

    @And("^User edit  Home_Phone \"([^\"]*)\"$")
    public void userEditHome_Phone(String Home_Phone) {
        WebElement element = driver.findElement(By.id("home_phone"));
        element.clear();
        element.sendKeys(Home_Phone);
//        Assert.assertEquals(element.getAttribute("value"),Home_Phone);
    }

    @And("^User edit  Adress_Line \"([^\"]*)\"$")
    public void userEditAdressLine(String Adress_Line) {
        WebElement element = driver.findElement(By.name("patient[address_line_1]"));
        element.clear();
        element.sendKeys(Adress_Line);
//        Assert.assertEquals(element.getAttribute("value"),Adress_Line);
    }

    @And("^User edit  Adress_Line_second\"([^\"]*)\"$")
    public void userEditAdress_Line_second(String Adress_Line_second) {
        WebElement element = driver.findElement(By.name("patient[address_line_2]"));
        element.clear();
        element.sendKeys(Adress_Line_second);
//        Assert.assertEquals(element.getAttribute("value"),Adress_Line_second);
    }

    @And("^User edit  Language")
    public void userEditLanguage() {
        WebElement element = driver.findElement(By.cssSelector("div > label[for='spanish']"));
        element.click();
    }

    @And("^User click btn Save$")
    public void userClickBtnSave() {
        WebElement element = driver.findElement(By.id("submitBoardForm"));
        element.click();
    }


}