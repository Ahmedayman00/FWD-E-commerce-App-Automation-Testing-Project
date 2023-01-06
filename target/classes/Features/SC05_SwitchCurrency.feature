@regression
Feature: user could switch between the available currencies
  Background:
    # user Login
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully

Scenario: user make sure about the default currency
  Given  user will make sure that default currency is US_dollar

Scenario: user could select any option from currency dropdown
  Given user go to dropdown currency
  When  user select any option from dropdown
  Then  user will see option sign in all products and it is switched successfully