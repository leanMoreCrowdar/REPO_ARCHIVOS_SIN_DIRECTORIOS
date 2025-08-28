Scenario: Failed login attempts
Given the application is running

And I am on the login page

When I enter "wrong@email.com" in the email field

And I enter "validPass123" in the password field

And I click the login button

Then I should see an error message saying "Invalid email or password"
