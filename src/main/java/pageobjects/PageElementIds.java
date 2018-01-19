package pageobjects;

/**
 * Created by gchaikin on 17/10/2016.
 * Class to store all the IDS for element identification.
 */
public class PageElementIds {
    // LOGIN PAGE
    // *********
    public enum LoginPageIds {

        WEBSITE_URL {
            public String getUrl() {
                return (System.getProperty("websiteURL"));

            }
        };

        public abstract String getUrl();
    }
}
