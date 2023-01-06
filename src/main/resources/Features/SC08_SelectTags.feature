@regression
Feature:Logged user could select different tags
  Background:
    # user Login
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully

  Scenario: Logged user could filter the content with different tags

    Given user clicks on search field
    And user search with name of product
    When user click on "awesome" Tag
    Then user redirected to correct page