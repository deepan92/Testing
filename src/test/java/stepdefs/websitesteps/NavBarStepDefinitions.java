package stepdefs.websitesteps;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.And;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class NavBarStepDefinitions {

    private WebDriver driver;
    private WebElement element;

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

    @And("^Click EditProfile$")
    public void clickEditProfile()throws  Exception {
     element =  driver.findElement(By.id("navbarDropdown"));
     element.click();
     Thread.sleep(4000);
    }



    @And("^Select Edit Profile : \"([^\"]*)\"$")
    public void selectEditProfile(String value) throws Throwable {
        element=driver.findElement(By.cssSelector("a[href='"+value+"']"));
        element.click();
        Thread.sleep(2000);
        new WebDriverWait(driver, 20).until(ExpectedConditions.urlToBe(value));
        Assert.assertEquals(driver.getCurrentUrl(),value);
    }

    @And("^Edit FirstName : \"([^\"]*)\"$")
    public void editFirstName(String firstname) throws Throwable {
        element = driver.findElement(By.name("first_name"));
        element.sendKeys(firstname);
        Assert.assertEquals(firstname,"first_name");


    }

    @And("^Edit Lastname  : \"([^\"]*)\"$")
    public void editLastname(String lastname) throws Throwable {
        element = driver.findElement(By.name("last_name"));
        element.sendKeys(lastname);
        Assert.assertEquals(lastname,"last_name");

    }

    @And("^Edit FirstAddress :\"([^\"]*)\"$")
    public void editFirstAddress(String firstaddres) throws Throwable {
        element = driver.findElement(By.name("address_line_1"));
        element.sendKeys(firstaddres);
        Assert.assertEquals(firstaddres,"address_line_1");

    }

    @And("^Edit SecondAddress :\"([^\"]*)\"$")
    public void editSecondAddress(String secondaddress) throws Throwable {
        element = driver.findElement(By.name("address_line_2"));
        element.sendKeys(secondaddress);
        Assert.assertEquals(secondaddress,"address_line_2");

    }

    @And("^Add AppSuite : \"([^\"]*)\"$")
    public void addAppSuite(String app) throws Throwable {
        element = driver.findElement(By.name("apt_suite"));
        element.sendKeys(app);
        Assert.assertEquals(app,"apt_suite");
    }
}
