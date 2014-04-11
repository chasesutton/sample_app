Feature: Signing out

	Scenario: Successful signout from profile page
		Given the user is signed in
			And they should see their profile page
			And they should see a signout link
		When the user clicks the signout link
		Then they should see the home page
			And they should see the signin link

	Scenario: Successful signout from home page
		Given the user is signed in
			And they are on the home page
			And they should see a signout link
		When the user clicks the signout link
		Then they should see the home page
			And they should see the signin link

	Scenario: Successful signout from users page
		Given the user is signed in
			And they are on the users page
			And they should see a signout link
		When the user clicks the signout link
		Then they should see the home page
			And they should see the signin link

	Scenario: Successful signout from settings page
		Given the user is signed in
			And they are on the settings page
			And they should see a signout link
		When the user clicks the signout link
		Then they should see the home page
			And they should see the signin link
