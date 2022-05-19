Feature: Authorised users completing a vote
  Scenario: Users wants to vote "above the line"
    Given : The users are signed in to an authorised account
    When : The user selects "above the line"
    And : The submit button is pushed
    Then : The user is redirected to the "above the line" voting page
    And : The user should see all the parties

  Scenario: Users wants to submit their votes "above the line"
    Given : The user is on the "above the line" voting page
    And : All parties are visable
    When : A the dropdown list is selected, numbers 1-12 are dispalyed
    When : Value is selected it is assigned to the associated party
    Given : All numbers are assigned to a party
    Then : The submit button is enabled

  Scenario: Users wants to vote "below the line"
    Given : The users are signed in to an authorised account
    When : The user selects "below the line"
    And : The submit button is pushed
    Then : The user is redirected to the "below the line" voting page
    And : The user should see all the candidates

  Scenario: Users wants to submit their votes "below the line"
    Given : The user is on the "below the line" voting page
    And : All candidates are visable
    When : A the dropdown list is selected, numbers 1-12 are dispalyed
    When : Value is selected it is assigned to the associated candidate
    Given : All numbers are assigned to a candidate
    Then : The submit button is enabled




