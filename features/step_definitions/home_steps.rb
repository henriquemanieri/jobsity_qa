
Given(/^I'm on home page$/) do
    @home = HomePage.new
    @home.load
    @home.home_page_confirmation
end

When(/^I access contact us feature$/) do
    @home.access_contact_page
end

When(/^click on the sign in link$/) do
    @home.access_login_page
end