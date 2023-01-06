@regression
Feature: logged user could add products to wishlist
  Background:
    # user Login
      Given user go to login page
      When user login with "valid" "ahmed.ayman000666@gmail.com" and "Test123"
      And user press on login button
      Then user login successfully

  Scenario: products will added to wishlist when user click on add to wishlist from detailed page
     When user click on pc product
     And user clicks on add to wishlist button from detailed product page
     And  user go to wish list page
     Then pc product will added to wishlist