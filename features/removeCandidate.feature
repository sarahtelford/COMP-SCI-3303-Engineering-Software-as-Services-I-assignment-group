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
When  : The user selects the “Remove Candidate” button
Then  : The user should be taken to the Remove Candidate List page
When  : The user selects the “Remove Candidate” button next to the Candidate “Donald Trumpet” who they want to remove 	
Then  : The user should be taken to the Remove Candidate Check page for Candidate “Donald Trumpet”
When  : The user selects the “Yes” button to confirm this is the Candidate they want to remove
Then  : The user should be taken to the Remove Candidate List page
Then  : The user should not see the Candidate “Donald Trumpet”

Scenario : Admin initially wants to Remove a Candidate from the Candidate List then decides not to
Given : The admin is on the Admin home page 
When  : The user selects the “Remove Candidate” button
Then  : The user should be taken to the Remove Candidate List page
When  : The user selects the “Remove Candidate” button next to the Candidate “Mary-Jane Dope” who they want to remove 	
Then  : The user should be taken to the Remove Candidate Check page for Candidate “Mary-Jane Dope”
When  : The user selects the “No” button to stop the removal of this Candidate
Then  : The user should be taken to the Remove Candidate List page
Then  : The user should see the Candidate "Mary-Jane Dope”

Scenario : Admin wants to Remove a Candidate from the Candidate List after selecting the wrong Candiate
Given : The admin is on the Admin home page 
When  : The user selects the “Remove Candidate” button
Then  : The user should be taken to the Remove Candidate List page
When  : The user selects the “Remove Candidate” button next to the Candidate “Tony Stark” who they want to remove 	
Then  : The user should be taken to the Remove Candidate Check page for Candidate “Tony Stark”
When  : The user selects the “No” button to stop the removal of this Candidate
Then  : The user should be taken to the Remove Candidate List page
When  : The user selects the “Remove Candidate” button next to the Candidate “Steve Rogers” who they want to remove 	
Then  : The user should be taken to the Remove Candidate Check page for Candidate “Steve Rogers”
When  : The user selects the “Yes” button to confirm this is the Candidate they want to remove
Then  : The user should be taken to the Remove Candidate List page
Then  : The user should see the Candidate “Tony Stark”
Then  : The user should not see the Candidate “Steve Rogers”
