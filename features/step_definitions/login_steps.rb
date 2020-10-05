
When(/^fill with the "([^"]*)"$/) do |user|
  @login = LoginPage.new
  @login.email_fill($default_data['client_name'][user])
  @login.password_fill($default_data['password'][user])
  @login.login_enter
end

Then(/^I access my account page$/) do
  @login.my_account_confirmation
end
