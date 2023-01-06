package Step_Definitions;

import Pages.P01_Registration;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

public class D01_Register_StepDefs{

    P01_Registration registrationPage =new P01_Registration();

    @Given("User goes to Registration Page")
    public void User_goes_to_Registration_Page(){
        registrationPage.registerButton().click();
    }
    //Scenario 1: user could register with only valid required data successfully
    @When("^User Enters valid \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" \"([^\"]*)\" and \"([^\"]*)\"$")
    public void User_Enters_first_last_email_password(String firstname, String lastname, String Email, String password,String confirmPassword){
        registrationPage.firstName().sendKeys(firstname);
        registrationPage.lastName().sendKeys(lastname);
        registrationPage.userEmail().sendKeys(Email);
        registrationPage.password().sendKeys(password);
        registrationPage.confirmPassword().sendKeys(confirmPassword);
    }
    @And("User clicks on register button")
    public void press_register_button()
    {
        registrationPage.clickRegister().click();
    }

    @Then("User Directed to profile page successfully")
    public void registeredSuccessfully() {
        Assert.assertTrue(registrationPage.successRegister().getText().toLowerCase().contains("continue"));
    }

    //Scenario 2: user could register with valid required and optional data successfully
    @When("User selects male gender")
        public void select_male_gender(){
          registrationPage.maleGender().click();
         }
    @And("User Enters birth of day")
        public void Day_dropdown () throws InterruptedException {
         int min = 1;
         int max = 31;
         int random_int = (int)Math.floor(Math.random()*(max - min+1)+min);
        Select select = new Select(registrationPage.dayDropdown());
        select.selectByIndex(random_int);
            Thread.sleep(2000);
     }
        @And("User Enters birth of Month")
        public void Month_dropdown() throws InterruptedException {
            int min = 1;
            int max = 12;
            int random_int = (int)Math.floor(Math.random()*(max - min+1)+min);
            Select select = new Select(registrationPage.monthDropdown());
            select.selectByIndex(random_int);
            Thread.sleep(2000);
        }
        @And("User Enters birth of year")
        public void year_dropdown() throws InterruptedException {
            int min = 1;
            int max = 120;
            int random_int = (int)Math.floor(Math.random()*(max - min+1)+min);
            Select select = new Select(registrationPage.yearDropdown());
            select.selectByIndex(random_int);
            Thread.sleep(2000);
        }


}
