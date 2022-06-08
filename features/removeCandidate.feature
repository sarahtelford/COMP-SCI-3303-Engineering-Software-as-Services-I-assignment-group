Feature: admin removing candidate

  Background: Candidates in my database

    Given the following Candidates exist:
      | name           |  party                      | birthday | votes |
      | John Adam      |  Liberal Party of Australia | 8/08/2008||
      | Susie Smith    |  Australian Labor Party     | 8/08/2008||
      | Xavier Barns   |  Australian Greens          | 8/08/2008||
      | Paul Rudd      |  Animals Justice Party      | 8/08/2008||
      | Tony Stark     |  Australian National Party  | 8/08/2008||
      | Steve Rogers   |  One Nation                 | 8/08/2008||
      | Donald Trumpet |  Family First               | 8/08/2008||
      | Happy Harold   |  Australian Greens          | 8/08/2008||
      | Mary-Jane Dope |  Legalise Cannabis Party    | 8/08/2008||
      | Che Downs      |  Liberal Party of Australia | 8/08/2008||
      | Agatha Brown   |  Animals Justice Party      | 8/08/2008||
      | Logan Paul     |  One Nation                 | 8/08/2008||

  Scenario: Admin Removing Candidate
    Given : The admin is on the Admin home page
    When : The admin selects the “Remove Candidate” button next to a candidate
    When : The admin selects the “Yes” button to confirm this is the candidate they want to remove
    Then : The admin is taken to Admin home page
    And : should not see the removed candidate

  Scenario: Admin initially wants to Remove a Candidate from the Candidate List then decides not to
    Given : The admin is on the Admin home page
    When  : The admin selects the “Remove Candidate” button next to a candidate
    When  : The admin selects the “No” button to cancel removal of a candidate
    Then  : The admin is taken to Admin home page
    And   : should see the candidate

  Scenario: Admin wants to Remove a Candidate from the Candidate List after selecting the wrong Candiate
    Given : The admin is on the Admin home page
    When  : The admin selects the “Remove Candidate” button next to a candidate
    When  : The admin selects the “No” button to cancel removal of a candidate
    Then  : The admin is taken to Admin home page
    And   : should see the candidate
    When  : The admin selects the “Remove Candidate” button next to a candidate
    When  : The admin selects the “Yes” button to confirm this is the candidate they want to remove
    Then  : The admin is taken to Admin home page
    And   : should not see the removed candidate