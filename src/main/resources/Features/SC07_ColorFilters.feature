@regression
Feature: Logged user could filter with color
  Background:
    # user Login
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully

  Scenario: logged user could hover on Apparel option and select clothes category

    Given user hover on Apparel option and select shoes category
    And user move successfully to the shoes page
    When Selecting "red" color option
    Then Filter is applied