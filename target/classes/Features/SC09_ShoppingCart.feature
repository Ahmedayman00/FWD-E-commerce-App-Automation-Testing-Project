@regression
Feature: Logged user could add different products to Shopping cart
  Background:
    # user Login
    Given user go to login page
    When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
    And user press on login button
    Then user login successfully

  Scenario: products will added to shopping cart when user click on add to shopping cart from home page
    When user click on add to cart button
    And Go to shopping cart page
    Then phone product will added to shopping cart

  Scenario: products will added to shopping cart when user click on add to shopping cart from detailed page
    When user clicks on add to cart button from HOME page
    And  user go to product detailed page
    And  clicks on add to cart button from detailed page
    Then Apple product will added to shopping cart