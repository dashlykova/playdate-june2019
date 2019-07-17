Feature: User can view the list of kindergartens and link them to the account
  As a User,
  In order to be able link kindergartens to my account,
  I would like to see a list of kindergartens and be able to add the ones I am interested in.

  Background:
    Given the following kindergartens exist
      | name                      | comune    | address              |
      | Skogsängsgårdens Förskola | Salem     | Säbytorgsvägen 3     |
      | Flower Power Förskola     | Stockholm | Ture Nermans Gränd 6 |
    And I visit the dashboard
    And I click "Sign Up"
    And I fill "Email" with "user@email.com"
    And I fill "Password" with "PassWord"
    And I fill "Password confirmation" with "PassWord"
    And I click "Sign up"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: User can view the list of kindergartens
    When I visit the dashboard
    Then I should see "Account Information" 
    And I should see "Kindergartens"
    And I should see "name"
    And I should see "Skogsängsgårdens Förskola" 
    And I should see "comune"
    And I should see "Salem"
    And I should see "address"
    And I should see "Säbytorgsvägen 3"
    And I click "Add"
    And I should see "You are linked with the Kindergarten now"

     