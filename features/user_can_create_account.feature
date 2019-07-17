Feature: User can create account (sign up)
    As a User,
    In order to have a Playdate user profile,
    I would like to be able to create an account.

    Background:
        Given I visit the dashboard

    Scenario: User can sign up
        When I click "Sign Up"
        And I fill "Email" with "user@email.com"
        And I fill "Password" with "PassWord"
        And I fill "Password confirmation" with "PassWord"
        And I click "Sign up"
        Then I should see "Welcome! You have signed up successfully."