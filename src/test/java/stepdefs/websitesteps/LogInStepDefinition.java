package stepdefs.websitesteps;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class LogInStepDefinition {
    private WebDriver driver;

    @Before
    public void setUp() {
        System.setProperty("webdriver.chrome.driver", "src/main/resources/chromedriver");
        driver = new ChromeDriver();
        driver.manage().window().fullscreen();
        driver.navigate().to("https://nj-staging.vianovahealth.com/login");
        new WebDriverWait(driver, 20).until(ExpectedConditions.numberOfElementsToBeMoreThan(By.cssSelector("div"), 10));

    }

    @After
    public void tearDown() {
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
    public void clickLogInButton() {
        WebElement element = driver.findElement(By.className("btn-blue"));
        element.click();
    }


    @Then("^The message \"([^\"]*)\" should be shown$")
    public void theShouldBeShown(String message) {
        WebElement element = driver.findElement(By.className("invalid-feedback"));
        Assert.assertEquals(message, element.getText());
    }


    @Then("^The user should be logged in \"([^\"]*)\"$")
    public void theUserShouldBeLoggedIn(String url) throws Exception {
        driver.findElement(By.cssSelector("[name='status']> option[value='unreachable']")).click();
        Thread.sleep(3000);
        new WebDriverWait(driver, 20).until(ExpectedConditions.urlToBe(url));
        Assert.assertEquals(driver.getCurrentUrl(), "https://nj-staging.vianovahealth.com/patients?status=active");
    }
}


