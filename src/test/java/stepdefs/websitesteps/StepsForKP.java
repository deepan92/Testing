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

public class StepsForKP {
    private WebDriver driver;
    private WebElement element;
    private WebDriverWait wait;

    @Given("^Go to website KP")
    public void goToWebsite() {
        System.setProperty("webdriver.chrome.driver", "src/main/resources/chromedriver");
        driver = new ChromeDriver();
        driver.manage().window().fullscreen();
        driver.navigate().to("https://kp.rosie.health/");
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));
    }

    @After
    public void tearDown() {
        if (driver != null)
            driver.quit();
    }

    @When("^User types email for LOGIN : \"([^\"]*)\"$")
    public void userTypesEmailForLOGIN(String email) throws Throwable {
        WebElement element = driver.findElement(By.name("email"));
        element.sendKeys(email);
        new WebDriverWait(driver, 20).until(ExpectedConditions.textToBePresentInElementValue(element, email));
        Assert.assertEquals(element.getAttribute("value"), email);
    }

    @And("^User types passwordd : \"([^\"]*)\"$")
    public void userTypesPasswordd(String password) throws Throwable {
        WebElement element = driver.findElement(By.name("password"));
        element.sendKeys(password);
        new WebDriverWait(driver, 20).until(ExpectedConditions.textToBePresentInElementValue(element, password));
        Assert.assertEquals(element.getAttribute("value"), password);
    }

    @And("^Click Log In button for KPLA$")
    public void clickLogInButtonForKPLA() {
        WebElement element = driver.findElement(By.className("btn-blue"));
        if(element.isDisplayed()&& element.isEnabled()){
            element.click();
        }
    }

    @And("^Select KP-Setup-Organisation$")
    public void selectKPSetupOrganisation() {
        element=driver.findElement(By.cssSelector("#organization_id > option:nth-child(2)"));
        element.click();

    }

    @And("^User click on the Patent that is connected with the device$")
    public void userClickOnThePatentThatIsConnectedWithTheDevice()      throws InterruptedException{
        element=driver.findElement(By.cssSelector("#row-light > td.pl-0"));
        element.click();
        Thread.sleep(3000);
    }

    @And("^User click on Careplan$")
    public void userClickOnCareplan() {
        element=driver.findElement(By.cssSelector("#app > section > div.container > div > div > ul > li:nth-child(6) > a"));
        if(element.isEnabled()&& element.isDisplayed()){
            Assert.assertTrue(true);
            element.click();
        }
    }

    @And("^User AddTask$")
    public void userAddTask() {
        element=driver.findElement(By.className("addMonitor"));
        if(element.isDisplayed()&& element.isEnabled()){
            Assert.assertTrue(true);
            element.click();
        }
    }

    @And("^User add BloodPressure$")
    public void userAddBloodPressure() throws InterruptedException{
        element=driver.findElement(By.cssSelector("#collapseExampleSecond_tasks > div > form > div > div:nth-child(1) > div > select > option:nth-child(2)"));
        if(element.isEnabled()&& element.isDisplayed()){
            element.click();
        }
        //Frequency
        element.findElements(By.cssSelector("#collapseExampleSecond_tasks > div > form > div > div:nth-child(2) > div > div > div > select > option:nth-child(3)"));
        element.click();

        List<WebElement> wb = driver.findElements(By.className("form-control"));  //Check for all Button that have the same name with the others Items !
        for (WebElement we : wb) {
            if (we.isDisplayed() && we.isEnabled()) {
                we.click();
                //Loop goes on till the end
            }
        }
        Thread.sleep(2200);
    }

}
