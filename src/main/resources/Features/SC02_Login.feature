@regression
Feature: user could use login functionality to open his account

  Scenario: user could login with valid email and password
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully