Feature: Delete a user


Scenario: An admin can delete a user from the user list
	Given the following admin user exists
	Given they are an admin
	Given the following non-admin user exists
		And they are not an admin
	Given an admin visits the users page
	Then the should see a delete button next to the user
	When the admin clicks the delete button
	Then user should be deleted

