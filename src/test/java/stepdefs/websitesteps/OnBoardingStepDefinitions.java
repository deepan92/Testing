package stepdefs.websitesteps;

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


}
