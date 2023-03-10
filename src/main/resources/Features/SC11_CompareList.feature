@regression
  Feature: Logged user could add different products to compare list
    Background:
    # user Login
      Given user go to login page
      When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
      And user press on login button
      Then user login successfully

    Scenario: products will added to compare list when user click on add to compare list from detailed page
      When Go to Laptop page
      And user click on lenovo laptop
      And user clicks on add to compare button from detailed product page
      And Go to Laptop page
      And user click on HTC product
      And user clicks on add to compare button from detailed product page
      And  user go to compare list page
      Then products will be added to compareList