Feature: Editing Profile 
  Scenario: Successful edit profile for not signed in user

  Given the following user exists
  When the user visits the home page
  Then the user tries to access account settings
    And the user is redirected to the signin page 
    And the user enters valid signin information
  Then the user again tries to access account settings
  And the user is on their edit page
  When the user submits valid edits to their settings
  Then they should be redirected to their updated profile page
    And they should receive a confirmation