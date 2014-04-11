

Given(/^the following admin user exists$/) do
  @user1 = User.create(name: "Example User1",
                         email: "example1@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: true)
end

Given(/^they are an admin$/) do
  @user1.admin? == true
end

Given(/^the following non\-admin user exists$/) do
	@user2 = User.create(name: "Example User2",
                         email: "example2@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar",
                         admin: false)
end

And(/^they are not an admin$/) do
  @user2.admin? == false
end

Given (/^an admin visits the users page$/) do
 visit signin_path
 fill_in "Email",    with: @user1.email
 fill_in "Password", with: @user1.password
 click_button "Sign in"
 visit users_path
end


Then(/^the should see a delete button next to the user$/) do
	page.should have_link('delete')
end

When(/^the admin clicks the delete button$/) do
  click_link('delete', match: :first)
end

Then(/^user should be deleted$/) do
  @user2.destroy
end
