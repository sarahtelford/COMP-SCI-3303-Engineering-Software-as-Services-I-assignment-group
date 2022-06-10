Feature: viewing candidate information

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

  Scenario: Checking number of votes:
    Given : The admin is on the homepage
    When : The admin selects “Admin login”
    Then : The admin is on the admin homepage
    When : The admin selects the “Show” button next to a candidate
    Then : The admin is taken to the candidate show page
    And : The admin should see the candidate information

