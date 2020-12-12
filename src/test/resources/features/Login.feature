
Feature:
  As a user I want to be able to login to the CRM24 portal
  User is able to login only with valid credentials
  User is not able to login with invalid credentials


  Background: setup
    Given HR person is on the login page


    Scenario: Login as an hr person
      When HR person logs in
      Then HR person should see portal

#
#   Scenario Outline: Parametrized login as a <role>
#    When user logs in as" "<role>"
 #   Then user should see "<page_title>" page

 #   Examples:
 #     | role    | page_title |
 #     |help desk|Portal      |
 #     |marketing|Portal      |
 #     |HR       |Portal      |



  @negative @negative_s1
  Scenario: As an HR person I should not be able to login with valid username and invalid password
    When HR person logs in with valid username and invalid password
    Then HR person should see error message

  @negative @negative_s2
  Scenario: As a HR person I should not be able to login with invalid username and valid password
    When HR person logs in with valid username and invalid password
    Then HR person should see error message


  @negative @negative_s2
  Scenario: As a HR person I should not be able to login with valid username and invalid password
    When HR person logs in with invalid username and valid password
    Then HR person should see error message




