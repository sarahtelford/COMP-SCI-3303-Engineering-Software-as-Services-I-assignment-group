Feature: New candidate registering
  In order to register to be a candidate
  A user Should be able to enter their details

  Background: Candidates in my database

    Given the following Candidates exist:
      | Name           |  Party                      | Birthday |
      | John Adam      |  Liberal Party of Australia |          |
      | Susie Smith    |  Australian Labor Party     |          |
      | Xavier Barns   |  Australian Greens          |          |
      | Paul Rudd      |  Animals Justice Party      |          |
      | Tony Stark     |  Australian National Party  |          |
      | Steve Rogers   |  One Nation                 |          |
      | Donald Trumpet |  Family First               |          |
      | Happy Harold   |  Australian Greens          |          |
      | Mary-Jane Dope |  Legalise Cannabis Party    |          |
      | Che Downs      |  Liberal Party of Australia |          |
      | Agatha Brown   |  Animals Justice Party      |          |
      | Logan Paul     |  One Nation                 |          |

  Scenario: Registering a new candidate
    Given I am on the home page
    When I click on "Register as candidate" and enter details
    Then I should see "You have successfully registered as a candidate in the election! Good luck!"

  Scenario: User wants to register, but has already registered
    Given : I am on the home page
    When : The user selects "Register as candidate" and enter duplicate details
    Then : The user should see "you have already registered as a candidate!"

  Scenario: User wants to register, but enters invalid details
    Given : I am on the home page
    When : The user selects "Register as candidate" and enter invalid details
    Then : The user should observe "You need to enter your name"