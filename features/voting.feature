Feature: Authorised users completing a vote

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

    Given the following parties exist:
      | name                        |
      | Liberal Party of Australia  |
      | Australian Labor Party      |
      | Australian Greens           |
      | Animals Justice Party       |
      | Australian National Party   |
      | One Nation                  |
      | Family First                |
      | Legalise Cannabis Party     |

  Scenario: Users wants to vote "above the line"
    Given : The users are signed in to an authorised account
    When : The user selects "Above Line"
    Then : The user is redirected to the associated voting page
    And : The user should see the table of data

  Scenario: Users wants to submit their votes "above the line"
    Given : The user is on the "Above Line" voting page
    And : The user should see the table of data
    When : The dropdown list is selected, numbers 1-6 are displayed
    When : Value is selected it is assigned to the associated party
    Given : All numbers are assigned to a party
    Then : The submit button is enabled

  Scenario: Users wants to vote "below the line"
    Given : The users are signed in to an authorised account
    When : The user selects "Below Line"
    Then : The user is redirected to the associated Below Line voting page
    And : The user should see the candidate table of data

  Scenario: Users wants to submit their votes "below the line"
    Given : The user is on the "Below Line" voting page
    And : The user should see the candidate table of data
    When : The dropdown list is selected, numbers 1-12 are displayed
    When : Value is selected it is assigned to the associated candidate
    Given : All numbers are assigned to a candidate
    Then : The submit button is enabled




