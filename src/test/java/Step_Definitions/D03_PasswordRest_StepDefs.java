package Step_Definitions;

import Pages.P03_PasswordReset;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class D03_PasswordRest_StepDefs {

    P03_PasswordReset passwordResetPage = new P03_PasswordReset();

    @And("user click on Forgot password?")
    public void userClickOnForgotPassword()
    {
        passwordResetPage.forgotPassword().click();
    }

    @When("user enter his email {string}")
    public void userEnterHisEmail(String email) {
        passwordResetPage.userEmail().sendKeys(email);
    }

    @And("click on Recover button")
    public void clicksOnRecoverButton() {
        passwordResetPage.recoverButton().click();
    }

    @Then("confirm that the recovery message is displayed")
    public void confirm_that_the_recovery_message_is_displayed() {
        String expectedResult = "Email with instructions has been sent to you.";
        String actualResult = passwordResetPage.confirmationMessage().getText();
        Assert.assertEquals(actualResult,expectedResult);
    }
}
