Feature: User can view the list of kindergartens and link them to the account
  "As a User,
  In order to be able link kindergartens to my account,
  I would like to see a list of kindergartens and be able to add the ones I am interested in."

  Background:
    Given the following kindergartens exist
      | name                      | kommun    | address              |
      | Skogsängsgårdens Förskola | Salem     | Säbytorgsvägen 3     |
      | Flower Power Förskola     | Stockholm | Ture Nermans Gränd 6 |
    And I am logged in as "user@email.com"
    And I visit the dashboard

  Scenario: User can view the list of kindergartens on the dashboards
    Then I should see "Account Information"
    And I should see "Kindergartens"
    And I should see "name"
    And I should see "kommun"
    And I should see "address"
    And I should see "Skogsängsgårdens Förskola"
    And I should see "Salem"
    And I should see "Säbytorgsvägen 3"


  Scenario: User can link a kindergarten to his/hers profile
    Given I click "Add kindergarten to profile" for "Skogsängsgårdens Förskola"
    Then I should see "You are linked with the Kindergarten now"
    And "Skogsängsgårdens Förskola" should be associated with "user@email.com"


