Feature: New candidate registering
  In order to register to be a candidate
  A user Should be able to enter their details

  Scenario: Registering a new candidate
    Given I am on the home page
    When I click on "Register as candidate" and enter details
    Then I should see "You have successfully registered as a candidate in the election! Good luck!"