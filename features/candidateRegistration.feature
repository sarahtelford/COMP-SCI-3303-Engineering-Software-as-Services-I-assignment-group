Feature: New candidate registering
  In order to register to be a candidate a user Should be able to enter their details

  Background: Candidates in my database

    Given the following Candidates exist:
      | name           |  party                      | birthday |
      | John Adam      |  Liberal Party of Australia | 8/08/2008|
      | Susie Smith    |  Australian Labor Party     | 8/08/2008|
      | Xavier Barns   |  Australian Greens          | 8/08/2008|
      | Paul Rudd      |  Animals Justice Party      | 8/08/2008|
      | Tony Stark     |  Australian National Party  | 8/08/2008|
      | Steve Rogers   |  One Nation                 | 8/08/2008|
      | Donald Trumpet |  Family First               | 8/08/2008|
      | Happy Harold   |  Australian Greens          | 8/08/2008|
      | Mary-Jane Dope |  Legalise Cannabis Party    | 8/08/2008|
      | Che Downs      |  Liberal Party of Australia | 8/08/2008|
      | Agatha Brown   |  Animals Justice Party      | 8/08/2008|
      | Logan Paul     |  One Nation                 | 8/08/2008|

  Scenario: Registering a new candidate
    Given : I am on the home page
    When : I click on New Candidate I enter details for a candidate
    Then : I should see the new candidate on the homepage

  Scenario: User wants to register a new candidate, but candidate has already been registered
    Given : I am on the home page
    When : I click on New Candidate I enter details for an already existing candidate
    Then : The user should be redirected to the admin page
    And : I should be informed that "Candidate already exists"

  Scenario: User wants to register a new candidate, but enters invalid details
    Given : I am on the home page
    When : I click on New Candidate I enter invalid details for a candidate
    Then : The user should observe "Please fill in all fields"