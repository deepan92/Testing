package pageobjects.pages;

import org.apache.commons.lang3.tuple.Pair;
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

import java.util.Collections;
import java.util.List;

public enum SpecificPageElements implements PageObjects {

    SpecificElement(PageObjectUtils.LocatorType.NAME, "valueOfNameAttribute"),
    OtherSpecificElement(PageObjectUtils.LocatorType.CLASSNAME, "valueOfClassAttribute"),
    OtherElement(PageObjectUtils.LocatorType.ID, "valueOfIDAttribute");

    private List<PageObjectUtils.LocatorType> loc;
    private List<String> id;

    @Override
    public void initializeMap() {
        locatorPairs.clear();
        for (int i = 0; i < loc.size(); i++) locatorPairs.add(Pair.of(loc.get(i), id.get(i)));
    }

    SpecificPageElements(PageObjectUtils.LocatorType loc, String id) {
        this.loc = Collections.singletonList(loc);
        this.id = Collections.singletonList(id);
    }

    SpecificPageElements(List<PageObjectUtils.LocatorType> loc, List<String> id) {
        this.loc = loc;
        this.id = id;
    }

    public static String getWebsiteUrl() {
        return PageElementIds.LoginPageIds.WEBSITE_URL.getUrl();
    }
}
