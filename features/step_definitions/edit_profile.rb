Given /^the following user exists$/ do
  @user = User.create!(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user visits the home page$/ do
  visit "/"
end

And /^the user tries to access account settings$/ do
  visit edit_user_path(@user)
end

And /^the user is redirected to the signin page$/ do
  expect(page).to have_title('Sign in')
end

And /^the user enters valid signin information$/ do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^the user again tries to access account settings$/ do
  visit edit_user_path(@user)
end 

And /^the user is on their edit page$/ do
  expect(page).to have_title('Edit user')
end

When /^the user submits valid edits to their settings$/ do
  fill_in "Email",    with: "new@useremail.com"
  fill_in "Password", with: @user.password
  fill_in "Confirm Password", with: @user.password_confirmation
  click_button "Save changes"
end

Then /^they should be redirected to their updated profile page$/ do
  expect(page).to have_title(@user.name)
end

Then /^they should receive a confirmation$/ do
  expect(page).to have_selector('div.alert.alert-success')
end

