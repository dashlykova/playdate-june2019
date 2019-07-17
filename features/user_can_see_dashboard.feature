Feature: User can see dashboard
As a User
In order to see the app feed
I would like to have a Dashboard that displays playdates

    Background:
        Given I visit the dashboard

    Scenario:
        Then I should see "Open Playdates"
        And I should see "More information"
