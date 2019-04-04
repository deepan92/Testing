package stepdefs.websitesteps;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class OnBoardingStepDefinitions {

    private WebDriver driver;

    @Before
    public void setUp() {
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
        driver.quit();
    }

    @And("^Filter by \"([^\"]*)\"$")
    public void filterBy(String value) throws Exception {
        Thread.sleep(3000);
        WebElement element = driver.findElement(By.cssSelector("select[name='status'] > option[value=" + value + "]"));
        element.click();
    }
}
