package stepdefs.websitesteps;

//package <set your test package>;
import io.appium.java_client.remote.AndroidMobileCapabilityType;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.SwipeElementDirection;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.remote.DesiredCapabilities;


import java.net.URL;
import java.net.MalformedURLException;
import java.util.logging.Level;

public class automationonAndroid {
    private String reportDirectory = "reports";
    private String reportFormat = "xml";
    private String testName = "Untitled";
    protected AndroidDriver<AndroidElement> driver = null;

    DesiredCapabilities dc = new DesiredCapabilities();

    @Before
    public void setUp() throws MalformedURLException {
        dc.setCapability("reportDirectory", reportDirectory);
        dc.setCapability("reportFormat", reportFormat);
        dc.setCapability("testName", testName);
        dc.setCapability(MobileCapabilityType.UDID, "804KPCA1738531");
        driver = new AndroidDriver<>(new URL("http://localhost:4724/wd/hub"), dc);
        driver.setLogLevel(Level.INFO);
    }

    @Test
    public void testUntitled() {
        driver.findElement(By.xpath("//*[@id='icon' and ./parent::*[@id='actionSummary']]")).click();
        driver.findElement(By.xpath("//*[@id='icon' and ./parent::*[@id='actionSettings']]")).click();
        driver.findElement(By.xpath("//*[@id='icon' and ./parent::*[@id='actionToDo']]")).click();
        driver.findElement(By.xpath("//*[@id='fabDoMoreToDo']")).click();
        driver.findElement(By.xpath("//*[@class='android.view.ViewGroup' and ./*[@text='Exercise']]")).click();
        driver.findElement(By.xpath("//*[@text='Done']")).click();
        driver.findElement(By.xpath("//*[@text='Accept']")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id='icon' and ./parent::*[@id='actionSettings']]")));
        driver.findElement(By.xpath("//*[@id='icon' and ./parent::*[@id='actionSettings']]")).click();
        driver.findElement(By.xpath("//*[@id='icon' and ./parent::*[@id='actionSettings']]")).click();
        driver.findElement(By.xpath("//*[@id='icon' and ./parent::*[@id='actionToDo']]")).click();
        driver.swipe(556, 1746, 556, -1473, 1039);
    }

    @After
    public void tearDown() {
        driver.quit();
    }
}