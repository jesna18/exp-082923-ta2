package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class OutlineSteps1 {
    @Then("I enter {string} into the field with xpath {string}")
    public void iEnterIntoTheFieldWithXpath(String arg0, String arg1) {
        getDriver().findElement(By.xpath(arg1)).sendKeys(arg0);
    }


}
