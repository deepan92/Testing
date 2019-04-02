package stepdefs.websitesteps;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class WebsiteStepDefs {
    private WebDriver driver;

    @Before
    public void setUp() throws Throwable {
        System.setProperty("webdriver.chrome.driver", "src/main/resources/chromedriver");
        driver = new ChromeDriver();
        driver.manage().window().fullscreen();
        driver.navigate().to("https://nj-staging.vianovahealth.com/login");
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
        driver.findElement(By.className("form-control")).sendKeys("tframe@vh.com");
        driver.findElement(By.name("password")).sendKeys("blakaj123");
        driver.findElement(By.className("btn-blue")).click();
        Thread.sleep(3000);
    }

    @And("^Click on boarding btn$")
    public void clickInOnboardingBttn() throws Throwable {
//        Thread.sleep(10000);
        new WebDriverWait(driver, 30).until(ExpectedConditions.visibilityOf(driver.findElement(By.xpath("//*[@id=\"navbarVianova\"]/ul[1]/li[1]/a"))));
        driver.findElement(By.xpath("//*[@id=\"navbarVianova\"]/ul[1]/li[1]/a")).click();
        Thread.sleep(3000);
    }


    @And("^Fill empty inputs Patient Information$")
    public void fillEmptyInputsPatientInformation() throws Throwable {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("<p>Bleron</[]'>");
        Assert.assertNotEquals(element.getText(), "<p>Bleron</[]'>");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("first_name"), "<p>Bleron</[]'>"));
        driver.findElement(By.id("last_name")).sendKeys("<12>Hasani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("last_name"), "<12>Hasani"));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")).sendKeys("H");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")), "H"));
        driver.findElement(By.id("date_of_birth")).sendKeys("12");
        driver.findElement(By.id("date_of_birth")).sendKeys("18");
//        new WebDriverWait(driver,10).until(ExpectedConditions.textToBePresentInElementValue((By.id("date_of_birth")),"10"));
        element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys("2001");
        Thread.sleep(3000);
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementLocated((By.id("date_of_birth")), element.getText()));
        System.out.println(element.getText());

        Thread.sleep(3000);
    }


    @And("^Fill empty inputs in Patient Information from date_of_birth to cellphone$")
    public void fillEmptyInputsInPatientInformationFromDate_of_birthToCellphone() throws Throwable {
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(2) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable((By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(2) > div > select"))));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(2) > div > select > option:nth-child(2)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(2) > div > select > option:nth-child(2)")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(3) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(3) > div > select")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(3) > div > select > option:nth-child(2)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(3) > div > select > option:nth-child(2)")));
        driver.findElement(By.id("disease_id")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.id("disease_id")));
        driver.findElement(By.cssSelector("#disease_id > option:nth-child(4)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#disease_id > option:nth-child(4)")));
        WebElement element1 = driver.findElement(By.id("cell_phone"));
        element1.sendKeys("(609) 345-2487");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("cell_phone"), element1.getText()));
        driver.findElement(By.id("home_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("home_phone"), "(609) 345-2487"));
        driver.findElement(By.id("work_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("work_phone"), "(609) 345-2487"));
        Thread.sleep(3000);
    }

    @And("^Fill the empty inputs in Patient Information from home phone to city$")
    public void fillTheEmptyInputsInPatientInformationFromHomephoneToCity() throws Throwable {
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(6) > div > div > div:nth-child(1) > div > input")).sendKeys("bleronhasani.2001@gmail.com");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(6) > div > div > div:nth-child(1) > div > input"), "bleronhasani.2001@gmail.com"));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(6) > div > div > div:nth-child(2) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(6) > div > div > div:nth-child(2) > div > select")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(6) > div > div > div:nth-child(2) > div > select > option:nth-child(2)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(6) > div > div > div:nth-child(2) > div > select > option:nth-child(2)")));
        driver.findElement(By.name("patient[address_line_1]")).sendKeys("4390853098520953-0498-58293495234895723845");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_1]"), "4390853098520953-0498-58293495234895723845"));
        driver.findElement(By.name("patient[address_line_2]")).sendKeys("4390853098520953-0498-58293495234895723845");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_2]"), "4390853098520953-0498-58293495234895723845"));
        driver.findElement(By.id("city")).sendKeys("Atlantic City");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("city"), "Atlantic City"));
        Thread.sleep(3000);
    }

    @And("^Fill empty inputs in Patient Information from patient state to patient care_provider_phone$")
    public void fillEmptyInputsInPatientInformationFromPatientstateToPatientcare_provider_phone() throws Throwable {
        driver.findElement(By.name("patient[state]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("patient[state]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(9) > div > div > div:nth-child(2) > div > select > option:nth-child(32)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(9) > div > div > div:nth-child(2) > div > select > option:nth-child(32)")));
        driver.findElement(By.id("zip_code")).sendKeys("10000");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("zip_code"), "10000"));
        driver.findElement(By.name("patient[care_provider]")).sendKeys("Providetrtestsss");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[care_provider]"), "Providetrtestsss"));
        driver.findElement(By.name("patient[care_provider_phone]")).sendKeys("(609) 345-2487");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[care_provider_phone]"), "(609) 345-2487"));

        Thread.sleep(3000);
    }

    @And("^Fill the radio btn Language$")
    public void fillTheRadioBtnLanguage() {
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div.container.m-t-50 > div.row > div > div > div.col-md-3.col-sm-3.col-xs-12 > div > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div.container.m-t-50 > div.row > div > div > div.col-md-3.col-sm-3.col-xs-12 > div > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(12) > div.row > div > div > div.col-md-2.col-sm-2.col-xs-12 > div > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(12) > div.row > div > div > div.col-md-2.col-sm-2.col-xs-12 > div > label")));
    }

    @And("^Fill the empty inputs in Care giver Information$")
    public void fillTheEmptyInputsInCareGiverInformation() {
        driver.findElement(By.name("careGiver[first_name]")).sendKeys("Bekim");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("careGiver[first_name]"), "Bekim"));
        driver.findElement(By.name("careGiver[last_name]")).sendKeys("hasani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("careGiver[last_name]"), "hasani"));
        driver.findElement(By.name("careGiver[relationship]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("careGiver[relationship]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(14) > div > div > div:nth-child(3) > div > select > option:nth-child(15)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(14) > div > div > div:nth-child(3) > div > select > option:nth-child(15)")));

    }

    @And("^Fill the empty inputs in Care giver Information from cell phone to care give preferred_contact$")
    public void fillTheEmptyInputsInCareGiverInformationFromCellPhoneToCareGivePreferredContact() {
        driver.findElement(By.id("cell_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("cell_phone"), "(609) 345-2487"));
        driver.findElement(By.id("home_phone")).sendKeys("(609) 345-2487");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("home_phone"), "(609) 345-2487"));
        driver.findElement(By.id("work_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("work_phone"), "(609) 345-2487"));
        driver.findElement(By.name("careGiver[preferred_contact]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("careGiver[preferred_contact]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(16) > div > div > div > div > select > option:nth-child(2)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(16) > div > div > div > div > select > option:nth-child(2)")));
        driver.findElement(By.id("send_text_message")).click();
        driver.findElement(By.name("careGiver[preferred_contact]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("careGiver[preferred_contact]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(18) > div > div > div.col-md-2.col-sm-2.col-xs-12 > div > label")).click();
    }

    @And("^Fill the empty inputs in Emergency Contact Information$")
    public void fillTheEmptyInputsInEmergencyContactInformation() {
        driver.findElement(By.name("emergencyContact[first_name]")).sendKeys("Bleron");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("emergencyContact[first_name]"), "Bleron"));
        driver.findElement(By.name("emergencyContact[last_name]")).sendKeys("hasani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("emergencyContact[last_name]"), "hasani"));
        driver.findElement(By.name("emergencyContact[middle_name]")).sendKeys("h");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("emergencyContact[middle_name]"), "h"));
        driver.findElement(By.name("emergencyContact[relationship]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("emergencyContact[relationship]")));
        driver.findElement(By.cssSelector("#emergency-contact > div:nth-child(2) > div > div > div:nth-child(4) > div > select > option:nth-child(15)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#emergency-contact > div:nth-child(2) > div > div > div:nth-child(4) > div > select > option:nth-child(15)")));

    }

    @And("^Fill the empty inputs in Emergency Contact Information from cell phone to the end$")
    public void fillTheEmptyInputsInEmergencyContactInformationFromCellPhoneToTheEnd() {
        driver.findElement(By.id("cell_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("cell_phone"), "(609) 345-2487"));
        driver.findElement(By.id("home_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("home_phone"), "(609) 345-2487"));
        driver.findElement(By.id("work_phone")).sendKeys("(609) 345-2487");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("work_phone"), "(609) 345-2487"));
        driver.findElement(By.name("emergencyContact[preferred_contact]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("emergencyContact[preferred_contact]")));
        driver.findElement(By.cssSelector("#emergency-contact > div:nth-child(4) > div > div > div > div > select > option:nth-child(2)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#emergency-contact > div:nth-child(4) > div > div > div > div > select > option:nth-child(2)")));
        driver.findElement(By.id("emergency_contact_send_text_message")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.id("emergency_contact_send_text_message")));
        driver.findElement(By.cssSelector("#emergency-contact > div:nth-child(6) > div > div > div.col-md-2.col-sm-2.col-xs-12 > div > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#emergency-contact > div:nth-child(6) > div > div > div.col-md-2.col-sm-2.col-xs-12 > div > label")));
    }

    @And("^Fill the empty inputs in Specialist Information$")
    public void fillTheEmptyInputsInSpecialistInformation() {
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(1) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(1) > div > select")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(1) > div > select > option:nth-child(16)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(1) > div > select > option:nth-child(16)")));
        driver.findElement(By.name("specialists[0][preferred_contact]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("specialists[0][preferred_contact]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(3) > div > div > div:nth-child(4) > div > select > option:nth-child(3)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(3) > div > div > div:nth-child(4) > div > select > option:nth-child(3)")));
        driver.findElement(By.name("specialists[0][speciality_id]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("specialists[0][speciality_id]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(4) > div > select > option:nth-child(46)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(4) > div > select > option:nth-child(46)")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div.center > button")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div.center > button")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(1) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(1) > div > select")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(1) > div > select > option:nth-child(16)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(1) > div > select > option:nth-child(16)")));
    }

    @And("^Fill empty inputs in Specialist Information from specialists preferred_contact to the end$")
    public void fillEmptyInputsInSpecialistInformationFromSpecialistsPreferred_contactToTheEnd() {
        driver.findElement(By.name("specialists[0][preferred_contact]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("specialists[0][preferred_contact]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(3) > div > div > div:nth-child(4) > div > select > option:nth-child(3)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(3) > div > div > div:nth-child(4) > div > select > option:nth-child(3)")));
        driver.findElement(By.name("specialists[0][speciality_id]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.name("specialists[0][speciality_id]")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(4) > div > select > option:nth-child(46)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(21) > div:nth-child(1) > div:nth-child(2) > div > div > div:nth-child(4) > div > select > option:nth-child(46)")));
    }

    @And("^Add a new medication$")
    public void addANewMedication() throws Throwable {
        new WebDriverWait(driver, 20).until(ExpectedConditions.elementToBeClickable(By.id("addMedication")));
        driver.findElement(By.id("addMedication")).click();
        Thread.sleep(3000);
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div.col-md-8 > div > div > div > div > input[type=\"text\"]:nth-child(1)")).sendKeys("Lisenopril");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.cssSelector("#collapseExample > div > form > div > div.col-md-8 > div > div > div > div > input[type=\"text\"]:nth-child(1)"), "Lisenopril"));
//        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div.col-md-8 > div > div > ul > li:nth-child(1)")).click();
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(1) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(1) > div > select")));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(1) > div > select > option:nth-child(3)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(1) > div > select")));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(2) > div > input")).sendKeys("20mg");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(2) > div > input"), "20mg"));

    }

    @And("^Add a new medication from Time of the day to the end$")
    public void addANewMedicationFromTimeOfTheDayToTheEnd() {
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(3) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(3) > div > select")));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(3) > div > select > option:nth-child(3)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div:nth-child(2) > div > div:nth-child(3) > div > select > option:nth-child(3)")));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(3) > div:nth-child(5) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div:nth-child(3) > div:nth-child(5) > label")));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(4) > div:nth-child(2) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div:nth-child(4) > div:nth-child(2) > label")));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div:nth-child(5) > div > div > div > input")).sendKeys("302984983475093487503872038750283765072635962345078236597345");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.cssSelector("#collapseExample > div > form > div > div:nth-child(5) > div > div > div > input"), "302984983475093487503872038750283765072635962345078236597345"));
        driver.findElement(By.id("textarea-background")).sendKeys("Ka lujt haveri");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("textarea-background"), "Ka lujt haveri"));
        driver.findElement(By.cssSelector("#collapseExample > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button")).click();
//        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExample > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button")));
    }

    //-----------------------------------KQYRE-------------------------------------------------
    @And("^Add a new Vital$")
    public void addANewVital() throws Throwable {
        Thread.sleep(3000);
        driver.findElement(By.id("addMonitor")).click();
        Thread.sleep(3000);
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(1) > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(1) > div > select")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-4 > div > select")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-4 > div > select")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-4 > div > select > option:nth-child(4)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-4 > div > select > option:nth-child(4)")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(1) > div > select > option:nth-child(7)")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(1) > div > select > option:nth-child(7)")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-8 > div > input")).sendKeys("sdfdsfs");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-8 > div > input"), "sdfdsfs"));
    }


    @And("^Add a new Vital from Time of the day to the and$")
    public void addANewVitalFromTimeOfTheDayToTheAnd() throws Throwable {
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(3) > div:nth-child(2) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(3) > div:nth-child(2) > label")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(3) > div:nth-child(5) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(3) > div:nth-child(5) > label")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(4) > div:nth-child(2) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div:nth-child(4) > div:nth-child(2) > label")));
        driver.findElement(By.cssSelector("#collapseExampleSecond > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#collapseExampleSecond > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button")));
        Thread.sleep(10000);
    }

    //#collapseExampleSecond > div > form > div > div:nth-child(2) > div > div.col-md-4 > div > select


    @And("^Add Patient's Disabilities$")
    public void addPatientSDisabilities() {
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(1) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(1) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(2) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(2) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(3) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(3) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(4) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(4) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(5) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(5) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(6) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(6) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(7) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(7) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(8) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(8) > label")));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(9) > label")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.elementToBeClickable(By.cssSelector("#onBoardForm > div:nth-child(5) > div > div.row.m-t-50 > div > div:nth-child(9) > label")));
    }

    @And("^Add Alert$")
    public void addAlert() {
        driver.findElement(By.id("addAlert")).click();
        new WebDriverWait(driver, 30).until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(1) > div > input"))));
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(1) > div > input")).sendKeys("Bleron");
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(2) > div > select")).click();
        new WebDriverWait(driver, 30).until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(2) > div > select > option:nth-child(3)"))));
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(2) > div > select > option:nth-child(3)")).click();
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(3) > div > select")).click();
        new WebDriverWait(driver, 30).until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(3) > div > select > option:nth-child(5)"))));
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div:nth-child(1) > div > div:nth-child(3) > div > select > option:nth-child(5)")).click();
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div.col-md-12.m-t-30 > div > div:nth-child(1) > div > input")).sendKeys("90");
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div.col-md-12.m-t-30 > div > div:nth-child(2) > div > input")).sendKeys("180");
//        driver.findElement(By.id("textarea-background")).sendKeys("ka lujt");
        driver.findElement(By.cssSelector("#collapseDiseaseRule > div > form > div > div.container.m-t-30.m-b-50 > div > div:nth-child(1) > button")).click();

    }

    @And("^name is error$")
    public void nameIsError() {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("<p>Bleron</[]'>");
        Assert.assertNotEquals(element.getText(), "<p>Bleron</[]'>");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("first_name"), "<p>Bleron</[]'>"));

    }

    @And("^adres is incorrect$")
    public void adresIsIncorrect() {
        WebElement element = driver.findElement(By.name("patient[address_line_1]"));
        element.sendKeys("4390853098520953-0498-58293495234895723845");
        Assert.assertNotEquals(element.getText(), "4390853098520953-0498-58293495234895723845");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_1]"), "4390853098520953-0498-58293495234895723845"));
    }
//     driver.findElement(By.name("patient[address_line_1]")).sendKeys("4390853098520953-0498-58293495234895723845");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_1]"), "4390853098520953-0498-58293495234895723845"));
//        driver.findElement(By.name("patient[address_line_2]")).sendKeys("4390853098520953-0498-58293495234895723845");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_2]"), "4390853098520953-0498-58293495234895723845"));
//
//


    @And("^text is ok$")
    public void textIsOk() throws Throwable {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("Agim");
        Assert.assertNotEquals(element.getText(), "Agim");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("first_name"), "Agim"));
        driver.findElement(By.id("last_name")).sendKeys("Hsani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("last_name"), "Hsani"));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")).sendKeys("H");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")), "H"));
        driver.findElement(By.id("date_of_birth")).sendKeys("12");
        driver.findElement(By.id("date_of_birth")).sendKeys("18");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.id("date_of_birth")), "18"));
        element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys("2001");
        Thread.sleep(3000);
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementLocated((By.id("date_of_birth")), element.getText()));
        System.out.println(element.getText());
    }


    @And("^Address is ok$")
    public void AddressIsOk() {
        WebElement element = driver.findElement(By.name("patient[address_line_1]"));
        element.sendKeys("New Jersey 08330");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_1]"), "New Jersey 08330"));
        WebElement element1 = driver.findElement(By.name("patient[address_line_2]"));
        element1.sendKeys("New Jersey 08330");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_2]"), "New Jersey 08330"));
        Assert.assertNotEquals(element.getText(), "New Jersey 08330");
    }

    @And("^phone number is ok$")
    public void phoneNumberIsOk() {
        driver.findElement(By.id("cell_phone")).sendKeys("(609) 345-2487");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("cell_phone"), "(609) 345-2487"));
        driver.findElement(By.id("home_phone")).sendKeys("(609) 345-2487");
    }

    @And("^date of birth$")
    public void dateOfBirth() {
        driver.findElement(By.id("date_of_birth")).sendKeys("12");
        driver.findElement(By.id("date_of_birth")).sendKeys("18");
        WebElement element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys("2001");
    }

    @And("^gender is ok$")
    public void genderIsOk() {
        WebElement element = driver.findElement(By.name("patient[gender]"));
        element.click();
        WebElement element1 = driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(3) > div > div > div:nth-child(2) > div > select > option:nth-child(2)"));
        element1.click();
    }


    @And("^first name, last name is null$")
    public void firstNameLastNameIsNull() {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("");
        driver.findElement(By.id("last_name")).sendKeys("");
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")).sendKeys("");

    }

    @And("^fill wrong name$")
    public void fillWrongName() {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("<div>Agim</div");
        Assert.assertNotEquals(element.getText(), "<div>Agim</div");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("first_name"), "<div>Agim</div"));
        driver.findElement(By.id("last_name")).sendKeys("<br></>Hsani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("last_name"), "<br></>Hsani"));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")).sendKeys("H");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")), "H"));
    }

    @And("^Address with long numbers$")
    public void addressWithLongNumbers() {
        WebElement element = driver.findElement(By.name("patient[address_line_1]"));
        element.sendKeys("12345678901234567890987654321234567890");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_1]"), "12345678901234567890987654321234567890"));
        WebElement element1 = driver.findElement(By.name("patient[address_line_2]"));
        element1.sendKeys("12345678901234567890987654321234567890");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_2]"), "12345678901234567890987654321234567890"));
        Assert.assertNotEquals(element.getText(), "New Jersey 08330");
    }

    @And("^Address with code$")
    public void addressWithCode() {
        WebElement element = driver.findElement(By.name("patient[address_line_1]"));
        element.sendKeys("<div>12345678901234567890987654321234567890<div><script></script>");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_1]"), "<div>12345678901234567890987654321234567890<div><script></script>"));
        WebElement element1 = driver.findElement(By.name("patient[address_line_2]"));
        element1.sendKeys("<div>12345678901234567890987654321234567890<div><script></script>");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("patient[address_line_2]"), "<div>12345678901234567890987654321234567890<div><script></script>"));
        Assert.assertNotEquals(element.getText(), "<div>12345678901234567890987654321234567890<div><script></script>");
    }

    @And("^date of birth is empty$")
    public void dateOfBirthIsEmpty() throws Throwable {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("Agim");
        Assert.assertNotEquals(element.getText(), "Agim");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("first_name"), "Agim"));
        driver.findElement(By.id("last_name")).sendKeys("Hsani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("last_name"), "Hsani"));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")).sendKeys("H");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")), "H"));
        driver.findElement(By.id("date_of_birth")).sendKeys("");
        driver.findElement(By.id("date_of_birth")).sendKeys("");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.id("date_of_birth")), "18"));
        element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys("");
        Thread.sleep(3000);
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementLocated((By.id("date_of_birth")), element.getText()));
        System.out.println(element.getText());
    }

    @And("^date of birth empty error text$")
    public void dateOfBirthEmptyErrorText() {
        driver.findElement(By.id("date_of_birth-error"));
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.id("date_of_birth-error"))));
    }

    @And("^gender empty error text$")
    public void genderEmptyErrorText() {
        driver.findElement(By.id("patient[gender]-error"));
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.id("patient[gender]-error"))));
    }

    @And("^phone error text$")
    public void PhoneErrorText() {
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(5) > div > div > div > div:nth-child(2) > div > label.error-phone-number"));
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(5) > div > div > div > div:nth-child(2) > div > label.error-phone-number"))));
    }

    @And("^first name, last name empty error text$")
    public void firstNameLastNameEmptyErrorText() {
        driver.findElement(By.id("first_name-error"));
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.id("first_name-error"))));
        driver.findElement(By.id("last_name-error"));
        new WebDriverWait(driver, 10).until(ExpectedConditions.visibilityOf(driver.findElement(By.id("last_name-error"))));
    }

    @And("^gender is empty$")
    public void genderIsEmpty() throws Throwable {
        WebElement element = driver.findElement(By.id("first_name"));
        element.sendKeys("Agim");
        Assert.assertNotEquals(element.getText(), "Agim");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("first_name"), "Agim"));
        driver.findElement(By.id("last_name")).sendKeys("Hsani");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("last_name"), "Hsani"));
        driver.findElement(By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")).sendKeys("H");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.cssSelector("#onBoardForm > div:nth-child(2) > div:nth-child(2) > div > div > div:nth-child(3) > div > input")), "H"));
        driver.findElement(By.id("date_of_birth")).sendKeys("12");
        driver.findElement(By.id("date_of_birth")).sendKeys("18");
//        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue((By.id("date_of_birth")), "18"));
        element = driver.findElement(By.id("date_of_birth"));
        element.sendKeys("2001");
        Thread.sleep(3000);
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementLocated((By.id("date_of_birth")), element.getText()));
        System.out.println(element.getText());

    }

    @And("^phone number is empty$")
    public void phoneNumberIsEmpty() {
        driver.findElement(By.id("cell_phone")).sendKeys("");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.id("cell_phone"), ""));
        driver.findElement(By.id("home_phone")).sendKeys("");
    }

    @And("^Add Patient$")
    public void addPatient() throws Exception {
        Thread.sleep(3000);
        driver.findElement(By.xpath("//*[@id=\"onBoardForm\"]/div[6]/div[1]/div/div[1]/a")).click();
        Thread.sleep(10000);
    }


    @And("^save Patient$")
    public void savePatient() {
        WebElement element = driver.findElement(By.id("submitBoardForm"));
        element.click();
    }
//KASTRIOTI----------------------------------------===================================================================================================================


    @When("^Logout$") //Klikojme tek Edit profile
    public void Logout() throws InterruptedException {
//       Thread.sleep(2222);
//       driver.findElement(By.cssSelector("#navbarDropdown")).submit();
//      WebElement element = driver.findElement(By.cssSelector("#navbarVianova > ul.navbar-right > li.profile.show > div > a:nth-child(1)"));
//      element.submit();
//        new WebDriverWait(driver, 20).until(ExpectedConditions.visibilityOf(element));
        WebElement element = driver.findElement(By.cssSelector("#navbarVianova > ul.navbar-right > li:nth-child(1) > a"));
        element.click();
        Thread.sleep(2111);

    }

    @When("^User View the FirstPage and Click Edit Profile$")
    public void userViewTheFirstPageAndClickEditProfile() throws InterruptedException {
        driver.findElement(By.cssSelector("#navbarDropdown")).click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?status=active");
        Thread.sleep(2000);
    }

    @And("^ClickEditProfile$")
    public void clickeditprofile() {
        driver.findElement(By.cssSelector("#navbarVianova > ul.navbar-right > li.profile.show > div > a:nth-child(1)")).click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/users/33/edit");
    }

    @When("^User Click Edit Profiles and ClearData$") //Scnario User Click Edit Profiles and ClearData
    public void userClickEditProfilesAndClearData() throws InterruptedException {
        driver.findElement(By.name("first_name")).clear();
        driver.findElement(By.id("last_name")).clear();
        driver.findElement(By.name("address_line_1")).clear();
        driver.findElement(By.name("address_line_2")).clear();
        driver.findElement(By.name("apt_suite")).clear();
        driver.findElement(By.name("phone_types[0][phone_number]")).clear();
        driver.findElement(By.name("email")).clear();
        driver.findElement(By.name("location")).clear();
        driver.findElement(By.name("client")).clear();
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(4) > div > div > div > div > div:nth-child(3) > div > a > img")).click();
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(4) > div > div > div:nth-child(2) > div > div:nth-child(3) > div > a:nth-child(2) > span > i")).click();
        Thread.sleep(2000);
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
        driver.findElement(By.name("speciality_training")).click();
        Thread.sleep(1000);
        driver.findElement(By.name("first_name")).sendKeys("Time");
        driver.findElement(By.id("last_name")).sendKeys("Frame");
        driver.findElement(By.name("address_line_1")).sendKeys("Agim Ramadani pn 1a");
        driver.findElement(By.name("address_line_2")).sendKeys("-");
        driver.findElement(By.name("apt_suite")).sendKeys("-");
        driver.findElement(By.name("city")).sendKeys("Prishtinaa");
        driver.findElement(By.name("zip_code")).sendKeys("1234");
        driver.findElement(By.name("phone_types[0][phone_number]")).sendKeys("(386) 495-2517");
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(5) > div > div > input")).sendKeys("tframe@vh.com"); // Vendosja  e Primaey email
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(6) > div:nth-child(1) > div > input")).clear();
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(6) > div:nth-child(1) > div > input")).sendKeys("Pirshtine");
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(6) > div:nth-child(2) > div > input")).clear();
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-30 > div:nth-child(6) > div:nth-child(2) > div > input")).sendKeys("Kastriot");
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/users/33/edit");
        driver.findElement(By.cssSelector("#app > section > form > div.container.m-t-100.m-b-50 > div > div:nth-child(2) > a")).click();
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?status=active");
        Thread.sleep(2000);
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
        Thread.sleep(2111);
    }


    @And("^ChangePassword$")
    public void changePassword() {
        driver.findElement(By.cssSelector("#navbarVianova > ul.navbar-right > li.profile.show > div > a:nth-child(2)")).click();
        driver.findElement(By.name("current-password")).sendKeys("blakaj123");
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElementValue(By.name("current-password"), "blakaj123"));
        driver.findElement(By.id("new-password")).sendKeys("blakaj123");
        String pw = "blakaj123";
        driver.findElement(By.id("new-password-confirm")).sendKeys(pw);
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/user/change-password");
    }


    @After
    public void tearDown() {
        driver.quit();
    }


}


