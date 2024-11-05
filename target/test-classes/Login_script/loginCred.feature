Feature: user login

Scenario: login with valid credentials

Given user opens the testUrl
When user enters valid email address "naveensh732@gmail.com"
And user enters valid password "Shivakrupa"
And user clicks on login button
Then user should login successfully

Scenario: login with invalid credentials

Given user opens the testUrl
When user enters invalid email address "ramesh732@gmail.com"
And user enters invalid password "Shivashakthi"
And user clicks on login button
Then user should get warning message

Scenario: login with valid email and invalid password

Given user opens the testUrl
When user enters valid email address "naveensh732@gmail.com"
And user enters invalid password "Shivashakthi"
And user clicks on login button
Then user should get warning message

Scenario: login with invalid email and valid password

Given user opens the testUrl
When user enters invalid email address "ramesh732@gmail.com"
And user enters valid password "Shivakrupa"
And user clicks on login button
Then user should get warning message

Scenario: login with no credentials

Given user opens the testUrl
When user enters no credentials
And user clicks on login button
Then user should get warning message
