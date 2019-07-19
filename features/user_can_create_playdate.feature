Feature: User can create playdate
  "As a User,
  In order to make a playdate for my children to be joined by children from other schools,
  I want to be able to create a playdate linked to the kindergartens linked to my account."

  Background: User logs in and visits the dashboard
    Given the following kindergartens exist
      | name                      | kommun    | address              |
      | Skogsängsgårdens Förskola | Salem     | Säbytorgsvägen 3     |
      | Flower Power Förskola     | Stockholm | Ture Nermans Gränd 6 |
    And I am logged in as "user@email.com"
    And I visit the dashboard

  Scenario: User creates a playdate
    When I click "Create Playdate"
    And I fill "Full Name" with "first_name last_name"
    And I fill "Playdate Date" with "July 1, 2019"
    And I click "Submit"
    Then I should see "Your Playdate has been created."
    And I should see "Open Playdates"