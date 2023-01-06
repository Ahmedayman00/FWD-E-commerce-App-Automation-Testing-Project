@regression
Feature: user could hover on any option and select different categories
  Background:
    # user Login
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully

  Scenario: logged user could hover on Apparel option and select clothes category

    # Hovering
    When user hover on Apparel option and select clothes category
    Then user move successfully to the clothes page