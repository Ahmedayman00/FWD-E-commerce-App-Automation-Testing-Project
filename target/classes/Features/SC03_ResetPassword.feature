@regression
Feature: user is able to reset his account password

  Scenario: user is able to reset his account password
    Given user go to login page
    And user click on Forgot password?
    When user enter his email "ahmed.ayman7771@gmail.com"
    And click on Recover button
    Then confirm that the recovery message is displayed