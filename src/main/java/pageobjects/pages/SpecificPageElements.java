package pageobjects.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pageobjects.PageElementIds;
import pageobjects.pages.PageObjectUtils;
import pageobjects.pages.PageObjects;
import pageobjects.PageElementIds;
import selenium.WebDriverFactory;

public enum SpecificPageElements implements PageObjects {

    SpecificElement(PageObjectUtils.LocatorType.NAME, "valueOfNameAttribute"),
    OtherSpecificElement(PageObjectUtils.LocatorType.CLASSNAME, "valueOfClassAttribute"),
    OtherElement(PageObjectUtils.LocatorType.ID, "valueOfIDAttribute");

    public PageObjectUtils.LocatorType locator;
    public String id;

    SpecificPageElements(PageObjectUtils.LocatorType locator, String id) {
        this.locator = locator;
        this.id = id;
    }

    @Override
    public void initializeMap() {}

    @Override
    public WebElement getElement() {
        return PageObjectUtils.locateElement(driver, locator, id);
    }

    public static String getWebsiteUrl() {
        return PageElementIds.LoginPageIds.WEBSITE_URL.getUrl();
    }
}
