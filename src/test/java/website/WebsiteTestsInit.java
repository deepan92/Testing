package website;

import cucumber.api.CucumberOptions;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;
import selenium.WebDriverFactory;
import stepdefs.CommonStepObjects;

@RunWith(Cucumber.class)

@CucumberOptions(monochrome = true,

        features = "src/test/java/website",
        format = {"pretty", "html:cucumber-html-reports",
                "json:cucumber-html-reports/cucumber.json"},
        glue = "stepdefs")

public class WebsiteTestsInit {

}
