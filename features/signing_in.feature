Feature: Signing in
  
  Scenario: Unsuccessful password signin
    Given a user visits the signin page
			And the user has an account
    When they submit invalid password signin information
    Then they should see an error message

  Scenario: Unsuccessful E-mail signin
    Given a user visits the signin page
			And the user has an account
    When they submit invalid E-mail signin information
    Then they should see an error message

  Scenario: Unsuccessful complete signin
    Given a user visits the signin page
    When they submit no signin information
    Then they should see an error message

  Scenario: Successful signin
    Given a user visits the signin page
      And the user has an account
    When the user submits valid signin information
    Then they should see their profile page
      And they should see a signout link
