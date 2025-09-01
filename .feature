Feature: User Login 
  As a registered user 
  I want to be able to login to the application
  So that I can access my account

  Background:
    Given the application is running
    And I am on the login page

  Scenario: Successful login with valid credentials
    When I enter "user@example.com" in the email field
    And I enter "validPassword123" in the password field
    And I click the login button
    Then I should be redirected to the dashboard
    And I should see a welcome message with my username

  Scenario Outline: Failed login attempts
    When I enter "<email>" in the email field
    And I enter "<password>" in the password field
    And I click the login button
    Then I should see an error message saying "<error_message>"

    Examples:
      | email            | password      | error_message                    |
      | wrong@email.com  | validPass123  | Invalid email or password       |
      |                  | validPass123  | Email field cannot be empty     |
      | user@example.com |              | Password field cannot be empty   |
      | invalid.email    | shortpass     | Please enter a valid email      |


    Scenario: LEA
    When I enter "user@example.com" in the email field
    And I enter "validPassword123" in the password field
    And I click the login button
    Then I should be redirected to the dashboard
    And I should see a welcome message with my username

