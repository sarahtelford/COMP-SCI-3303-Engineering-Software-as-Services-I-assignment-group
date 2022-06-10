Feature: checking the votes count

  Background: Candidates in my database

    Given the following Candidates exist:
      | name           |  party                      | birthday | votes |
      | John Adam      |  Liberal Party of Australia | 8/08/2008|       |
      | Susie Smith    |  Australian Labor Party     | 8/08/2008|       |
      | Xavier Barns   |  Australian Greens          | 8/08/2008|       |
      | Paul Rudd      |  Animals Justice Party      | 8/08/2008|       |
      | Tony Stark     |  Australian National Party  | 8/08/2008|       |
      | Steve Rogers   |  One Nation                 | 8/08/2008|       |
      | Donald Trumpet |  Family First               | 8/08/2008|       |
      | Happy Harold   |  Australian Greens          | 8/08/2008|       |
      | Mary-Jane Dope |  Legalise Cannabis Party    | 8/08/2008|       |
      | Che Downs      |  Liberal Party of Australia | 8/08/2008|       |
      | Agatha Brown   |  Animals Justice Party      | 8/08/2008|       |
      | Logan Paul     |  One Nation                 | 8/08/2008|       |

    Given the following parties exist:
      | name                        | votes |
      | Liberal Party of Australia  |       |
      | Australian Labor Party      |       |
      | Australian Greens           |       |
      | Animals Justice Party       |       |
      | Australian National Party   |       |
      | One Nation                  |       |
      | Family First                |       |
      | Legalise Cannabis Party     |       |

  Scenario: Checking number of votes:
    Given : The admin is on the homepage
    When : The admin selects “Admin login”
    Then : The admin is on the admin homepage
    And : The admin should see votes for each candidate and party

  Scenario: Checking votes after a public user votes above the line for Australian Greens party
    Given : The public user is on the home page
    When : The public user selects the “Public login” button
    When : the public user selects “Above Line”
    And : The public user should see the table of party data
    When : the public user selects “1” for Australian Greens party
    Then : The submit button is pressed

    Given : The admin is on the homepage
    Then : The admin selects “Admin login”
    Then : The admin is on the admin homepage
    And : The admin should see votes for Australian Greens to be “6”

  Scenario: Checking votes after a public user votes below the line for Mary-Jane Dope
    Given : The public user is on the home page
    When : The public user selects the “Public login” button
    When : the public user selects “Below Line”
    And : The public user should see the table of candidate data
    When : the public user selects “1” for Mary-Jane Dope
    Then : The submit button is pressed

    Given : The admin is on the homepage
    Then : The admin selects “Admin login”
    Then : The admin is on the admin homepage
    And : The admin should see votes for Mary-Jane Dope to be “12”

