@regression
Feature: User Registration

  Scenario: user could register with only valid required data successfully
    Given User goes to Registration Page
      When User Enters valid "Ahmed" "Ayman" "ahmed.ayman000666@gmail.com" "Test123" and "Test123"
    And User clicks on register button
    Then User Directed to profile page successfully

  Scenario: user could register with valid required and optional data successfully

    Given User goes to Registration Page
    When User selects male gender
    And  User Enters valid "Ahmed" "Ayman" "ahmed.ayman7771@gmail.com" "Test123" and "Test123"
    And User Enters birth of day
    And User Enters birth of Month
    And User Enters birth of year
    And User clicks on register button
    Then User Directed to profile page successfully