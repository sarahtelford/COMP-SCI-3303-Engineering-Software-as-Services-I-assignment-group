Feature: Authorised admin removing a candidate

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

  Scenario : Admin wants to Remove a Candidate from the Candidate List
    Given : The admin is on the Admin home page
    When  : The admin selects the “Remove candidate” button next to a candidate
    And   : The admin selects the “Yes” button to confirm this is the candidate they want to remove
    Then  : The admin should be taken to Admin home page
    And   : The admin should not see the candidate

  Scenario : Admin initially wants to Remove a Candidate from the Candidate List then decides not to
    Given : The admin is on the Admin home page
    When  : The admin selects the “Remove candidate” button
    And   : The admin selects the “No” button to cancel the removal of this candidate
    Then  : The admin should be taken to Admin home page
    And   : The admin should see the candidate

  Scenario : Admin wants to Remove a Candidate from the Candidate List after selecting the wrong candidate
    Given : The admin is on the Admin home page
    When  : The admin selects the “Remove candidate” button for the wrong candidate
    And   : The admin selects the “No” button to cancel the removal of this candidate
    When  : The admin selects the “Remove candidate” button for the correct candidate
    And   : The admin selects the “Yes” button to remove this candidate
    Then  : The user should be taken to the Remove Candidate List page
    Then  : The admin should be taken to Admin home page
    And   : The admin should see the first candidate
    But   : not the second candidate
