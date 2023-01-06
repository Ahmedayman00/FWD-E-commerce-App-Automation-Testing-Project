@regression
Feature: user will be able to search for products
  Background:
    # user Login
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully

  Scenario: user could search for any product
    When user clicks on search field
    And user search with name of product
    Then user could find relative results

  Scenario: user could search for Tshirt product
    When user clicks on search field
    And user search with Tshirt of product
    Then user could find the desired product